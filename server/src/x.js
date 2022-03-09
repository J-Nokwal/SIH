const axios = require('axios');
var signin= async()=> {
    try {
        var rep= await axios.post('http://13.232.59.144/auth/institute/signin', {
            username: "admin@thaparr.edu",
            password: "123456"
        })
        console.log(rep.data);
    } catch (error) {
        console.log(error);
    }
}

const main= async()=> {
    try {
        await signin()
    } catch (error) {
        console.log(error);
    }
}

main()