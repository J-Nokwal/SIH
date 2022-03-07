const bcrypt= require('bcrypt');

const hashPassword= async (password)=> {
    try {
        const salt= await bcrypt.genSalt(10);
        const hashedPassword= await bcrypt.hash(password, salt);
        return hashedPassword;
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return null;
    }
}

const comparePassword= async (password, hashedPassword)=> {
    try {
        const isValid= await bcrypt.compare(password, hashedPassword);
        return isValid;
    } catch (error) {
        console.log(`Server error : ${error.message}`);
        return null;
    }
}

module.exports= {
    hashPassword,
    comparePassword,
}