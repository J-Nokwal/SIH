const {
    signToken
}= require('../../utils/jwt');
const {
    updateUser,
}= require('../../repository/user.repository');
const {
    getStudentByQuery,
    createStudent,
    updateStudent,
    getStudentByQueryPopulate,
    addEnrolledOpportunity
}= require('../../repository/student.repository');
const {
    updateOpportunity,
}= require('../../repository/opportunity.repository')
const {
    successResponse,
    serverErrorResponse
}= require('../../utils/response')

const updateUserInfo= async (req, res) => {
    try {
        var [updated, err]= await updateUser(req.body, {_id: req.user.id});
        if (err) {
            return serverErrorResponse(res, err.message);
        }
        return successResponse(res, 'User info updated successfully', updated);
    } catch (error) {
        console.log(`Error : ${error.message}`);
        return serverErrorResponse(res, error.message);
    }
}

const getInfo= async (req, res) => {
    try {
        var id= req.user.studentId;
        console.log('Req user', req.user)
        var [user, err]= await getStudentByQuery({ _id: id });
        user= {...user, personalEmail: req.user.username};
        console.log(user);
        return successResponse(res, 'User info listed successfully', user);
    } catch (error) {
        console.log(`Error : ${error.message}`);
        return serverErrorResponse(res, error.message);
    }
}

const setUniverisity= async (req, res) => {
    try {
        // verify with university
        // update student : university, roll number
        var [updated, err]= await updateStudent({
            universityRef: req.body.universityId, 
            rollNumber: req.body.rollNumber
        }, {
            _id: req.user.studentId
        });
        if (err) {
            return serverErrorResponse(res, err.message);
        }
        // update user tokenPayload: add instituteRef, rollNumber, studentId and issue new token
        var [updatedUser, err2]= await updateUser({
            tokenPayload: {
                instituteRef: req.body.universityId, 
                rollNumber: req.body.rollNumber, 
                studentId: updated._id,
                userId: req.user.userId
            }
        }, {_id: req.user.userId});
        if (err2) {
            return serverErrorResponse(res, err2.message);
        }
        var token= signToken(updatedUser.tokenPayload);
        return successResponse(res, 'University set successfully', {access_token: token});
    } catch (error) {
        console.log(`Error : ${error.message}`);
        return serverErrorResponse(res, error.message);
    }
}

const myOpportunities= async (req, res) => {
    try {
        var stu= await getStudentByQueryPopulate({ _id: req.user.id });
        return successResponse(res, 'Opportunities listed successfully', {enrolled: stu.enrolledOpportunities, starred: stu.starredOpportunities});
    } catch (error) {
        console.log(`Error : ${error.message}`);
        return serverErrorResponse(res, error.message);
    }
}
const applyForOpportunity= async (req, res) => {
    try {
        var oppId= req.params.id;

        // update in student collection: push to enrolledOpportunities array
        var [updatedStudent, err]= await addEnrolledOpportunity(req.user.studentId, oppId);
        if (err) {
            return serverErrorResponse(res, err.message);
        }
        // update in opportunity collection
        var [updatedOpp, err2]= await updateOpportunity({$push: {applicants: req.user.studentId}}, {_id: oppId});
        if (err2) {
            return serverErrorResponse(res, err2.message);
        }
        return successResponse(res, 'Opportunity applied successfully', {});
    } catch (error) {
        console.log(`Error : ${error.message}`);
        return serverErrorResponse(res, error.message);
    }
}

// QR
const thirdPartyIdentity= async (req, res) => {
    try {
        
    } catch (error) {
        
    }
}

module.exports= {
    updateUserInfo,
    getInfo,
    setUniverisity,
    myOpportunities,
    applyForOpportunity,
    thirdPartyIdentity
}