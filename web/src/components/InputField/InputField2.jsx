import React from "react";

const InputField2 = ({ value, onChange, text, icon, type }) => {
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
            className=" bg-white border-coolGray border-2 placeholder-coolGray px-16 rounded-md   pr-5 py-3 "
            placeholder={text}
            type={type}
            value={value}
            onChange={onChange}
          />
        </div>
      </div>
    </div>
  );
};

export default InputField2;
