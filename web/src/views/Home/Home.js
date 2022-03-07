import React from "react";
import MainButton from "../../components/Buttons/mainbutton/MainButton";
import HomeImage from "../../assets/Home.svg";
import copyright from "../../assets/Vector.svg";
import { Link } from "react-router-dom";
const Home = () => {
  return (
    <div>
      <div className="grid  grid-cols-2 ">
        <div className="bg-deepBlue block h-753">
          <div>
            <div className="text-5xl text-white mt-4 ml-2">Chitragupta</div>
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

        <div className="grid justify-items-center  mt-124">
          <div>
            <div className="bg-coolGray w-124 text-center h-124 ml-10  rounded-full ">
              <div className="text-4xl ">
                <br />L
              </div>
            </div>
            <br />
            <div>
              <div className=" text-5xl">Sign in as</div>{" "}
            </div>
          </div>
          <div>
            <Link to={"/unilogin"}>
              <MainButton text={"Academic Institution"} />
            </Link>
            <br />
            <br />
            <Link to={"/govtlogin"}>
              <MainButton text={"Government Agency"} />
            </Link>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Home;
