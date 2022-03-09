const express= require('express');
const {
    createUser
}= require('./repository/user.repository');
const {
    createStudent
}= require('./repository/student.repository')
const {
    createAgency
}= require('./repository/agency.repository')
const {
    createInstitute
}= require('./repository/institute.repository')

const router= express.Router();

router.post('/createAgency', async(req, res)=> {
    try {
        var [a, b]= await createAgency(req.body);
        res.send(a);
    } catch (error) {
        console.log(error.message)
        res.status(500).send(error.message)
    }
});

router.post('/createInstitute', async(req, res)=> {
    try {
        var [a, b]= await createInstitute(req.body);
        res.send(a);
    } catch (error) {
        console.log(error.message)
        res.status(500).send(error.message)
    }
});

router.post('/createStudent', async()=> {
    try {
        await createStudent(req.body);
    } catch (error) {
        
    }
});

router.post('/createAgencyAdmin', async()=> {
    try {
        await createUser(req.body);
    } catch (error) {
        
    }
});

router.post('/createInstituteAdmin', async()=> {
    try {
        
    } catch (error) {
        
    }
});

module.exports= router;