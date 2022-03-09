const {
    getApplicants,
    viewOpportunity,
    listOpportunities,
    createOpportunityController
}= require('../../controllers/api/opportunities.controller')
const express= require('express');
const {
    verifyAgencyAdmin
}= require("../../middlewares/authorization.middleware")

const router= express.Router();

// router.get('/applyForOpportunity/:id'); // opportunity id

router.get('/getApplicants/:id', getApplicants); // opportunity id

router.get('/viewOpportunity/:id', viewOpportunity); // opportunity id

router.post('/listOpportunities', listOpportunities); // relevant to student, filter 

router.post('/createOpportunity', verifyAgencyAdmin, createOpportunityController); 

module.exports= router;