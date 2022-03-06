// enrolled in a course in AICTE approved institue

const mongoose= require('mongoose');
const {
    gendersEnums,
}= require('../utils/constants')
const studentSchema= new mongoose.Schema({
    name: {
        type: Object,
        default: null,
    }, // first, middle, last
    gender: {
        type: String,
        enum: gendersEnums
    },
    category: {
        type: String,
        enum: ["GEN", "OBC", "SC", "ST", "GEN/EWS"],
    },
    phone: {
        type: String,
        default: null
    },
    instituteEmail: {
        type: String,
    },
    personalEmail: {
        type: String,
    },
    address: {
        type: Object,
        default: null
    },
    state: {
        type: String,
        default: null
    }, // state of study
    domicileState: {
        type: String,
        default: null
    }, // state of permanent residence
    userRef: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'User',
    },
    instituteRef: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Institute',
    },
    course: {
        type: String,
        default: null,
    }, 
    courseType: {
        type: String,
        default: null,
    },
    startYear: {
        type: Number,
        default: null,
    },
    endYear: {
        type: Number,
        default: null,
    },
    courseDuration: {
        type: Number,
    },
    isActive: {
        type: Boolean,
        default: true,
    },
    currentCGPA: {
        type: Number,
        default: null,
    },
    rollNumber: {
        type: String,
        default: null,
    },
    totalCredits: {
        type: Number,
        default: null,
    },
    totalCreditsEarned: {
        type: Number,
        default: null,
    },
    currentSemester: {
        type: Number,
        default: null,
    },
    courseStatus: {
        type: String,
        default: null,
        enum: ["ongoing", "completed", "dropped"],
    },
    isVerified: {
        type: Boolean,
        default: false,
    }
}, {
    timestamps: true,
});

module.exports= mongoose.model('Student', studentSchema);