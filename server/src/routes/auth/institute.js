const express= require('express');
const {
    signin
}= require('../../controllers/auth/agency');

const router= express.Router();

router.get('/signin', signin); // username and password

module.exports= router;