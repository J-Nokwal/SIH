import React from "react";
import TableHead from "@material-ui/core/TableHead";
import TableRow from "@material-ui/core/TableRow";
import TableCell from "@material-ui/core/TableCell";
import TableContainer from "@material-ui/core/TableContainer";
import TableBody from "@material-ui/core/TableBody";
import { Table } from "@material-ui/core";
import Addicon from "../../../../assets/Addicon.svg";
const User = () => {
  return (
    <div>
      <div className="flex flex-row gap-128">
        <div className="text-24 font-bold">Users</div>
        <div className="cursor-pointer">
          <div className="flex flex-row gap-2 mt-4">
            <div className="text-16 text-primary">Add/Create User</div>
            <div>
              <img className="w-5 h-5 mt-1" src={Addicon} />
            </div>
          </div>
        </div>
      </div>
      <div className="bg-hcolor border-2  border-hcolor mt-5">
        <TableContainer>
          <Table>
            <TableHead className="bg-coolGray">
              <TableCell>#</TableCell>
              <TableCell align="center">User</TableCell>
              <TableCell align="center">Email</TableCell>
              <TableCell align="center">Password</TableCell>
            </TableHead>

            <TableBody>
              <TableRow
                style={{ cursor: "pointer" }}
                //  onClick={(e) => GoToEdit(row.id)}
              >
                <TableCell component="th" scope="row">
                  1
                </TableCell>

                <TableCell align="center">Pranav</TableCell>
                <TableCell align="center">Pranav@thapar.edu</TableCell>
                <TableCell align="center">*******</TableCell>
              </TableRow>
              <TableRow
                style={{ cursor: "pointer" }}
                //  onClick={(e) => GoToEdit(row.id)}
              >
                <TableCell component="th" scope="row">
                  2
                </TableCell>

                <TableCell align="center">Harsh</TableCell>
                <TableCell align="center">harsh@thapar.edu</TableCell>

                <TableCell align="center">*******</TableCell>
              </TableRow>
            </TableBody>
          </Table>
        </TableContainer>
      </div>
    </div>
  );
};

export default User;
