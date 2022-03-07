const User= require('../models/user');

// CRUD

const createUser= async (user)=> {
    try {
        var newUser= User.create(user);
        return [JSON.parse(JSON.stringify(newUser)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const getUsersByQuery= async (query= {})=> {
    try {
        var users= User.find(query);
        return [JSON.parse(JSON.stringify(users)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const getUserByQuery= async (query= {})=> {
    try {
        var user= User.findOne(query);
        return [JSON.parse(JSON.stringify(user)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const updateUser= async (user, query= {})=> {
    try {
        var updatedUser= User.findOneAndUpdate(query, user, {new: true});
        return [JSON.parse(JSON.stringify(updatedUser)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

const deleteUser= async (query= {})=> {
    try {
        var deletedUser= User.findOneAndDelete(query);
        return [JSON.parse(JSON.stringify(deletedUser)), null];
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return [null, error.message];
    }
}

module.exports= {
    createUser,
    getUsersByQuery,
    getUserByQuery,
    updateUser,
    deleteUser,
}