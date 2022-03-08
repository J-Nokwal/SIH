import Dashboardpage from "./Dashboard/Dashboardpage";
import LoginPage from "./LoginPage/LoginPage";
import Dashnboardicon from "../../../assets/dashboardicon.svg";
import Opricon from "../../../assets/opricon.svg";
import Applicationicon from "../../../assets/applicationicon.svg";
import Scholarships from "./Scholarships/Scholarships";
import Opportunities from "./Opportunities/Opportunities";
import Opportunitiesedit from "./Opportunities/Opportunitiesedit";
import Usericon from "../../../assets/User.svg";
import User from "./User/User";
const routes = [
  {
    path: "/",
    name: "Dashboard",
    icon: Dashnboardicon,
    component: Dashboardpage,
    layout: "/uni",
  },
  {
    path: "/opportunities",
    name: "Create Announcement and Opportunities",
    icon: Opricon,
    component: Scholarships,
    layout: "/uni",
  },

  {
    path: "/applicants",
    name: "Recent Posts and Applicants",
    icon: Applicationicon,
    component: Opportunities,
    layout: "/uni",
  },
  {
    path: "/newuser",
    name: "Create/Modify User",
    icon: Usericon,
    component: User,
    layout: "/uni",
  },
  {
    path: "/applicants/:id",

    component: Opportunitiesedit,
    layout: "/uni",
  },
];
export default routes;
