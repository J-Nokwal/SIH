const express= require('express');

const router= express.Router();

router.use('/institute', require('./institutes.route'));
router.use('/agency', require('./agencies.route'));
router.use('/student', require('./student.route'));
router.use('/opportunity', require('./opportunities.route'));

module.exports= router;