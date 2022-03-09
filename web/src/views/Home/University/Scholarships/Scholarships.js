import React, { useState, useEffect } from "react";
import Dropdowncomponent from "../../../../components/Dropdown/Dropdown-component";
import Enterbutton from "../../../../components/Buttons/mainbutton/Enterbutton";
import InputField3 from "../../../../components/InputField/InputField3";
import InputField4 from "../../../../components/InputField/InputField4";
const Scholarships = () => {
  const arr = ["ten", "twenty", "thrity", "fourty", "fifty"];
  const [Agency, setAgency] = useState("");
  return (
    <div>
      <div className="text-center text-24 font-bold mt-5 mb-6">
        Create New Post
      </div>
      <div className="border-2 border-hcolor bg-hcolor p-10 pr-16">
        <div className="mt-7">
          <div className="flex flex-row gap-5">
            <div>
              <div className="text-primary mb-2 text-21">Type</div>
              <Dropdowncomponent
                change={Agency}
                setchange={setAgency}
                arr={arr}
                text={"--Select One --"}
              />
            </div>
            <br />
            <div>
              <div className="text-primary mb-2 text-21">Organisation</div>
              <InputField3 text="Enter" />
            </div>
          </div>
          <br />
          <div>
            <div className="text-primary mb-2 text-21">Title</div>
            <InputField3 text="Enter" />
          </div>

          <br />
          <div>
            <div className="text-primary mb-2 text-21">Description</div>
            <InputField4 text="" type={"text"} />
          </div>
          <br />
          <div>
            <div className="text-primary mb-2 text-21">Amount</div>
            <InputField3
              text="Enter"
              type="number"
              // value={""}
              // onChange={() => {}}
            />
          </div>
          <br />
          <div className="text-24 font-bold">Filters : (Not Compulsory)</div>
          <br />
          <div>
            <div className="text-primary mb-2 text-21">Category</div>
            <Dropdowncomponent
              change={Agency}
              setchange={setAgency}
              arr={arr}
              text={"--Select One --"}
            />
          </div>
          <br />
          <div>
            <div className="text-primary mb-2 text-21">Gender</div>
            <Dropdowncomponent
              change={Agency}
              setchange={setAgency}
              arr={arr}
              text={"--Select One --"}
            />
          </div>
          <br />
          <div>
            <div className="text-primary mb-2 text-21">Grades</div>
            <Dropdowncomponent
              change={Agency}
              setchange={setAgency}
              arr={arr}
              text={"--Select One --"}
            />
          </div>
          <br />
          <div>
            <div className="text-primary mb-2 text-21">Income</div>
            <Dropdowncomponent
              change={Agency}
              setchange={setAgency}
              arr={arr}
              text={"--Select One --"}
            />
          </div>
          <br />
          <div>
            <div className="text-primary mb-2 text-21">Education Level</div>
            <Dropdowncomponent
              change={Agency}
              setchange={setAgency}
              arr={arr}
              text={"--Select One --"}
            />
          </div>
          <div className="mt-14 ml-5">
            <Enterbutton text={"Submit"} />
          </div>
        </div>
      </div>
    </div>
  );
};

export default Scholarships;
