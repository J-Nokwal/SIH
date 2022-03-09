import React, { useState } from "react";
import Dashboardpagenew from "../../../../assets/Dashboarduni.png";
import User from "../../../../assets/User.svg";
import Institution from "../../../../assets/institute.svg";
import City from "../../../../assets/city.svg";
import Dropdowncomponent from "../../../../components/Dropdown/Dropdown-component";
import TableHead from "@material-ui/core/TableHead";
import TableRow from "@material-ui/core/TableRow";
import TableCell from "@material-ui/core/TableCell";
import TableContainer from "@material-ui/core/TableContainer";
import TableBody from "@material-ui/core/TableBody";
import { Table } from "@material-ui/core";
const Dashboardpage = () => {
  const arr = ["ten", "twenty", "thrity", "fourty", "fifty"];
  const [Agency, setAgency] = useState("");
  return (
    <div>
      <div>
        <div className="grid grid-cols-2">
          <div>
            <div className="bg-hcolor w-520 h-262">
              <div className="text-28 mt-2 ml-5 font-bold">
                Thapar University
              </div>
              <div className="flex flex-col gap-5">
                <div className="grid grid-cols-3   ">
                  <div className="mt-4 ml-4">
                    <img className="w-10 h-10" src={User} />
                  </div>
                  <div className="mt-7">
                    <div className="text-21 font-bold">Students</div>
                  </div>
                  <div className="mt-6">
                    <div className="text-21 font-bold">10</div>
                  </div>
                </div>
                <div className="grid grid-cols-3   ">
                  <div className="mt-4 ml-4">
                    <img className="w-10 h-10" src={Institution} />
                  </div>
                  <div className="mt-6">
                    <div className="text-21 font-bold">Female</div>
                  </div>
                  <div className="mt-6">
                    <div className="text-21 font-bold">3</div>
                  </div>
                </div>
                <div className="grid grid-cols-3   ">
                  <div className="mt-4 ml-4">
                    <img className="w-10 h-10" src={City} />
                  </div>
                  <div className="mt-6">
                    <div className="text-21 font-bold">Male</div>
                  </div>
                  <div className="mt-6">
                    <div className="text-21 font-bold">7</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div className="ml-124">
            <img className="h-262 w-400" src={Dashboardpagenew} />
          </div>
        </div>
      </div>

      <br />
      <br />
      <br />
      <br />
    </div>
  );
};

export default Dashboardpage;
