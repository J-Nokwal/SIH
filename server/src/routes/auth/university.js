const express= require('express');
const {
    signToken,
    verifyToken,
}= require('../../utils/jwt');

const router= express.Router();

router.get('/signin'); // username and password

module.exports= router;