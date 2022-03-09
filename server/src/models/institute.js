// AICTE approved institutes

const mongoose= require('mongoose');
const {
    instituteTypesEnums,
}= require('../utils/constants')

const institutionSchema= new mongoose.Schema({
    instituteName: {
        type: String,
        required: true,
    },
    instituteCode: {
        type: String,
        required: true,
        unique: true,
    },
    nirf: {
        type: Number
    },
    instituteType: {
        type: String,
        required: true,
        enum: instituteTypesEnums,
    },
    institueWebsite: {
        type: String,
        required: true,
    },
    institueAdminEmail: {
        type: String,
        required: true,
    },
    instituteAdminRef: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'User',
    },
    state: {
        type: String,
        required: true,
    },
    coursesOffered: [{
        type: String,
    }],
    opportunities: [{
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Opportunity',
    }]
}, {
    timestamps: true,
});

module.exports= mongoose.model('Institute', institutionSchema);