const {
    createOpportunity,
    getOpportunitiesByQuery,
    getOpportunityByQuery,
    getOpportunityByQueryPopulate,
}= require('../../repository/opportunity.repository');
const {
    serverErrorResponse,
    successResponse,
    badRequestErrorResponse,
    notFoundErrorResponse,
}= require('../../utils/response')

const getApplicants= async (req, res) => {
    try {
        var oppId= req.params.id;
        var opp= await getOpportunityByQueryPopulate({ _id: oppId });
        return successResponse(res, 'Applicants listed successfully', opp.applicants);
    } catch (error) {
        console.log(`Error : ${error.message}`);
        return serverErrorResponse(res, error.message);
    }
}

const viewOpportunity= async (req, res) => {
    try {
        var oppId= req.params.id;
        var opp= await getOpportunityByQuery({ _id: oppId });
        return successResponse(res, 'Opportunity listed successfully', opp);
    } catch (error) {
        console.log(`Error : ${error.message}`);
        return serverErrorResponse(res, error.message);
    }
}

const listOpportunities= async (req, res) => {
    try {
        var opps= await getOpportunitiesByQuery(req.body.filter);
        return successResponse(res, 'Opportunities listed successfully', opps);
    } catch (error) {
        console.log(`Error : ${error.message}`);
        return serverErrorResponse(res, error.message);
    }
}

const createOpportunityController= async (req, res) => {
    try {
        var opp= await createOpportunity(req.body);
        return successResponse(res, 'Opportunity created successfully', opp);
    } catch (error) {
        console.log(`Error : ${error.message}`);
        return serverErrorResponse(res, error.message);
    }
}

module.exports= {
    getApplicants,
    viewOpportunity,
    listOpportunities,
    createOpportunityController,
}