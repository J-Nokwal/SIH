const express= require('express');
const {
    createUser
}= require('./repository/user.repository');
const {
    createStudent
}= require('./repository/student.repository')
const {
    createAgency,
    updateAgency,
}= require('./repository/agency.repository')
const {
    createInstitute,
    updateInstitute,
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

router.post('/createStudent', async(req, res)=> {
    try {
        await createStudent(req.body);
    } catch (error) {
        
    }
});

router.post('/createAgencyAdmin', async(req, res)=> {
    try {
        req.body.role= 'agency';
        var [a, b]= await createUser(req.body);
        // update agency object
        var [c, d]= await updateAgency({
            agencyAdminRef: a._id,
        }, {
            _id: req.body.agencyId,
        });
        res.send(a);
    } catch (error) {
        res.status(500).send(error.message)
    }
});

router.post('/createInstituteAdmin', async(req, res)=> {
    try {
        req.body.role= 'instituteAdmin';    
        var [a, b]= await createUser(req.body);
        var [c, d]= await updateInstitute({
            instituteAdminRef: a._id,
        }, {
            _id: req.body.instituteId,
        });
        res.send(a)
    } catch (error) {
        res.status(500).send(error.message)
    }
});

module.exports= router;