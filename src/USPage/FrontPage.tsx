import React from 'react';
import { Redirect } from 'react-router';

import { fetchApproximatePoliticalLocation } from '../GeoLocation';
import { FullDiv } from '../styles/HomeStyles';
import { getLastCountyLocation } from './LastCountyLocation';

const FrontPageFindLocation = () => {
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

export const FrontPage = () => {
  const last = getLastCountyLocation();
  if (last) {
    if (last.county_fips_code) {
      console.log("found list location " + last.county_fips_code);
      return <Redirect to={`/county/${last.county_fips_code}`}></Redirect>;
    }
  }
  return <FrontPageFindLocation />;
};
