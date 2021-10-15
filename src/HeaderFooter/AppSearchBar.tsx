import GpsFixedIcon from '@mui/icons-material/GpsFixed';
import { IconButton, InputAdornment, TextField } from '@mui/material';
import Autocomplete from '@mui/material/Autocomplete';
import React from 'react';
import { useHistory } from 'react-router-dom';

import { useSearchBarDataLazyQuery } from '../generated/graphql';
import { fetchPrecisePoliticalLocation } from '../GeoLocation';

export const AppSearchBar = () => {
  const [open, setOpen] = React.useState(false);
  const [runquery, { called, loading, data }] = useSearchBarDataLazyQuery();
  const history = useHistory();

  React.useEffect(() => {
    if (open) {
      // console.log("should fetch now");
      runquery();
    }
  }, [open, runquery]);

  if (!called || loading) {
    return (
      <Autocomplete
        disablePortal
        id="combo-box-demo"
        onOpen={() => {
          setOpen(true);
        }}
        options={[{ label: "loading" }]}
        renderInput={(params) => (
          <>
            <TextField
              {...params}
              label="Search for County or State"
              InputProps={{
                endAdornment: (
                  <InputAdornment position="start">
                    <IconButton
                      onClick={() => {
                        fetchPrecisePoliticalLocation().then((location) => {
                          if (location.county_fips_code) {
                            history.push(
                              `/county/${location.county_fips_code}`
                            );
                          }
                        });
                      }}
                      edge="end"
                    >
                      <GpsFixedIcon></GpsFixedIcon>
                    </IconButton>
                  </InputAdornment>
                ),
              }}
            ></TextField>
          </>
        )}
      />
    );
  }

  const counties = data?.counties?.nodes.map((county) => {
    return {
      label: `${county?.countyName},${county?.stateAbbr}(${county?.confirmedCases})`,
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
