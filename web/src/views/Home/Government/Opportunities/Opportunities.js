import React from "react";
import Image from "../../../../assets/Image.png";
import { Link } from "react-router-dom";
const Opportunities = () => {
  return (
    <div>
      <div>
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
              <Link to={`/govt/applicants/1`}>
                <div>
                  <div className="text-24 font-bold text-primary">
                    Notice Title:One
                  </div>
                  <div className="text-zinc-400 mt-4">
                    Lorem Ipsum is simply dummy text of the printing and
                    typesetting industry. Lorem Ipsum has been the industry's
                    standard dummy text ever since the 1500s.....
                  </div>

                  <div className="flex flex-row gap-124 mt-20">
                    <div className="text-16 font-bold">Posted by : Society</div>
                    <div className="text-16 font-bold">Date : XXXXX</div>
                  </div>
                </div>
              </Link>
            </div>
          </div>
        </div>
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
                <div className="text-zinc-400 mt-4">
                  Lorem Ipsum is simply dummy text of the printing and
                  typesetting industry. Lorem Ipsum has been the industry's
                  standard dummy text ever since the 1500s.....
                </div>

                <div className="flex flex-row gap-124 mt-20">
                  <div className="text-16 font-bold">Posted by : Society</div>
                  <div className="text-16 font-bold">Date : XXXXX</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Opportunities;
