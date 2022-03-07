import React from "react";

const Enterbutton = ({ text }) => {
  return (
    <button className="w-100 transition transform  ease-in-out delay-150 hover:translate-y-1 duration-300 bg-primary px-16 rounded-full  py-4 text-21 shadow-blue-900 shadow-md text-center text-white ">
      {text}
    </button>
  );
};

export default Enterbutton;
