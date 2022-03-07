const {
    verifyToken,
}= require('../utils/jwt');

const {
    unauthorizedErrorResponse,
    forbiddenErrorResponse,
    serverErrorResponse,
}= require('../utils/response')

const verifyAdmin= (req, res, next)=> {
    try {
        var {authorization: token}= req.headers;
        if (!token) {
            console.log("authorization header missing");
            return badRequestResponse(res, "authorization header missing")
        }
        var decoded= verifyToken(token);
        if (!decoded) {
            console.log('Authorization Failed');
            return unauthorizedErrorResponse(res, "wrong credentials")
        }
        if (!(decoded['role']== 'admin')) {
            console.log('Forbidden');
            return forbiddenErrorResponse(res, "you are not athorized to access this route")
        }
        console.log('Authorized!');
        next();
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return serverErrorResponse(res, error.message)
    }
}

const verifyAgencyAdmin= (req, res, next)=> {
    try {
        var {authorization: token}= req.headers;
        if (!token) {
            console.log("authorization header missing");
            return badRequestResponse(res, "authorization header missing")
        }
        var decoded= verifyToken(token);
        if (!decoded) {
            console.log('Authorization Failed');
            return unauthorizedErrorResponse(res, "wrong credentials")
        }
        if (!(decoded['role']== 'agency')) {
            console.log('Forbidden');
            return forbiddenErrorResponse(res, "you are not athorized to access this route")
        }
        console.log('Authorized!');
        next();
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return serverErrorResponse(res, error.message)
    }
}

const verifyInstituteAdmin= (req, res, next)=> {
    try {
        var {authorization: token}= req.headers;
        if (!token) {
            console.log("authorization header missing");
            return badRequestResponse(res, "authorization header missing")
        }
        var decoded= verifyToken(token);
        if (!decoded) {
            console.log('Authorization Failed');
            return unauthorizedErrorResponse(res, "wrong credentials")
        }
        if (!(decoded['role']== 'instituteAdmin')) {
            console.log('Forbidden');
            return forbiddenErrorResponse(res, "you are not athorized to access this route")
        }
        console.log('Authorized!');
        next();
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return serverErrorResponse(res, error.message)
    }
}

const verifyInstituteUser= (req, res, next)=> {
    try {
        var {authorization: token}= req.headers;
        if (!token) {
            console.log("authorization header missing");
            return badRequestResponse(res, "authorization header missing")
        }
        var decoded= verifyToken(token);
        if (!decoded) {
            console.log('Authorization Failed');
            return unauthorizedErrorResponse(res, "wrong credentials")
        }
        if (!(decoded['role']== 'instituteUser')) {
            console.log('Forbidden');
            return forbiddenErrorResponse(res, "you are not athorized to access this route")
        }
        console.log('Authorized!');
        next();
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return serverErrorResponse(res, error.message)
    }
}

const verifyStudent= (req, res, next)=> {
    try {
        var {authorization: token}= req.headers;
        if (!token) {
            console.log("authorization header missing");
            return badRequestResponse(res, "authorization header missing")
        }
        var decoded= verifyToken(token);
        if (!decoded) {
            console.log('Authorization Failed');
            return unauthorizedErrorResponse(res, "wrong credentials")
        }
        if (!(decoded['role']== 'student')) {
            console.log('Forbidden');
            return forbiddenErrorResponse(res, "you are not athorized to access this route")
        }
        console.log('Authorized!');
        next();
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return serverErrorResponse(res, error.message)
    }
};

module.exports= {
    verifyAdmin,
    verifyAgencyAdmin,
    verifyInstituteAdmin,
    verifyInstituteUser,
    verifyStudent,
}

