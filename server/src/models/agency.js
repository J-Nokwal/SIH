// government agencies

const mongoose= require('mongoose');

const agencySchema= new mongoose.Schema({
    agencyName: {
        type: String,
        required: true,
    },
    agencyCode: {
        type: String,
        required: true,
        unique: true,
    },
    agencyWebsite: {
        type: String,
        required: true,
    },
    agencyAdminEmail: {
        type: String,
        required: true,
    },
    agencyAdminRef: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'User',
    },
    opportunities: [{
        type: mongoose.Schema.Types.ObjectId,
        ref: 'Opportunity',
    }]
}, {
    timestamps: true,
});

module.exports= mongoose.model('Agency', agencySchema);