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
              <div className="text-28 mt-2 ml-5 font-bold">University Name</div>
              <div className="flex flex-col gap-5">
                <div className="grid grid-cols-3   ">
                  <div className="mt-4 ml-4">
                    <img className="w-10 h-10" src={User} />
                  </div>
                  <div className="mt-7">
                    <div className="text-21 font-bold">Students</div>
                  </div>
                  <div className="mt-6">
                    <div className="text-21 font-bold">XXXXX</div>
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
                    <div className="text-21 font-bold">XXXXX</div>
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
                    <div className="text-21 font-bold">XXXXX</div>
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
      <div className="mt-16">
        <div className="text-48 font-bold text-primary  text-center">
          Insights
        </div>
      </div>
      <div className="grid grid-cols-2 gap-2">
        <div>
          <div className="text-primary mb-2 text-21">Gender</div>
          <Dropdowncomponent
            change={Agency}
            setchange={setAgency}
            arr={arr}
            text={"--Select One --"}
          />
        </div>
        <div>
          <div className="text-primary mb-2 text-21">Category</div>
          <Dropdowncomponent
            change={Agency}
            setchange={setAgency}
            arr={arr}
            text={"--Select One --"}
          />
        </div>
      </div>
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <div className="grid grid-cols-2 gap-2">
        <div>
          <div className="text-primary mb-2 text-21">Income</div>
          <Dropdowncomponent
            change={Agency}
            setchange={setAgency}
            arr={arr}
            text={"--Select One --"}
          />
        </div>
        <div>
          <div className="text-primary mb-2 text-21">Grades</div>
          <Dropdowncomponent
            change={Agency}
            setchange={setAgency}
            arr={arr}
            text={"--Select One --"}
          />
        </div>
      </div>
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <div className="grid grid-cols-2 gap-2">
        <div>
          <div className="text-primary mb-2 text-21">Education Level</div>
          <Dropdowncomponent
            change={Agency}
            setchange={setAgency}
            arr={arr}
            text={"--Select One --"}
          />
        </div>
        <div>
          <div className="text-primary mb-2 text-21">Stream</div>
          <Dropdowncomponent
            change={Agency}
            setchange={setAgency}
            arr={arr}
            text={"--Select One --"}
          />
        </div>
      </div>
      <br />
      <br />
      <div className="bg-hcolor border-2 border-hcolor">
        <TableContainer>
          <Table>
            <TableHead className="bg-coolGray">
              <TableCell>#</TableCell>
              <TableCell align="center">State</TableCell>
              <TableCell align="center">Female</TableCell>
              <TableCell align="center">Male</TableCell>
              <TableCell align="center">Total</TableCell>
            </TableHead>

            <TableBody>
              <TableRow
                style={{ cursor: "pointer" }}
                //  onClick={(e) => GoToEdit(row.id)}
              >
                <TableCell component="th" scope="row">
                  1
                </TableCell>

                <TableCell align="center">wkjaesdfhskjad</TableCell>
                <TableCell align="center">wkjaesdfhskjad</TableCell>
                <TableCell align="center">wkjaesdfhskjad</TableCell>
                <TableCell align="center">wkjaesdfhskjad</TableCell>
              </TableRow>
              <TableRow
                style={{ cursor: "pointer" }}
                //  onClick={(e) => GoToEdit(row.id)}
              >
                <TableCell component="th" scope="row">
                  1
                </TableCell>

                <TableCell align="center">wkjaesdfhskjad</TableCell>
                <TableCell align="center">wkjaesdfhskjad</TableCell>
                <TableCell align="center">wkjaesdfhskjad</TableCell>
                <TableCell align="center">wkjaesdfhskjad</TableCell>
              </TableRow>
            </TableBody>
          </Table>
        </TableContainer>
      </div>
      <br />
      <br />
      <br />
      <br />
    </div>
  );
};

export default Dashboardpage;
