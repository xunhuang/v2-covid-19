import Cookies from 'js-cookie';



const LastCountyCookieName = "LAST_COUNTY_VISITED";
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
