import React, { useState, useEffect } from "react";

import { makeStyles } from "@material-ui/core/styles";
import Avatar from "@material-ui/core/Avatar";
// import { makeStyles } from '@material-ui/core/styles';

import Menu from "@material-ui/core/Menu";
import MenuItem from "@material-ui/core/MenuItem";
import notificationicon from "../../assets/notification.svg";
import messageicon from "../../assets/message.svg";
import { useHistory } from "react-router-dom";
import Searchicon from "../../assets/Searchicon.svg";

import { Link } from "react-router-dom";
import { useLocation } from "react-router-dom";
import InputField2 from "../InputField/InputField2";
const icons = ["user", "Billing", "group", "feedback", "logout"];
const options = ["Account", "Billing", "Team", "Feedback", "Logout"];

// const icons = ['user', 'group', 'feedback', 'logout'];
// const options = ['Account', 'Team', 'Feedback', 'Logout'];

const useStyles = makeStyles((theme) => ({
  root: {
    display: "flex",
    "& > *": {
      margin: theme.spacing(1),
    },
  },
  menu: {
    "& .MuiMenuItem-root": {
      margin: "auto",
      color: "#8493A8",
      width: "400px",
    },
  },
  small: {
    width: theme.spacing(4),
    height: theme.spacing(4),
  },
  large: {
    width: theme.spacing(5),
    height: theme.spacing(5),
    // color: theme.palette.getContrastText(deepOrange[500]),
    // backgroundColor: deepOrange[500],
    // marginLeft: theme.spacing(2),
  },
}));

