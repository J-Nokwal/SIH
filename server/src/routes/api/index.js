const express= require('express');

const router= express.Router();

router.use('/institute', require('./institutes.route'));
router.use('/agency', require('./agencies.route'));

module.exports= router;