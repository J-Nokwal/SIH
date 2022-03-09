import React, { useState, useEffect } from "react";
import Image from "../../../../assets/Image.png";
import { Link } from "react-router-dom";
import axios from "axios";

const Opportunities = () => {
  const [opr, setopr] = useState([]);
  useEffect(() => {
    const token = localStorage.getItem("token");

    axios
      .post(
        "http://13.232.59.144/api/opportunity/listOpportunities",
        {
          filter: {
            type: "Scholarship",
          },
        },
        {
          headers: { authorization: token },
        }
      )
      .then((res) => {
        console.log(res.data);
        setopr(res.data.data);
      })
      .catch((err) => {
        console.log(err);
      });
  }, []);
  return (
    <div>
      <div>
        {opr?.map((e) => (
          <div className="bg-hcolor p-5 rounded-md mr-16 mt-5" key={e._id}>
            <div>
              <div className="flex flex-row gap-4">
                <div>
                  <div>
                    <img className="w-124 h-124" src={Image} />
                  </div>
                  <div className="mt-4">
                    <div className="text-24 font-bold">{e.type} </div>
                  </div>
                </div>
                <Link to={`/govt/applicants/${e._id}`}>
                  <div>
                    <div className="text-24 font-bold text-primary">
                      {e.title}
                    </div>
                    <div className="text-zinc-400 mt-4 break-all">
                      {e.description}
                    </div>

                    <div className="flex flex-row gap-124 mt-20">
                      <div className="text-16 font-bold">
                        Posted by : {e.organization}
                      </div>
                      <div className="text-16 font-bold">
                        Date : {e.applicationDeadline}
                      </div>
                    </div>
                  </div>
                </Link>
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Opportunities;
