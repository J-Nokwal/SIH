const Agency= require('../models/agency');

// CRUD
const createAgency= async (agency)=> {
    try {
        var newAgency= await Agency.create(agency);
        return [JSON.parse(JSON.stringify(newAgency)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const getAgenciesByQuery= async (query= {})=> {
    try {
        var agencies= await Agency.find(query);
        return [JSON.parse(JSON.stringify(agencies)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const getAgencyByQuery= async (query= {})=> {
    try {
        var agency= await Agency.findOne(query);
        return [JSON.parse(JSON.stringify(agency)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const updateAgency= async (agency, query= {})=> {
    try {
        var updatedAgency= await Agency.findOneAndUpdate(query, agency, {new: true});
        return [JSON.parse(JSON.stringify(updatedAgency)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const deleteAgency= async (query= {})=> {
    try {
        var deletedAgency= await Agency.findOneAndDelete(query);
        return [JSON.parse(JSON.stringify(deletedAgency)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

module.exports= {
    createAgency,
    getAgenciesByQuery,
    getAgencyByQuery,
    updateAgency,
    deleteAgency,
}
