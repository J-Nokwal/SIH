const {
    signToken,
}= require('../../utils/jwt');
const {
    serverErrorResponse,
    successResponse,
    badRequestErrorResponse,
    notFoundErrorResponse,
    unauthorizedErrorResponse,
}= require('../../utils/response');
const {
    getUserByQuery,
    createUser,
    updateUser
}= require('../../repository/user.repository');
const {
    createStudent,
}= require('../../repository/student.repository')
const {
    hashPassword,
    comparePassword,
}= require('../../utils/bcrypt');

const DECENTRO_URL= "https://in.staging.decentro.tech";
const decentroClientId="fint_staging"
const decentroClientSecret="Ub91luHBFZoyAL6RcTN0w2CJVJDWD6sv"
const decentroModuleSecret="BlKaiWpu852nSCjhMTXTevkUKwIjNSjA"
const decentroTriesCount= 2

const onboardingURL = `${DECENTRO_URL}/v2/kyc/aadhaar_connect`;

const signin= async (req, res)=> {
    try {
        var {username, password}= req.body;
        var [user, err]= await getUserByQuery({username});
        if (err || !user) {
            return notFoundErrorResponse(res, 'Student not found');
        }
        console.log('**** User was found ****');
        // var isValid= await comparePassword(password, user.password);
        // if (!isValid) {
        //     return unauthorizedErrorResponse(res, 'Invalid password');
        // }
        if (password != user.password) {
            return unauthorizedErrorResponse(res, 'Invalid password');
        }
        var token= signToken(user.tokenPayload);
        return successResponse(res, 'Signed in successfully', {accessToken: token});
    } catch (error) {
        return serverErrorResponse(res, error.message);
    }
}

const initiateAadhaarSession= async (req, res)=> {
    try {
        var url = `${onboardingURL}`;
        var reqBody = {
            consent: true,
            purpose: "Aadhaar Verification"
        }
        // generate a random hexadecimal string
        var status = "FAILURE";
        var count = 0;
        var decentroResponse;
        while (status != "SUCCESS" && count < decentroTriesCount) {
            var referenceId = "FI-AD-IN-" + Math.floor(Math.random() * 10000000000000000).toString(16);
            reqBody.reference_id = referenceId;
            decentroResponse = await axios.post(url, reqBody, {
                headers: requestHeaders
            });
            status = decentroResponse.data.status;
            count += 1
        }
        if (status != "SUCCESS") {
            console.log("ERROR: ", "Failed to generate session");
            return serverErrorResponse(res, "Max retries exceeded");
        }
        return successResponse(res, decentroResponse.data, "Session generated successfully");

    } catch (error) {
        console.log("ERROR: ", error.response.data);
        return serverErrorResponse(res, error.response.data)
    }
}

const reloadAadhaarCaptcha= async (req, res)=> {
    try {
        var url = `${onboardingURL}/captcha/reload`;
        var reqBody = {
            initiation_transaction_id: req.query.initiation_transaction_id,
            consent: true,
            purpose: "Aadhaar Verification",
        }
        var status = "FAILURE";
        var count = 0;
        var decentroResponse;
        while (status != "SUCCESS" && count < decentroTriesCount) {
            var referenceId = "FI-AD-RC-" + Math.floor(Math.random() * 10000000000000000).toString(16);
            reqBody.reference_id = referenceId;
            decentroResponse = await axios.post(url, reqBody, {
                headers: requestHeaders,
                ...req.headers
            });
            status = decentroResponse.data.status;
            count += 1
        }
        if (status != "SUCCESS") {
            console.log("ERROR: ", "Failed to reload captcha");
            return serverErrorResponse(res, "Max retries exceeded");
        }
        return successResponse(res, decentroResponse.data, "Captcha reloaded successfully");
    } catch (error) {
        console.log("ERROR: ", error.response.data);
        return serverErrorResponse(res, error.response.data)
    }
}

const fillAadhaar= async (req, res)=> {
    /*
    try {
        var url = `${onboardingURL}/otp`;
        var {
            aadhaar_number,
            initiation_transaction_id,
            captcha
        } = req.body;
                
        var reqBody = {
            initiation_transaction_id: initiation_transaction_id,
            consent: true,
            purpose: "Aadhaar Verification",
            aadhaar_number: aadhaar_number,
            captcha: captcha,
        }
       
        var status = "FAILURE";
        var count = 0;
        var decentroResponse;
        while (status != "SUCCESS" && count < decentroTriesCount) {
            var referenceId = "FI-AD-GO-" + Math.floor(Math.random() * 10000000000000000).toString(16);
            reqBody.reference_id = referenceId;
            decentroResponse = await axios.post(url, reqBody, {
                headers: requestHeaders
            });
            status = decentroResponse.data.status;
            count += 1
        }
        if (status != "SUCCESS") {
            console.log("ERROR: ", "Failed to generate OTP");
            return serverErrorResponse(res, "Max retries exceeded");
        }
        return successResponse(res, decentroResponse.data, "OTP generated successfully");
    } catch (error) {
        console.log("ERROR: ", error.response.data);
        return serverErrorResponse(res, error.response.data)
    }
    */
   try {
       return successResponse(res, "OTP generated successfully", {});
   } catch (error) {
        console.log("ERROR: ", error.response.data);
        return serverErrorResponse(res, error.response.data)
   }
}

