import React, { useState, useEffect } from "react";
import MainButton from "../../../../components/Buttons/mainbutton/MainButton";
import HomeImage from "../../../../assets/LoginPage.svg";
import Homeicon from "../../../../assets/Homeicon.svg";

import copyright from "../../../../assets/Vector.svg";
import { Link, useHistory } from "react-router-dom";
import InputField from "../../../../components/InputField/Input/InputField";
import Passwordicon from "../../../../assets/Passwordicon.svg";
import Accessicon from "../../../../assets/Accesicon.svg";
import LightName from "../../../../assets/lightname.png";
import Dropdowncomponent from "../../../../components/Dropdown/Dropdown-component";
import Enterbutton from "../../../../components/Buttons/mainbutton/Enterbutton";
import axios from "axios";
const LoginPage = () => {
  const arr = ["AICTE", "GOVT"];
  const [Agency, setAgency] = useState("");
  const [username, setusername] = useState("");
  const [password, setpassword] = useState("");
  const history = useHistory();
  const HandleSubmit = async (e) => {
    var res = await axios.post("http://13.232.59.144/auth/agency/signin", {
      username: username,
      password: password,
    });

    console.log(res.data);
    if (!res.data.error) {
      localStorage.setItem("token", res.data.data.accessToken);
      history.push("/govt");
    } else {
    }
  };
  return (
    <div>
      <div className="grid  grid-cols-2 ">
        <div className="bg-deepBlue block h-753">
          <div
            className="text-5xl text-white mt-4 ml-2"
            style={{
              fontFamily: "'Samarkan', sans-serif",
            }}
          >
            Chitragupta
          </div>
          <div className="ml-9 mt-8">
            <img className="w-639 h-560" src={HomeImage} />
          </div>
          <div className="grid justify-items-center mt-15">
            <div className="flex flex-row gap-2 ">
              <div>
                <img className="w-5 h-5" src={copyright} />
              </div>
              <div className="text-16 text-white">All Rights Reserved</div>
            </div>
          </div>
        </div>

        <div className="grid justify-items-center  mt-16">
          <div>
            <div className="flex flex-row gap-2">
              <div className="text-4xl font-bold">Access Portal</div>{" "}
              <div>
                <img src={Accessicon} />
              </div>
            </div>

            <div className="mt-16">
              <div className="text-primary mb-2 text-21">Choose Agency</div>
              <Dropdowncomponent
                change={Agency}
                setchange={setAgency}
                arr={arr}
                text={"--Select One --"}
              />
            </div>
            <br />
            <div className="mt-124">
              <InputField
                icon={Homeicon}
                type="text"
                onChange={(e) => setusername(e.target.value)}
                value={username}
                text={"Username"}
              />

              <br />
              <br />
              <InputField
                icon={Passwordicon}
                type="password"
                onChange={(e) => setpassword(e.target.value)}
                value={password}
                text={"Password"}
              />
            </div>
            <div className="mt-14 ml-17" onClick={HandleSubmit}>
              <Enterbutton text={"Enter"} />
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default LoginPage;
