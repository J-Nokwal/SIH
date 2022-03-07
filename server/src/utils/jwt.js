const jwt= require('jsonwebtoken');
const {
    UNIVERSITY_SIGNING_KEY,
    AGENCY_SIGNING_KEY,
    STUDENT_SIGNING_KEY,
    UNIVERSAL_SIGNING_KEY
}= require('../utils/config');

const keyMap= {
    university: UNIVERSITY_SIGNING_KEY,
    agency: AGENCY_SIGNING_KEY,
    student: STUDENT_SIGNING_KEY,
    universal: UNIVERSAL_SIGNING_KEY,
}

module.exports= {
    signToken: (payload, type= 'universal')=> {
        return jwt.sign(payload, keyMap[type]);
    },
    verifyToken: (token, type= 'universal')=> {
        return jwt.verify(token, keyMap[type]);
    },
    decode: (token)=> {
        return jwt.decode(token);
    }
}