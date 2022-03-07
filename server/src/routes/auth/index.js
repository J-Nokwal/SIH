const express= require('express');

const router= express.Router();

router.use('/student', require('./student'));
router.use('/agency', require('./agency'));
router.use('/university', require('./university'));

module.exports= router;