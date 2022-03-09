const Opportunity = require('../models/opportunity');

// CRUD

const createOpportunity = async (opportunity) => {
    try {
        var newOpportunity = await Opportunity.create(opportunity);
        return [JSON.parse(JSON.stringify(newOpportunity)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const getOpportunitiesByQuery = async (query = {}) => {
    try {
        var opportunities = await Opportunity.find(query);
        return [JSON.parse(JSON.stringify(opportunities)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const getOpportunityByQuery = async (query = {}) => {
    try {
        var opportunity = await Opportunity.findOne(query);
        return [JSON.parse(JSON.stringify(opportunity)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const updateOpportunity = async (opportunity, query = {}) => {
    try {
        var updatedOpportunity = await Opportunity.findOneAndUpdate(query, opportunity, { new: true });
        return [JSON.parse(JSON.stringify(updatedOpportunity)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const deleteOpportunity = async (query = {}) => {
    try {
        var deletedOpportunity = await Opportunity.findOneAndDelete(query);
        return [JSON.parse(JSON.stringify(deletedOpportunity)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const getOpportunityByQueryPopulate = async (query = {}) => {
    try {
        var opportunity = await Opportunity.findOne(query).populate('applicants');
        return [JSON.parse(JSON.stringify(opportunity)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

module.exports= {
    createOpportunity,
    getOpportunitiesByQuery,
    getOpportunityByQuery,
    updateOpportunity,
    deleteOpportunity,
    getOpportunityByQueryPopulate
}
