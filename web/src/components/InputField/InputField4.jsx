import React from "react";

const InputField4 = ({ value, onChange, text, icon, type }) => {
  return (
    <div>
      <div>
        <div className="relative flex flex-row w-full justify-items-center">
          <textarea
            rows="4"
            cols="50"
            style={{ fontSize: "15px" }}
            className=" bg-transparent placeholder-coolGray border-2 border-coolGray px-6 rounded-md   pr-16 py-3 "
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

export default InputField4;
