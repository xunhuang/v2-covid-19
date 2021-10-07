import { TextField } from '@mui/material';
import Autocomplete from '@mui/material/Autocomplete';
import React from 'react';
import { useHistory } from 'react-router-dom';

import { useSearchBarDataQuery } from './generated/graphql';

export const AppSearchBar = () => {
  const { data, loading } = useSearchBarDataQuery();
  const history = useHistory();
  if (loading) {
    return (
      <Autocomplete
        disablePortal
        id="combo-box-demo"
        options={[{ label: "hello" }, { label: "world" }]}
        // sx={{ width: 300 }}
        renderInput={(params) => (
          <TextField {...params} label="Search for County or State" />
        )}
      />
    );
  }

  const counties = data?.counties?.nodes.map((county) => {
    return {
      label: `${county?.countyName},${county?.state?.statePostalAbbreviation}(${county?.confirmedCases})`,
      county_fips_code: county?.countyFipsCode,
      state_fips_code: null,
      confirmed: county?.confirmedCases,
    };
  });

  const states = data?.states?.nodes.map((state) => {
    return {
      label: `${state?.stateName}(${state?.confirmedCases})`,
      county_fips_code: null,
      state_fips_code: state?.stateFipsCode,
      confirmed: state?.confirmedCases,
    };
  });

  const list = [...counties!, ...states!].sort(
    (a, b) => b.confirmed! - a.confirmed!
  );

  return (
    <Autocomplete
      disablePortal
      id="combo-box-demo"
      options={list}
      renderInput={(params) => (
        <TextField {...params} label="Search for County or State" />
      )}
      onChange={(e, v) => {
        if (v?.county_fips_code) {
          history.push(`/county/${v?.county_fips_code}`);
        }
        if (v?.state_fips_code) {
          history.push(`/state/${v?.state_fips_code}`);
        }
      }}
    />
  );
};
