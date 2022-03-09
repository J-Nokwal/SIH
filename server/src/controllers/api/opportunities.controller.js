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
        var [opp, err]= await getOpportunityByQueryPopulate({ _id: oppId });
        if (err) {
            return notFoundErrorResponse(res, err.message);
        }
        return successResponse(res, 'Applicants listed successfully', opp.applicants);
    } catch (error) {
        console.log(`Error : ${error.message}`);
        return serverErrorResponse(res, error.message);
    }
}

const viewOpportunity= async (req, res) => {
    try {
        var oppId= req.params.id;
        var [opp, err]= await getOpportunityByQuery({ _id: oppId });
        if (err) {
            return notFoundErrorResponse(res, 'Opportunity not found');
        }
        return successResponse(res, 'Opportunity listed successfully', opp);
    } catch (error) {
        console.log(`Error : ${error.message}`);
        return serverErrorResponse(res, error.message);
    }
}

const listOpportunities= async (req, res) => {
    try {
        var [opps, err]= await getOpportunitiesByQuery(req.body.filter);
        if (err) {
            return serverErrorResponse(res, err.message);
        }
        return successResponse(res, 'Opportunities listed successfully', opps);
    } catch (error) {
        console.log(`Error : ${error.message}`);
        return serverErrorResponse(res, error.message);
    }
}

const createOpportunityController= async (req, res) => {
    try {
        req.body.organization= req.user.agencyCode;
        var [opp, err]= await createOpportunity(req.body);
        if (err) {
            return badRequestErrorResponse(res, err.message);
        }
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