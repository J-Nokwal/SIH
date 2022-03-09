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
        console.log(states);
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

router.post('/studentInsights', async(req, res)=> {
    try {
        var filter= req.body.filter;
        // filter: {category: "GEN", currentCGPA: {$gte: 8.0}}
        // get the number of students in each domicileState with male female distinction on the basis of filter
        
    } catch (error) {
        
    }
})

module.exports= router;