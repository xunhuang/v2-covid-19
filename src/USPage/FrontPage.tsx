import React, { useEffect } from 'react';
import { Redirect, useHistory } from 'react-router';

import { fetchApproximatePoliticalLocation } from '../GeoLocation';
import { FullDiv } from '../styles/HomeStyles';

export const FrontPage = () => {
  const history = useHistory();
  const [county_fips_code, setCountyFipsCode] = React.useState<
    undefined | string
  >(undefined);

  React.useEffect(() => {
    fetchApproximatePoliticalLocation().then((location) => {
      setCountyFipsCode(location.county_fips_code);
    });
  }, []);

  if (county_fips_code) {
    return <Redirect to={`/county/${county_fips_code}`}></Redirect>;
  }

  return <FullDiv>Determining location</FullDiv>;
};
