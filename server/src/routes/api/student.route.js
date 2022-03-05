const express= require('express');

const router= express.Router();

router.get('/me'); // -_id, -__v, -password

router.post('/setUniverisity'); // university id, roll number

router.post('/changePassword'); // current and new password

router.post('/updateProfile'); // password and primary info (name, dob, address : coming from aadhaar) change not allowed

module.exports= router;