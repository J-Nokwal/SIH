const express= require('express');
const {
    listInstitutions,
}= require('../../controllers/api/institutions.controller');

const router= express.Router();

router.get('/list', listInstitutions); // get all institutions

router.post('/list', listInstitutions); // get all institutions by filters

module.exports= router;