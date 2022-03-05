import GovtUpdates from "./GovtUpdates/GovtUpdates";
import QRcode from "./QRcode/QRcode";
import Updates from "./Updates/Updates";

const routes = [
  {
    path: "/Govtupdates",
    component: GovtUpdates,
    layout: "/student",
  },
  {
    path: "/login",
    component: QRcode,
    layout: "/student",
  },

  {
    path: "/updates",

    component: Updates,
    layout: "/student",
  },
];
export default routes;
