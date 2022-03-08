const express= require('express');
const {
    updateUserInfo,
    getInfo,
    setUniverisity,
    myOpportunities,
    applyForOpportunity,
    thirdPartyIdentity,
}= require('../../controllers/api/student.controller');

const router= express.Router();

router.get('/me', getInfo); // -_id, -__v, -password

router.get('/myOpportunities', myOpportunities); 

router.get('/applyForOpportunity/:id', applyForOpportunity); // opportunity id

router.post('/setUniverisity', setUniverisity); // university id, roll number

// low priority
router.post('/changePassword'); // current and new password

router.post('/updateProfile', updateUserInfo); // password and primary info (name, dob, address : coming from aadhaar) change not allowed

router.post('/thirdPartyIdentity', thirdPartyIdentity);

module.exports= router;

