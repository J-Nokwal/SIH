import React from "react";

const MainButton = ({ text }) => {
  return (
    <button className="w-100 bg-newblue px-20 rounded-md py-3 text-center text-primary ">
      {text}
    </button>
  );
};

export default MainButton;
