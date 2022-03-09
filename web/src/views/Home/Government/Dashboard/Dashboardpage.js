import React, { useState, useEffect } from "react";
import Dashboardpagenew from "../../../../assets/DashboardPage.png";
import User from "../../../../assets/User.svg";
import Institution from "../../../../assets/institute.svg";
import City from "../../../../assets/city.svg";
import Dropdowncomponent from "../../../../components/Dropdown/Dropdown-component";
import TableHead from "@material-ui/core/TableHead";
import TableRow from "@material-ui/core/TableRow";
import TableCell from "@material-ui/core/TableCell";
import TableContainer from "@material-ui/core/TableContainer";
import TableBody from "@material-ui/core/TableBody";
import axios from "axios";
import { Table } from "@material-ui/core";
const Dashboardpage = () => {
  const arr = ["ten", "twenty", "thrity", "fourty", "fifty"];
  const Gen = ["Male", "Female", "Other"];
  const Incomes = ["50K", "20K", "1Lakh"];
  const Grades = ["5-6", "6-7", "7-8", "8-9", "9-10"];
  const edlevel = ["Undergraduate", "Postgraduate"];
  const Categories = ["GEN", "OBC", "SC"];
  const Streams = ["CSE", "ECE", "MEC"];
  const [grades, setgrades] = useState("");
  const [gender, setgender] = useState("");
  const [cat, setcat] = useState("");
  const [income, setincome] = useState("");
  const [edu, setedu] = useState("");
  const [stream, setstream] = useState("");
  const [instlength, setinstlength] = useState("");
  const [studlength, setstudlenght] = useState("");
  const [statelength, setstatelength] = useState("");
  const [students, setstudents] = useState([
    { state: "10", female: "200", male: "500", total: "700" },
    { state: "7", female: "100", male: "400", total: "500" },
  ]);

  useEffect(() => {
    const token = localStorage.getItem("token");

    axios
      .get("http://13.232.59.144/api/dashboard/govtInsights", {
        headers: { authorization: `${token}` },
        params: {},
      })
      .then((res) => {
        console.log(res.data);
        if (!res.data.error) {
          setinstlength(res.data.data.instituteCount);
          setstatelength(res.data.data.stateCount);
          setstudlenght(res.data.data.studentCount);
        }
        //setstudents(res.data.results);
      })
      .catch((err) => {
        console.log(err);
      });
    if (cat == "GEN") {
      setstudents([
        { state: "10", female: "150", male: "300", total: "450" },
        { state: "7", female: "80", male: "150", total: "230" },
      ]);
    }
    if (cat == "OBC") {
      setstudents([
        { state: "10", female: "30", male: "100", total: "130" },
        { state: "7", female: "10", male: "100", total: "110" },
      ]);
    }

    if (cat == "SC") {
      setstudents([
        { state: "10", female: "20", male: "100", total: "120" },
        { state: "7", female: "10", male: "150", total: "160" },
      ]);
    }
    if (grades == "5-6") {
      setstudents([
        { state: "10", female: "30", male: "120", total: "150" },
        { state: "7", female: "10", male: "190", total: "200" },
      ]);
    }
    if (grades == "6-7") {
      setstudents([
        { state: "10", female: "10", male: "100", total: "110" },
        { state: "7", female: "30", male: "180", total: "210" },
      ]);
    }
    if (grades == "8-9") {
      setstudents([
        { state: "10", female: "10", male: "140", total: "150" },
        { state: "7", female: "5", male: "130", total: "135" },
      ]);
    }
    if (grades == "9-10") {
      setstudents([
        { state: "10", female: "40", male: "150", total: "190" },
        { state: "7", female: "25", male: "120", total: "145" },
      ]);
    }
    if (edu == "Undergraduate") {
      setstudents([
        { state: "10", female: "50", male: "160", total: "210" },
        { state: "7", female: "30", male: "90", total: "120" },
      ]);
    }
    if (edu == "Postgraduate") {
      setstudents([
        { state: "10", female: "20", male: "130", total: "150" },
        { state: "7", female: "10", male: "50", total: "60" },
      ]);
    }
    if (stream == "CSE") {
      setstudents([
        { state: "10", female: "150", male: "300", total: "450" },
        { state: "7", female: "80", male: "150", total: "230" },
      ]);
    }
    if (stream == "ECE") {
      setstudents([
        { state: "10", female: "30", male: "100", total: "130" },
        { state: "7", female: "10", male: "100", total: "110" },
      ]);
    }
    if (stream == "MEC") {
      setstudents([
        { state: "10", female: "20", male: "100", total: "120" },
        { state: "7", female: "10", male: "150", total: "160" },
      ]);
    }
    if (income == "20K") {
      setstudents([
        { state: "10", female: "20", male: "100", total: "120" },
        { state: "7", female: "10", male: "150", total: "160" },
      ]);
    }
    if (income == "50K") {
      setstudents([
        { state: "10", female: "120", male: "140", total: "260" },
        { state: "7", female: "30", male: "140", total: "170" },
      ]);
    }
    if (income == "1Lakh") {
      setstudents([
        { state: "10", female: "30", male: "130", total: "160" },
        { state: "7", female: "10", male: "100", total: "110" },
      ]);
    }
  }, [grades, gender, cat, income, edu, stream]);

  return (
    <div>
      <div>
        <div className="grid grid-cols-2">
          <div>
            <div className="bg-hcolor w-520 h-262">
              <div className="flex flex-col gap-5">
                <div className="grid grid-cols-3   ">
                  <div className="mt-4 ml-4">
                    <img className="w-10 h-10" src={User} />
                  </div>
                  <div className="mt-7">
                    <div className="text-21 font-bold">Students</div>
                  </div>
                  <div className="mt-6">
                    <div className="text-21 font-bold">{studlength}</div>
                  </div>
                </div>
                <div className="grid grid-cols-3   ">
                  <div className="mt-4 ml-4">
                    <img className="w-10 h-10" src={Institution} />
                  </div>
                  <div className="mt-6">
                    <div className="text-21 font-bold">Institutions</div>
                  </div>
                  <div className="mt-6">
                    <div className="text-21 font-bold">{instlength}</div>
                  </div>
                </div>
                <div className="grid grid-cols-3   ">
                  <div className="mt-4 ml-4">
                    <img className="w-10 h-10" src={City} />
                  </div>
                  <div className="mt-6">
                    <div className="text-21 font-bold">States</div>
                  </div>
                  <div className="mt-6">
                    <div className="text-21 font-bold">3</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div className="ml-124">
            <img src={Dashboardpagenew} />
          </div>
        </div>
      </div>
      <div className="mt-16">
        <div className="text-48 font-bold text-primary  text-center">
          Insights
        </div>
      </div>
      <div className="grid grid-cols-3 gap-2">
        <div>
          <div className="text-primary mb-2 text-21">Gender</div>
          <Dropdowncomponent
            change={gender}
            setchange={setgender}
            arr={Gen}
            text={"--Select One --"}
          />
        </div>
        <div>
          <div className="text-primary mb-2 text-21">Category</div>
          <Dropdowncomponent
            change={cat}
            setchange={setcat}
            arr={Categories}
            text={"--Select One --"}
          />
        </div>
        <div>
          <div className="text-primary mb-2 text-21">Income</div>
          <Dropdowncomponent
            change={income}
            setchange={setincome}
            arr={Incomes}
            text={"--Select One --"}
          />
        </div>
      </div>
      <br />
      <div className="grid grid-cols-3 gap-2">
        <div>
          <div className="text-primary mb-2 text-21">Grades</div>
          <Dropdowncomponent
            change={grades}
            setchange={setgrades}
            arr={Grades}
            text={"--Select One --"}
          />
        </div>
        <div>
          <div className="text-primary mb-2 text-21">Education Level</div>
          <Dropdowncomponent
            change={edu}
            setchange={setedu}
            arr={edlevel}
            text={"--Select One --"}
          />
        </div>
        <div>
          <div className="text-primary mb-2 text-21">Stream</div>
          <Dropdowncomponent
            change={stream}
            setchange={setstream}
            arr={Streams}
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
      <div className="bg-hcolor border-2 border-hcolor">
        <TableContainer>
          <Table>
            <TableHead className="bg-coolGray">
              <TableCell align="center">State</TableCell>
              {gender == "Female" ? (
                <TableCell align="center">Female</TableCell>
              ) : gender == "Male" ? (
                <TableCell align="center">Male</TableCell>
              ) : (
                <>
                  <TableCell align="center">Female</TableCell>
                  <TableCell align="center">Male</TableCell>
                </>
              )}
              <TableCell align="center">Total</TableCell>
            </TableHead>

            <TableBody>
              {students?.map((e) => (
                <TableRow
                  style={{ cursor: "pointer" }}
                  //  onClick={(e) => GoToEdit(row.id)}
                >
                  <TableCell align="center">{e.state}</TableCell>
                  {gender == "Female" ? (
                    <TableCell align="center">{e.female}</TableCell>
                  ) : gender == "Male" ? (
                    <TableCell align="center">{e.male}</TableCell>
                  ) : (
                    <>
                      <TableCell align="center">{e.female}</TableCell>
                      <TableCell align="center">{e.male}</TableCell>
                    </>
                  )}

                  <TableCell align="center">{e.total}</TableCell>
                </TableRow>
              ))}
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
