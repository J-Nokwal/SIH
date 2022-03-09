const express= require('express');
const {
    successResponse,
    serverErrorResponse
}= require('../../utils/response')
const Student= require('../../models/student');
const Institute= require('../../models/institute');

const router= express.Router();

router.get('/govtInsights', async(req, res)=> {
    try {
        var studentCount= await Student.countDocuments({});
        var instituteCount= await Institute.countDocuments({});
        // each institute has a state associated with it, count the number of unique states
        var states= await Institute.aggregate([
            { $group: { _id: '$state', count: { $sum: 1 } } }
        ]);
        var stateCount= states.length;
        return successResponse(res, 'Govt insights listed successfully', {
            studentCount,
            instituteCount,
            stateCount
        })
    } catch (error) {
        return serverErrorResponse(res, error.message);
    }
})

module.exports= router;