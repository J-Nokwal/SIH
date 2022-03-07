const express= require('express');
const {
    signToken,
    verifyToken,
}= require('../../utils/jwt');

const router= express.Router();

router.get('/initiateAadhaarSession');

router.get('/reloadCaptcha');

router.post('/fillAadhaar'); // captcha and aadhhar number: Send OTP to linked mobile number with this aadhaar

router.post('/verifyAadhaar'); // OTP, email and password: Verify OTP and create a new account

// *********** Low Priority ***********
router.get('/verifyEmail/:emailVerificationToken'); // token should not be expired + this feature will be implemented with redis
// ***********              ***********

router.post('/signin'); // email and password

module.exports= router;