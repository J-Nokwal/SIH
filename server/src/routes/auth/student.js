const express= require('express');
const {
    signin,
    initiateAadhaarSession,
    reloadAadhaarCaptcha,
    fillAadhaar,
    verifyAadhaar,
}= require('../../controllers/auth/student');

const router= express.Router();

router.get('/', (req, res)=> {
    res.send('student auth');
})
router.get('/initiateAadhaarSession', initiateAadhaarSession);

router.get('/reloadCaptcha', reloadAadhaarCaptcha);

router.post('/fillAadhaar', fillAadhaar); // captcha and aadhhar number: Send OTP to linked mobile number with this aadhaar

router.post('/verifyAadhaar', verifyAadhaar); // OTP, email and password: Verify OTP and create a new account

// *********** Low Priority ***********
router.get('/verifyEmail/:emailVerificationToken'); // token should not be expired + this feature will be implemented with redis
// ***********              ***********

router.post('/signin', signin); // email and password

module.exports= router;