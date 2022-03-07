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
    getAgencyByQuery,
}= require('../../repository/agency.repository');
const {
    getUserByQuery,
}= require('../../repository/user.repository');
const {
    hashPassword,
    comparePassword,
}= require('../../utils/bcrypt');

const signin= async (req, res)=> {
    try {
        var {username, password}= req.body;
        var [user, err]= await getUserByQuery({username});
        if (err) {
            return notFoundErrorResponse(res, 'Agency not found');
        }
        var isValid= await comparePassword(password, user.password);
        if (!isValid) {
            return unauthorizedErrorResponse(res, 'Invalid password');
        }
        var token= signToken(user.tokenPayload);
        return successResponse(res, 'Signed in successfully', {accessToken: token});
    } catch (error) {
        return serverErrorResponse(res, error.message);
    }
}

module.exports= {
    signin,
}