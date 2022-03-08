const {
    getApplicants,
    viewOpportunity,
    listOpportunities,
}= require('../../controllers/api/opportunities.controller')
const express= require('express');

const router= express.Router();

// router.get('/applyForOpportunity/:id'); // opportunity id

router.get('/getApplicants/:id', getApplicants); // opportunity id

router.get('/viewOpportunity/:id', viewOpportunity); // opportunity id

router.post('/listOpportunities', listOpportunities); // relevant to student, filter 

module.exports= router;