import { Link, useHistory } from "react-router-dom";
import { useState, useEffect } from "react";
import { makeStyles } from "@material-ui/core/styles";
import Drawer from "@material-ui/core/Drawer";
import List from "@material-ui/core/List";
import ListItem from "@material-ui/core/ListItem";
import "./dashboard-sidebar.css";
// load jwt library

// import { capitalizeFirstLetter } from '../../../utils/formatUtils';
const drawerWidth = 250;
// your private SSO key

const useStyles = makeStyles((theme) => ({
  root: {
    display: "flex",
    "& .MuiDrawer-paper": {
      width: "250px",
      position: "relative",
    },
    "& .MuiDrawer-paperAnchorDockedLeft": {
      borderBottom: "1px",
      borderColor: "#F4F5F7",
    },
    "& .MuiDrawer-paperAnchorDockedLeft": {
      border: "0.5px solid #F4F5F7",
    },
  },
  drawer: {
    width: drawerWidth,
    flexShrink: 0,
    backgroundColor: "#F3F2FC",
  },
  drawerPaper: {
    width: drawerWidth,
    backgroundColor: "white",
  },
  // necessary for content to be below app bar
  toolbar: theme.mixins.toolbar,
  content: {
    flexGrow: 1,
    backgroundColor: theme.palette.background.default,
    padding: theme.spacing(3),
  },
}));

export default function DashboardSidebar({
  routes,
  className,
  current = 1,
  currentsub = 1,
  editProfile = "/d/startup/edit-profile/companybio",
}) {
  // console.log(current, currentsub);
  // const user = useAuth();
  // const name = user?.name?.split(' ')[0];

  // window.document.addEventListener('sleek:init', () => {
  // 	console.log('token1')
  // 	$sleek.setUser({
  // 		token: token1,
  // 		mail: user.email,
  // 		id: user.id,
  // 		name: user.name,
  // 		img: user.profileImage,
  // 		weight: 4

  // 	});
  // }, false);
  // $sleek.setUser({
  // 	token: token1,
  // 	mail: user.email,
  // 	id: user.id,
  // 	name: user.name,
  // 	img: user.profileImage,
  // 	weight: 4
  // });
  // window.open(`https://feedback.duedash.com/?sso=${token1}`, '_blank')

  const history = useHistory();

  const classes = useStyles();
  const [items, setSidebarItems] = useState([
    {
      index: 1,
      title: "Dashboard",
      path: "/d/startup/company-overview",
      isActive: current === 1,
      isOpen: current === 1,
      icon: "DashboardInactive",
      isGrey: false,
      children: [
        {
          index: 1,
          title: "Overview",
          path: "/d/startup/company-overview",
          isActive: currentsub === 1,
        },
        {
          index: 2,
          title: "Metrics",
          path: "/d/startup/company-financials",
          isActive: currentsub === 2,
        },
        {
          index: 3,
          title: "Market",
          path: "/d/startup/company-competition",
          isActive: currentsub === 3,
        },
        {
          index: 4,
          title: "Technology",
          path: "/d/startup/company-technology",
          isActive: currentsub === 4,
        },
        {
          index: 5,
          title: "Team",
          path: "/d/startup/company-competition-members",
          isActive: currentsub === 5,
        },
        // {
        // 	index: 6,
        // 	title: 'Data room',
        // 	path: '/d/startup/data-room/',
        // 	isActive: currentsub === 6,
        // },
      ],
    },

    {
      index: 2,
      title: "Edit profile",
      path: "/d/startup/edit-profile/companybio",
      isActive: current === 2,
      isOpen: 0,
      icon: "editProfile",
      isGrey: false,
    },
    {
      index: 3,
      title: "Improve SIQ",
      path: "/d/startup/siqpage",
      isActive: current === 8,
      isOpen: 0,
      icon: "tendingUp",
      isGrey: false,
    },
    {
      index: 4,
      title: "Data room",
      path: "/d/startup/data-room/",
      isActive: current === 3,
      isOpen: 0,
      icon: "dataRoomIcon",
      isGrey: false,
    },
    {
      index: 5,
      title: "Pipeline",
      path: "/d/startup/pipeline",
      isActive: current === 4,
      isOpen: 0,
      icon: "pipelineinactive",
      isGrey: false,
    },
    // {
    // 	index: 4,
    // 	title: 'Data Vault',
    // 	path: '/',
    // 	isActive: current === 4,
    // 	icon: 'DataVaultv2Inactive',
    // 	isGrey: false,
    // },
    // {
    // 	index: 5,
    // 	title: 'Startups',
    // 	path: '/',
    // 	isActive: current === 5,
    // 	icon: 'rocketinactive',
    // 	isGrey: false,
    // },
    {
      index: 6,
      title: "Investors",
      path: "/d/startup/search",
      isActive: current === 5,
      isOpen: 0,
      icon: "investorStartupSearch",
      isGrey: false,
    },
    {
      index: 7,
      title: "Messages",
      path: "/d/startup/message",
      isActive: current === 6,
      isOpen: 0,
      icon: "Message",
      isGrey: false,
    },
    {
      index: 8,
      title: "Support",
      path: "/help",
      isActive: current === 7,
      isOpen: 0,
      icon: "supportinactive",
      isGrey: false,
    },
    // {
    // 	index: 6,
    // 	title: 'Community',
    // 	path: '/',
    // 	isActive: current === 6,
    // 	icon: 'CommunityInactive',
    // 	isGrey: false,
    // },
  ]);

  const handleClickDropdown = (id) => {
    let olditems = [...items];
    olditems.map((item) => {
      if (item.index === id) {
        var oldstate = item.isOpen;
        oldstate = !oldstate;
        item.isOpen = oldstate;
      } else {
        var oldstate = item.isOpen;
        oldstate = false;
        item.isOpen = oldstate;
      }
    });
    setSidebarItems(olditems);
  };

  return (
    <div>
      <Drawer
        className={classes.drawer}
        variant="permanent"
        classes={{
          paper: classes.drawerPaper,
        }}
        anchor="left"
      >
        <div className="text-28 font-bold mt-4 ml-5 text-primary">
          Chitragupta
        </div>

        <div className="mt-10 mb-2">
          <List>
            {routes?.map((item) => {
              if (item.icon) {
                return (
                  <div key={item.path}>
                    <ListItem>
                      <div className="flex items-center py-1 w-full">
                        <div className="flex-grow mx-1 my-2">
                          <div className="flex items-center space-x-2 ">
                            <Link to={item.layout + item.path}>
                              {/*           <CustomIcon
                            name={item.icon}
                            size="small"
                            className="h-5"
            />*/}
                              <img
                                style={{
                                  "&hover": {
                                    color: "blue",
                                  },
                                }}
                                className="w-8 h-8"
                                src={item?.icon}
                              />
                            </Link>
                            <h1 className="hover:text-primary">
                              <Link to={item.layout + item.path}>
                                {item?.name}
                              </Link>
                            </h1>
                          </div>
                        </div>
                      </div>
                    </ListItem>
                  </div>
                );
              }
            })}
          </List>
        </div>
        {/* <div className="pb-2 pt-52">
					<div className="inline-flex px-4">
						<CustomIcon
							name="settingsinactive"
							size="small"
							className="self-center mr-2 h-5"
						/>
						<h1
							
						>
							Settings
						</h1>
					</div>
				</div> */}
      </Drawer>
    </div>
  );
}
