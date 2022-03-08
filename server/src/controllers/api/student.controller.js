const {
    signToken
}= require('../../utils/jwt');
const {
    updateUser,
}= require('../../repository/user.repository');
const {
    getStudentByQuery,
    createStudent,
    updateStudent,
}= require('../../repository/student.repository');

const updateUserInfo= async (req, res) => {}

const getInfo= async (req, res) => {}

const setUniverisity= async (req, res) => {}

const myOpportunities= async (req, res) => {}

const applyForOpportunity= async (req, res) => {}

const thirdPartyIdentity= async (req, res) => {}

module.exports= {
    updateUserInfo,
    getInfo,
    setUniverisity,
    myOpportunities,
    applyForOpportunity,
    thirdPartyIdentity
}