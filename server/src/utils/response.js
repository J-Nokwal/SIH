module.exports= {
    successResponse: (res, message, data)=> {
        return res.status(200).json({
            error: false,
            message: message,
            data: data
        });
    },
    serverErrorResponse: (res, message)=> {
        return res.status(500).json({
            error: true,
            message: message,
            data: {}
        });
    },
    basRequestErrorResponse: (res, message)=> {
        return res.status(400).json({
            error: true,
            message: message,
            data: {}
        });
    },
    notFoundErrorResponse: (res, message)=> {
        return res.status(404).json({
            error: true,
            message: message,
            data: {}
        });
    },
    unauthorizedErrorResponse: (res, message)=> {
        return res.status(401).json({
            error: true,
            message: message,
            data: {}
        });
    },
    forbiddenErrorResponse: (res, message)=> {
        return res.status(403).json({
            error: true,
            message: message,
            data: {}
        });
    },
}