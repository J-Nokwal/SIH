const express= require('express');

const router= express.Router();

router.get('/applyForOpportunity/:id'); // opportunity id

router.get('/viewOpportunity/:id'); // opportunity id

router.post('/listOpportunities'); // relevant to student, filter 

module.exports= router;