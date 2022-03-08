import Dashboardpage from "./Dashboard/Dashboardpage";
import LoginPage from "./LoginPage/LoginPage";
import Dashnboardicon from "../../../assets/dashboardicon.svg";
import Opricon from "../../../assets/opricon.svg";
import Applicationicon from "../../../assets/applicationicon.svg";
import Scholarships from "./Scholarships/Scholarships";
import Opportunities from "./Opportunities/Opportunities";
import Opportunitiesedit from "./Opportunities/Opportunitiesedit";
const routes = [
  {
    path: "/",
    name: "Dashboard",
    icon: Dashnboardicon,
    component: Dashboardpage,
    layout: "/govt",
  },
  {
    path: "/opportunities",
    name: "Create Announcement and Opportunities",
    icon: Opricon,
    component: Scholarships,
    layout: "/govt",
  },

  {
    path: "/applicants",
    name: "Recent Posts and Applicants",
    icon: Applicationicon,
    component: Opportunities,
    layout: "/govt",
  },
  {
    path: "/applicants/:id",

    component: Opportunitiesedit,
    layout: "/govt",
  },
];
export default routes;
