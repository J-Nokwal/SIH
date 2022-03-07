const express= require('express');
const {
    listAgencies,
}= require('../../controllers/api/agencies.controller');

const router= express.Router();

router.get('/list', listAgencies); // get all institutions

router.post('/list', listAgencies); // get all institutions by filters

module.exports= router;