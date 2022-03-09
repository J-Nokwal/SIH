// can be from an agency or an institution

const mongoose= require('mongoose');
const {
    opportunityEnum,
    opportunityRegistrationStatusEnum,
}= require('../utils/constants');

const opportunitySchema= new mongoose.Schema({
    title: {
        type: String,
        required: true,
    },
    description: {
        type: String,
        required: true,
    },
    applicationDeadline: {
        type: Date,
        required: true,
    },
    organization: {
        type: String,
    },
    type: {
        type: String,
        required: true,
        enum: opportunityEnum,
    },
    stipened: {
        type: Number,
        default: 0,
    },
    start: {
        type: Date,
    },
    end: {
        type: Date,
    },
    registrationStatus: {
        type: String,
        required: true,
        enum: opportunityRegistrationStatusEnum,
        default: "Open",
    },
    criteriaFilter: {
        type: Object,
        default: {}
    },
    applicants: [{
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Student',
    }] 
}, {
    timestamps: true,
});

module.exports= mongoose.model('Opportunity', opportunitySchema);