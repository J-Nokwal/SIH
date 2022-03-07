const Institute= require('../models/institute');

// CRUD

const createInstitute= async (institute)=> {
    try {
        var newInstitute= Institute.create(institute);
        return [JSON.parse(JSON.stringify(newInstitute)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const getInstitutesByQuery= async (query= {})=> {
    try {
        var institutes= Institute.find(query);
        return [JSON.parse(JSON.stringify(institutes)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const getInstituteByQuery= async (query= {})=> {
    try {
        var institute= Institute.findOne(query);
        return [JSON.parse(JSON.stringify(institute)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const updateInstitute= async (institute, query= {})=> {
    try {
        var updatedInstitute= Institute.findOneAndUpdate(query, institute, {new: true});
        return [JSON.parse(JSON.stringify(updatedInstitute)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const deleteInstitute= async (query= {})=> {
    try {
        var deletedInstitute= Institute.findOneAndDelete(query);
        return [JSON.parse(JSON.stringify(deletedInstitute)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

module.exports= {
    createInstitute,
    getInstitutesByQuery,
    getInstituteByQuery,
    updateInstitute,
    deleteInstitute,
}