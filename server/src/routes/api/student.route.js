const express= require('express');
const {
    updateUserInfo,
    getInfo,
    setUniverisity,
    myOpportunities,
    applyForOpportunity,
    thirdPartyIdentity,
}= require('../../controllers/api/student.controller');

const {
    verifyStudent
}= require('../../middlewares/authorization.middleware')

const router= express.Router();

router.get('/me', verifyStudent, getInfo); // -_id, -__v, -password

router.get('/myOpportunities', verifyStudent, myOpportunities); 

router.get('/applyForOpportunity/:id', verifyStudent, applyForOpportunity); // opportunity id

router.post('/setInstitute', verifyStudent, setUniverisity); // university id, roll number

// low priority
router.post('/changePassword'); // current and new password

router.post('/updateProfile', verifyStudent, updateUserInfo); // password and primary info (name, dob, address : coming from aadhaar) change not allowed

router.post('/thirdPartyIdentity', verifyStudent, thirdPartyIdentity);

module.exports= router;

