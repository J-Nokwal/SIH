import React, { useState, useEffect } from "react";
import Dropdowncomponent from "../../../../components/Dropdown/Dropdown-component";
import Enterbutton from "../../../../components/Buttons/mainbutton/Enterbutton";
import InputField3 from "../../../../components/InputField/InputField3";
import InputField4 from "../../../../components/InputField/InputField4";
import axios from "axios";
import { useHistory } from "react-router-dom";

const Scholarships = () => {
  const arr = [
    "Scholarship",
    "Grant",
    "Research Internship",
    "Project Internship",
    "Govt Internship",
    "Event",
    "Campus Placement",
    "Workshop",
    "Other",
  ];
  const [Agency, setAgency] = useState("");
  const Incomes = ["50K", "20K", "1Lakh"];
  const history = useHistory();
  const Gen = ["MALE", "FEMALE"];
  const Grades = ["5-6", "6-7", "7-8", "8-9", "9-10"];
  const edlevel = ["Undergraduate", "Postgraduate"];
  const Categories = ["GEN", "OBC", "SC", "ST", "GEN/EWS"];
  const Streams = ["CSE", "ECE", "MEC", "Civil", "CHEM"];
  const [grades, setgrades] = useState("");
  const [gender, setgender] = useState("");
  const [cat, setcat] = useState("");
  const [income, setincome] = useState("");
  const [edu, setedu] = useState("");
  const [stream, setstream] = useState("");
  const [instlength, setinstlength] = useState("");
  const [studlength, setstudlenght] = useState("");
  const [statelength, setstatelength] = useState("");
  const [org, setorg] = useState("");
  const [title, settitle] = useState("");
  const [description, setdescription] = useState("");
  const [amount, setamount] = useState(0);
  const HandleSubmit = async (e) => {
    //const token = localStorage.getItem("token");
    const token = localStorage.getItem("token");

    console.log(title, description, gender, cat, amount, Agency);
    var res = await axios.post(
      "http://13.232.59.144/api/opportunity/createOpportunity",
      {
        // title: "SC Girls Upliftment programme",
        // description: "SC Girls Upliftment programme",
        // applicationDeadline: "1646962735127",
        // criteriaFilter: {
        //   gender: "FEMALE",
        //   category: "SC",
        // },
        // applicants: [],
        // stipened: 25000,
        // type: "Internship",
        title: title,
        description: description,
        applicationDeadline: "1646962735127",
        criteriaFilter: {
          gender: gender,
          category: cat,
        },
        applicants: [],
        stipened: amount,
        type: Agency,
      },
      {
        headers: { authorization: token },
      }
    );

    console.log(res.data);
    if (!res.data.error) {
      history.push("/govt/applicants");
    } else {
    }
  };
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
              <InputField3
                text="Enter"
                value={org}
                onChange={(e) => setorg(e.target.value)}
                type="text"
              />
            </div>
          </div>
          <br />
          <div>
            <div className="text-primary mb-2 text-21">Title</div>
            <InputField3
              text="Enter"
              value={title}
              onChange={(e) => settitle(e.target.value)}
              type="text"
            />
          </div>

          <br />
          <div>
            <div className="text-primary mb-2 text-21">Description</div>
            <InputField4
              text=""
              value={description}
              onChange={(e) => setdescription(e.target.value)}
              type="text"
            />
          </div>
          <br />
          <div>
            <div className="text-primary mb-2 text-21">Amount</div>
            <InputField3
              text="Enter"
              type="number"
              value={amount}
              onChange={(e) => setamount(e.target.value)}
            />
          </div>
          <br />
          <div className="text-24 font-bold">Filters : (Not Compulsory)</div>
          <br />
          <div>
            <div className="text-primary mb-2 text-21">Category</div>
            <Dropdowncomponent
              change={cat}
              setchange={setcat}
              arr={Categories}
              text={"--Select One --"}
            />
          </div>
          <br />
          <div>
            <div className="text-primary mb-2 text-21">Gender</div>
            <Dropdowncomponent
              change={gender}
              setchange={setgender}
              arr={Gen}
              text={"--Select One --"}
            />
          </div>
          <br />
          <div>
            <div className="text-primary mb-2 text-21">Grades</div>
            <Dropdowncomponent
              change={grades}
              setchange={setgrades}
              arr={Grades}
              text={"--Select One --"}
            />
          </div>
          <br />
          <div>
            <div className="text-primary mb-2 text-21">Income</div>
            <Dropdowncomponent
              change={income}
              setchange={setincome}
              arr={Incomes}
              text={"--Select One --"}
            />
          </div>
          <br />
          <div>
            <div className="text-primary mb-2 text-21">Education Level</div>
            <Dropdowncomponent
              change={edu}
              setchange={setedu}
              arr={edlevel}
              text={"--Select One --"}
            />
          </div>
          <div className="mt-14 ml-5" onClick={HandleSubmit}>
            <Enterbutton text={"Submit"} />
          </div>
        </div>
      </div>
    </div>
  );
};

export default Scholarships;