export default function DashboardHeader({ name, profileImage }) {
  const history = useHistory();
  const classes = useStyles();

  const companyId = localStorage.getItem("currentCompany");
  const userId = localStorage.getItem("userId");
  const compId = localStorage.getItem("currentCompany");
  const [notifications, setnotifications] = useState([]);
  const [sidebar, setSidebar] = useState(false);
  const [anchorEl1, setAnchorEl1] = React.useState(null);
  const [count, setcount] = useState(0);
  const open1 = Boolean(anchorEl1);
  const [countmess, setcountmess] = useState(0);
  const [clickk, setclickk] = useState(false);
  const location = useLocation();

  const handleDotClick1 = (event) => {
    setclickk(!clickk);

    setAnchorEl1(event.currentTarget);
  };

  const handleDotClose1 = () => {
    setAnchorEl1(null);
  };
  const handleclick = () => {
    var cur = sidebar;
    setSidebar(!cur);
  };

  // console.log(profileImage, name);
  //const [isLoading, setIsLoading] = useState(false);
  const [sharechange, setsharechange] = useState(false);
  const [anchorEl, setAnchorEl] = React.useState(null);
  const open = Boolean(anchorEl);

  const handleDotClick = (event) => {
    setAnchorEl(event.currentTarget);
  };

  const handleDotClose = () => {
    setAnchorEl(null);
  };
  const [anchorEl2, setAnchorEl2] = React.useState(null);
  const open2 = Boolean(anchorEl2);
  const [copyText, setCopyText] = useState("");
  const [title, setittle] = useState("");
  const [desc, setdesc] = useState("");
  const [fundinground, setfundinground] = useState("");
  const type = localStorage.getItem("type");
  const typeInv = localStorage.getItem("investorType");
  const [message, setmessage] = useState("");

  const handleDotClick2 = async (event) => {
    setsharechange(!sharechange);
    setAnchorEl2(event.currentTarget);
  };

  const handleDotClose2 = () => {
    setAnchorEl2(null);
  };

  const handleItemSelect = (event) => {
    const { myValue } = event.currentTarget.dataset;
    switch (myValue) {
      case "0":
        //history.push("/d/startup/profile");
        break;
      case "1":
        //history.push("/d/startup/billing");
        break;
      case "2":
        //history.push("/d/startup/team");
        break;
      case "3":
        //integrateSso(user);
        break;
      case "4":
        localStorage.clear();
        //history.replace("/");
        break;
      default:
        break;
    }

    setAnchorEl(null);
  };

  return (
    <div className="w-full border-b border-F4F5F7  bg-hcolor">
      <div className="  px-6 py-6 w-full  inline-flex justify-between">
        <InputField2 type="text" text={"Quick Search"} icon={Searchicon} />

        <div className="inline-flex items-center">
          <div>
            {/* <CustomInputSearch
							className="h-8 md:h-10"
							placeholder="Quick search"
						/> */}
          </div>
        </div>
        <div>
          <div className="pl-2 md:px-4">
            <Link to="/d/startup/message">
              {countmess > 0 ? (
                <span
                  style={{
                    color: "white",
                    backgroundColor: "#FFC13D",
                    position: "absolute",
                    top: "23px",

                    borderRadius: "50%",

                    textAlign: "center",
                    width: "25px",
                    height: "25px",
                    right: "130px",
                  }}
                >
                  {countmess}
                </span>
              ) : null}
            </Link>
          </div>

          <div className="pl-2 md:px-4">
            {count > 0 ? (
              <span
                style={{
                  color: "white",
                  backgroundColor: "#FFC13D",
                  position: "absolute",
                  top: "23px",
                  textAlign: "center",
                  width: "25px",
                  height: "25px",
                  borderRadius: "50%",
                  marginLeft: "15px",
                }}
              >
                {count}
              </span>
            ) : null}
          </div>
          {/*
          <div className="relative">
            <Menu
              style={{
                position: "absolute",
                top: "46px",
                left: "-18px",
                overflow: "hidden",
              }}
              id="long-menu"
              anchorEl={anchorEl1}
              keepMounted
              open={open1}
              className={classes.menu}
              onClose={handleDotClose1}
              PaperProps={{
                style: {
                  // maxHeight: ITEM_HEIGHT * 4.5,
                  overflow: "hidden",
                  width: "390px",
                  padding: "0px ",
                },
              }}
              disableScrollLock={true}
            >
              <Notifications
                notifications={notifications}
                setnotifications={setnotifications}
                setAnchorEl={setAnchorEl1}
                count={count}
                anchorEl1={anchorEl1}
                clickk={clickk}
              />
            </Menu>
            </div>*/}

          {/* <div className="pl-2 md:px-4">
						<CustomIcon name="messagesinactive" style={{ height: '24px' }} />
					</div> */}
          <div className="pl-2 md:pl-4 mt-3 flex flex-row gap-5 ">
            <img
              src={messageicon}
              className="w-6 h-6 "
              style={{ marginTop: "5px" }}
            />
            <img
              src={notificationicon}
              className="w-6 h-6 "
              style={{ marginTop: "5px" }}
            />

            <div className="my-auto cursor-pointer" onClick={handleDotClick}>
              {name === "" ? (
                <Avatar className="animate-pulse bg-shimmercolor" />
              ) : (
                <Avatar
                  className={classes.small}
                  alt={name}
                  //src={` ${env[process.env.NODE_ENV].s3Url}` + profileImage}
                ></Avatar>
              )}
            </div>
            {/* ********************* 3 Dot Menu *************************** */}
            <div className="relative">
              <Menu
                style={{ position: "absolute", top: "46px", left: "-18px" }}
                id="long-menu"
                anchorEl={anchorEl}
                keepMounted
                open={open}
                className={classes.menu}
                onClose={handleDotClose}
                PaperProps={{
                  style: {
                    // maxHeight: ITEM_HEIGHT * 4.5,
                    width: "20ch",
                    padding: "0px ",
                  },
                }}
                disableScrollLock={true}
              >
                {options.map((option, _id) => (
                  <div className="inline-flex" key={_id}>
                    <MenuItem
                      key={option}
                      data-my-value={_id}
                      // selected={option === 'Make Owner'}
                      onClick={handleItemSelect}
                    >
                      {/*  <Icon
                        className="mr-2 text-gray"
                        name={icons[_id]}
                        size="bigger"
                    />*/}
                      <span className="font-sans my-2 text-16">{option}</span>
                    </MenuItem>
                  </div>
                ))}
              </Menu>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
