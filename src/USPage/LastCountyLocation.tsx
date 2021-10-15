import Cookies from 'js-cookie';

import { LastCountyCookieName } from './InfoTab';

interface LastCountyCookieType {
  county_fips_code: string;
  state_fips_code: string;
}
export function getLastCountyLocation(): null | LastCountyCookieType {
  const cache = Cookies.get(LastCountyCookieName);
  if (cache == null) return null;
  return JSON.parse(cache) as LastCountyCookieType;
}
export function setLastCountyLocation(last: LastCountyCookieType) {
  Cookies.set(LastCountyCookieName, JSON.stringify(last));
}
