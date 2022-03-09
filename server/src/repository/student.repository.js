const Student= require('../models/student');

// CRUD

const createStudent= async (student)=> {
    try {
        var newStudent= Student.create(student);
        return [JSON.parse(JSON.stringify(newStudent)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const getStudentsByQuery= async (query= {})=> {
    try {
        var students= Student.find(query);
        return [JSON.parse(JSON.stringify(students)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const getStudentByQuery= async (query= {})=> {
    try {
        var student= Student.findOne(query);
        return [JSON.parse(JSON.stringify(student)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const updateStudent= async (student, query= {})=> {
    try {
        var updatedStudent= Student.findOneAndUpdate(query, student, {new: true});
        return [JSON.parse(JSON.stringify(updatedStudent)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const deleteStudent= async (query= {})=> {
    try {
        var deletedStudent= Student.findOneAndDelete(query);
        return [JSON.parse(JSON.stringify(deletedStudent)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const getStudentByQueryPopulate= async (query= {})=> {
    try {
        // populate enrolledOpportunities, starredOpportunities
        var student= Student.findOne(query).populate('enrolledOpportunities').populate('starredOpportunities');
        return [JSON.parse(JSON.stringify(student)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const addEnrolledOpportunity= async (studentId, opportunityId)=> {
    try {
        var student= await Student.findById(studentId);
        student.enrolledOpportunities.push(opportunityId);
        await student.save();
        return [JSON.parse(JSON.stringify(student)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}
module.exports= {
    createStudent,
    getStudentsByQuery,
    getStudentByQuery,
    updateStudent,
    deleteStudent,
    getStudentByQueryPopulate,
    addEnrolledOpportunity
}
