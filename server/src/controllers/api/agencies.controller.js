const {
    createAgency,
    getAgenciesByQuery,
    getAgencyByQuery,
    updateAgency,
    deleteAgency,
}= require('../../repository/agency.repository');
const {
    serverErrorResponse,
    successResponse,
    badRequestErrorResponse,
    notFoundErrorResponse,
}= require('../../utils/response');

const listAgencies= async (req, res)=> {
    try{
        var query= {}
        if(req.method==='POST')
            query= req.filter;
        var [agencies, err]= await getAgenciesByQuery(query);
        if(err)
            return serverErrorResponse(res, err);
        return successResponse(res, 'Agencies listed successfully', agencies);
    }catch(error){
        console.log(`Server error : ${error.message}`);
        return serverErrorResponse(res, error.message);
    }
}

module.exports= {
    listAgencies,
}