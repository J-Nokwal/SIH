import React from "react";
import Image from "../../../../assets/Image.png";
import MainButton from "../../../../components/Buttons/mainbutton/MainButton";
const Opportunitiesedit = () => {
  return (
    <div>
      {" "}
      <div className="bg-hcolor p-5 rounded-md mr-16 mt-5">
        <div>
          <div className="flex flex-row gap-4">
            <div>
              <div>
                <img className="w-124 h-124" src={Image} />
              </div>
              <div className="mt-4">
                <div className="text-24 font-bold">Application Received </div>
              </div>
            </div>

            <div>
              <div className="text-24 font-bold text-primary">
                Notice Title:One
              </div>

              <div className="flex flex-col gap-4 mt-7 text-newblue">
                <div className="text-16 font-bold">Posted by : Society</div>
                <div className="text-16 font-bold">Date : XXXXX</div>
              </div>
            </div>
            <div className="ml-124 mt-7">
              <button className="w-100 bg-red-500 px-10 rounded-md py-3 text-center text-black1 ">
                Close Application
              </button>
            </div>
          </div>
          <div className="mt-10 mx-124">
            <div className="text-zinc-400 ">
              Lorem Ipsum is simply dummy text of the printing and typesetting
              industry. Lorem Ipsum has been the industry's standard dummy text
              ever since the 1500s. Lorem Ipsum is simply dummy text of the
              printing and typesetting industry. Lorem Ipsum has been the
              industry's standard dummy text ever since the 1500s..... Lorem
              Ipsum is simply dummy text of the printing and typesetting
              industry. Lorem Ipsum has been the industry's standard dummy text
              ever since the 1500s..... Lorem Ipsum is simply dummy text of the
              printing and typesetting industry. Lorem Ipsum has been the
              industry's standard dummy text ever since the 1500s.....
            </div>
            <div className="flex flex-row gap-124 my-16">
              <div>
                <MainButton text={"Download CSV"} />
              </div>
              <div>
                <MainButton text={"Apply Filters"} />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Opportunitiesedit;
