const express= require('express');

const router= express.Router();

router.post('/fillAadhaar'); // aadhhar number: Send OTP to linked mobile number with this aadhaar

router.post('/verifyAadhaar'); // OTP, email and password: Verify OTP and create a new account

// *********** Low Priority ***********
router.get('/verifyEmail/:emailVerificationToken'); // token should not be expired + this feature will be implemented with redis
// ***********              ***********

router.post('/signin'); // email and password

module.exports= router;