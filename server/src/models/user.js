// for authorization purpose

const mongoose= require('mongoose');

const userSchema= new mongoose.Schema({
    username: {
        type: String,
        required: true,
        unique: true,
    },
    password: {
        type: String,
        required: true,
    },
    tokenPayload: {
        type: Object,
        default: null
    }, // important
    role: {
        type: String,
        required: true,
        enum: ['admin', 'student', 'instituteAdmin', 'instituteUser', 'agency'],
    },
    isVerified: {
        type: Boolean,
        default: false,
    }
}, {
    timestamps: true,
});

module.exports= mongoose.model('User', userSchema);