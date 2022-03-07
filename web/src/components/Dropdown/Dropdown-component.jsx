import React from "react";
import Box from "@mui/material/Box";
import InputLabel from "@mui/material/InputLabel";
import MenuItem from "@mui/material/MenuItem";
import FormControl from "@mui/material/FormControl";
import Select from "@mui/material/Select";
const Dropdowncomponent = ({ text, arr, setchange, change }) => {
  const handleChange = (event) => {
    setchange(event.target.value);
  };

  return (
    <Box sx={{ minWidth: 380 }}>
      <FormControl fullWidth>
        <InputLabel id="demo-simple-select-label">{text}</InputLabel>
        <Select
          labelId="demo-simple-select-label"
          id="demo-simple-select"
          // MenuProps={{
          //   className: classes.menuclass,
          // }}
          value={change}
          label={text}
          onChange={handleChange}
        >
          {arr?.map((e) => (
            <MenuItem value={e}>{e}</MenuItem>
          ))}
        </Select>
      </FormControl>
    </Box>
  );
  return <div>Dropdown-component</div>;
};

export default Dropdowncomponent;