const verifyAadhaar= async (req, res)=> {
    /*
    try {
        var url = `${onboardingURL}/otp/validate`;
        var {
            otp,
            initiation_transaction_id
        } = req.body;
        var reqBody = {
            initiation_transaction_id: initiation_transaction_id,
            consent: true,
            purpose: "Aadhaar Verification",
            otp: otp,
        }
        var referenceId = "FI-AD-VO-" + Math.floor(Math.random() * 10000000000000000).toString(16);
        reqBody.reference_id = referenceId;
        var decentroResponse = await axios.post(url, reqBody, {
            headers: requestHeaders
        });
        var status = decentroResponse.data.status;
        if (status != "SUCCESS") {
            console.log("ERROR: ", "Failed to validate OTP");
            return unauthorizedResponse(res, "Invalid OTP");
        }
        // difference bw descentroResponse.data.data.proofOfIdentity.dob () and current date should be less than 18 years
        var dobString = decentroResponse.data.data.proofOfIdentity.dob;
        var dobArray = dobString.split("-");
        dobString = dobArray[2] + "-" + dobArray[1] + "-" + dobArray[0];
        var dob = new Date(dobString);
        var currentDate = new Date();
        var age = Math.floor((currentDate - dob) / (1000 * 60 * 60 * 24 * 365));
        
        // store decentroResponse.data.data in database
        var [err0, _0] = await updateKycDetailsRepo(req.body.uid, decentroResponse.data);
        if (err0) {
            console.log("ERROR: ", err0.message);
            return serverErrorResponse(res, err0.message);
        }
        var fullName = decentroResponse.data.data.proofOfIdentity.name.split(' ');
        var genderMap = {
            M: "MALE",
            F: "FEMALE"
        }
        // create user with the role student
        // ----------------------------------------------
        var [err1, _1] = await updateUserRepo(req.body.uid, {
            onboardingStatus: "kyc",
            dob: decentroResponse.data.data.proofOfIdentity.dob,
            gender: genderMap[decentroResponse.data.data.proofOfIdentity.gender] || "preferNotToSay",
            firstName: fullName[0],
            lastName: fullName.length == 1 ? "" : fullName[fullName.length - 1],
            address: decentroResponse.data.data.proofOfAddress,
        })
        if (err1) {
            console.log("ERROR: ", err1.message);
            return serverErrorResponse(res, err1.message);
        }
        // ------------------------------------------
        var pass= await hashPassword(req.body.password);
        var obj= _generateUserObject(req.body.username, pass);
        var [newUser, err1]= await createUserRepo(obj);
        if (err1) {
            console.log("ERROR: ", err1.message);
            return serverErrorResponse(res, err1.message);
        }
        var name= {
            first: fullName[0],
            middle: "",
            last: fullName.length == 1 ? "" : fullName[fullName.length - 1],
        }
        var address= decentroResponse.data.data.proofOfAddress;
        var state= address.state;
        var gender= genderMap[decentroResponse.data.data.proofOfIdentity.gender]
        // create student
        obj= _generateStudentObject(name, address, state, newUser._id, gender)
        var [newStudent, err2]= await createStudent(obj);
        if (err2) {
            console.log("ERROR: ", err2.message);
            return serverErrorResponse(res, err2.message);
        }
        var accessToken= signToken(newUser.tokenPayload);
        console.log("User created Successfully: ", newUser);

        return successResponse(res, 'User created successfully ', {
            accessToken
        });
    } catch (error) {
        console.log("ERROR: ", error.response.data);
        serverErrorResponse(res, error.response.data)
    }
    */
    try {
        // create user with the role student
        var obj= _generateUserObject(req.body.username, req.body.password);
        var [newUser, err1]= await createUser(obj);
        if (err1) {
            console.log("ERROR: ", err1.message);
            return serverErrorResponse(res, err1.message);
        }
        // create student object
        var name= {
            first: "Pranav",
            middle: "",
            last: "Vohra"
        }
        var address= {
            addressLine1: "",
            city: "Patiala",
            state: "Punjab",
        }
        obj= _generateStudentObject(name, address, "Punjab", newUser._id, "MALE")
        var [newStudent, err2]= await createStudent(obj);
        if (err2) {
            console.log("ERROR: ", err2.message);
            return serverErrorResponse(res, err2.message);
        }
        // update user tokenPayload
        var [updatedUser, err3]= await updateUser({
            tokenPayload: {
                username: req.body.username,
                role: "student",
                studentId: newStudent._id,
                userId: newUser._id
            }
        })
        if (err3) {
            console.log("ERROR: ", err3.message);
            return serverErrorResponse(res, err3.message);
        }
        var accessToken= signToken(updatedUser.tokenPayload)
        return successResponse(res, 'User created successfully ', {
            accessToken: accessToken
        });
    } catch (error) {
        console.log("ERROR: ", error.message);
        serverErrorResponse(res, error.message)
    }
}

const _generateUserObject= (username, password)=> {
    return {
        username: username,
        password: password,
        role: "student",
        isVerified: true,
        tokenPayload: {
            username,
            role: "student"
        }
    }
}

// name object, address object, state, user_id
const _generateStudentObject= (name, address, state, userId, gender)=> {
    return {
        name,
        gender,
        address,
        domicileState: state, 
        userRef: userId,
        courseStatus: "ongoing",
    }
}

module.exports= {
    signin,
    initiateAadhaarSession,
    reloadAadhaarCaptcha,
    fillAadhaar,
    verifyAadhaar,
}