import React from "react";

const InputField3 = ({ value, onChange, text, icon, type }) => {
  return (
    <div>
      <div>
        <div className="relative flex flex-row w-full justify-items-center">
          <input
            style={{ fontSize: "20px" }}
            className=" bg-transparent placeholder-coolGray border-coolGray border-2 px-14 rounded-md   pr-16 py-3 "
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

export default InputField3;
