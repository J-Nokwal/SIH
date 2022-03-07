import React from "react";

const InputField = ({ value, onChange, text, icon }) => {
  return (
    <div>
      <div>
        <div className="relative flex flex-row w-full justify-items-center">
          <img
            className="absolute w-7 h-7 left-6 top-3 flex justify-items-center "
            src={icon}
          />

          <input
            style={{ fontSize: "20px" }}
            className=" bg-input placeholder-white px-16 rounded-md   pr-16 py-3 "
            placeholder={text}
            value={value}
            onChange={onChange}
          />
        </div>
      </div>
    </div>
  );
};

export default InputField;
