import React, { useState, useEffect } from "react";
import Image from "../../../../assets/Image.png";
import MainButton from "../../../../components/Buttons/mainbutton/MainButton";
import axios from "axios";
import { useParams } from "react-router-dom";
const Opportunitiesedit = () => {
  const { id } = useParams();
  const [type, settype] = useState("");
  const [title, settitle] = useState("");
  const [dead, setdead] = useState("");
  const [posted, setposted] = useState("");
  const [desc, setdesc] = useState("");
  useEffect(() => {
    const token = localStorage.getItem("token");

    axios
      .get(
        `http://13.232.59.144/api/opportunity/viewOpportunity/${id}`,

        {
          headers: { authorization: token },
        }
      )
      .then((res) => {
        console.log(res.data);
        settype(res.data.data.type);
        settitle(res.data.data.title);
        setposted(res.data.data.organization);
        setdead(res.data.data.applicationDeadline);
        setdesc(res.data.data.description);
      })
      .catch((err) => {
        console.log(err);
      });
  }, []);
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
                <div className="text-24 font-bold">{type} </div>
              </div>
            </div>

            <div>
              <div className="text-24 font-bold text-primary">{title}</div>

              <div className="flex flex-col gap-4 mt-7 text-newblue">
                <div className="text-16 font-bold">Posted by : {posted}</div>
                <div className="text-16 font-bold">Date : {dead}</div>
              </div>
            </div>
            <div className="ml-124 mt-7">
              <button className="w-100 bg-red-500 px-10 rounded-md py-3 text-center text-black1 ">
                Close Application
              </button>
            </div>
          </div>
          <div className="mt-10 mx-124">
            <div className="text-zinc-400 break-all">{desc}</div>
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
