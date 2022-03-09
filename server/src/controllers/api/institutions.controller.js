const {
    createInstitute,
    getInstitutesByQuery,
    getInstituteByQuery,
    updateInstitute,
    deleteInstitute,
}= require('../../repository/institute.repository');
const {
    serverErrorResponse,
    successResponse,
    badRequestErrorResponse,
    notFoundErrorResponse,
}= require('../../utils/response')

const listInstitutions= async (req, res)=> {
    try{
        var query= {}
        if(req.method==='POST')
            query= req.body.filter;
        console.log(query);
        var [institutes, err]= await getInstitutesByQuery(query);
        if(err)
            return serverErrorResponse(res, err);
        return successResponse(res, 'Institutes listed successfully', institutes);
    }catch(error){
        console.log(`Server error : ${error.message}`);
        return serverErrorResponse(res, error.message);
    }
}

module.exports= {
    listInstitutions,
}