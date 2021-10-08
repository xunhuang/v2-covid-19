--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: msa_counties; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.msa_counties (msa_id, county_fips_code, county_name, state_fips_code) FROM stdin;
5920	19155	Pottawattamie County	19
2120	19181	Warren County	19
2120	19049	Dallas County	19
2120	19153	Polk County	19
9000	39013	Belmont County	39
1840	39129	Pickaway County	39
1840	39041	Delaware County	39
1840	39089	Licking County	39
1840	39049	Franklin County	39
1840	39097	Madison County	39
1840	39045	Fairfield County	39
3400	39087	Lawrence County	39
80	39153	Summit County	39
80	39133	Portage County	39
1640	39061	Hamilton County	39
1640	39025	Clermont County	39
1640	39165	Warren County	39
1640	39015	Brown County	39
9320	39155	Trumbull County	39
9320	39029	Columbiana County	39
9320	39099	Mahoning County	39
1680	39055	Geauga County	39
1680	39103	Medina County	39
1680	39007	Ashtabula County	39
1680	39085	Lake County	39
1680	39035	Cuyahoga County	39
1680	39093	Lorain County	39
8080	39081	Jefferson County	39
2000	39109	Miami County	39
2000	39023	Clark County	39
2000	39113	Montgomery County	39
2000	39057	Greene County	39
8400	39095	Lucas County	39
8400	39051	Fulton County	39
8400	39173	Wood County	39
7160	49035	Salt Lake County	49
7160	49011	Davis County	49
7160	49057	Weber County	49
1080	16001	Ada County	16
1080	16027	Canyon County	16
40	48441	Taylor County	48
3360	48473	Waller County	48
3360	48339	Montgomery County	48
3360	48291	Liberty County	48
3360	48071	Chambers County	48
3360	48157	Fort Bend County	48
3360	48201	Harris County	48
320	48375	Potter County	48
320	48381	Randall County	48
4420	48459	Upshur County	48
4420	48203	Harrison County	48
4420	48183	Gregg County	48
840	48199	Hardin County	48
840	48245	Jefferson County	48
840	48361	Orange County	48
7240	48091	Comal County	48
7240	48029	Bexar County	48
7240	48187	Guadalupe County	48
7240	48493	Wilson County	48
1880	48409	San Patricio County	48
1880	48355	Nueces County	48
640	48055	Caldwell County	48
640	48491	Williamson County	48
640	48021	Bastrop County	48
640	48209	Hays County	48
640	48453	Travis County	48
1920	48257	Kaufman County	48
1920	48367	Parker County	48
1920	48221	Hood County	48
1920	48251	Johnson County	48
1920	48231	Hunt County	48
1920	48121	Denton County	48
1920	48113	Dallas County	48
1920	48139	Ellis County	48
1920	48397	Rockwall County	48
1920	48439	Tarrant County	48
1920	48213	Henderson County	48
1920	48085	Collin County	48
380	02020	Anchorage Municipality	02
9040	20079	Harvey County	20
9040	20015	Butler County	20
9040	20173	Sedgwick County	20
3760	20103	Leavenworth County	20
3760	20091	Johnson County	20
3760	20121	Miami County	20
3760	20209	Wyandotte County	20
4120	32003	Clark County	32
4120	32023	Nye County	32
6440	41051	Multnomah County	41
6440	41067	Washington County	41
6440	41005	Clackamas County	41
6440	41009	Columbia County	41
6440	41071	Yamhill County	41
450	01015	Calhoun County	01
1800	01113	Russell County	01
5240	01001	Autauga County	01
5240	01051	Elmore County	01
5240	01101	Montgomery County	01
1000	01117	Shelby County	01
1000	01009	Blount County	01
1000	01115	St. Clair County	01
1000	01073	Jefferson County	01
4120	04015	Mohave County	04
3600	12089	Nassau County	12
3600	12031	Duval County	12
3600	12109	St. Johns County	12
3600	12019	Clay County	12
5960	12095	Orange County	12
5960	12069	Lake County	12
5960	12117	Seminole County	12
5960	12097	Osceola County	12
8280	12057	Hillsborough County	12
8280	12101	Pasco County	12
8280	12053	Hernando County	12
8280	12103	Pinellas County	12
1800	13215	Muscogee County	13
1800	13053	Chattahoochee County	13
1800	13145	Harris County	13
1560	13295	Walker County	13
1560	13047	Catoosa County	13
1560	13083	Dade County	13
820	13013	Barrow County	13
820	13015	Bartow County	13
820	13063	Clayton County	13
820	13097	Douglas County	13
820	13089	DeKalb County	13
820	13151	Henry County	13
820	13067	Cobb County	13
820	13077	Coweta County	13
820	13247	Rockdale County	13
820	13255	Spalding County	13
820	13113	Fayette County	13
820	13121	Fulton County	13
820	13057	Cherokee County	13
820	13117	Forsyth County	13
820	13135	Gwinnett County	13
820	13227	Pickens County	13
820	13045	Carroll County	13
820	13223	Paulding County	13
820	13217	Newton County	13
820	13297	Walton County	13
4680	13153	Houston County	13
4680	13021	Bibb County	13
4680	13289	Twiggs County	13
4680	13225	Peach County	13
4680	13169	Jones County	13
600	13073	Columbia County	13
600	13245	Richmond County	13
7520	13103	Effingham County	13
7520	13029	Bryan County	13
7520	13051	Chatham County	13
120	13177	Lee County	13
120	13095	Dougherty County	13
500	13195	Madison County	13
500	13059	Clarke County	13
500	13219	Oconee County	13
1640	18115	Ohio County	18
1640	18029	Dearborn County	18
8320	18165	Vermillion County	18
8320	18167	Vigo County	18
8320	18021	Clay County	18
3480	18059	Hancock County	18
3480	18011	Boone County	18
3480	18057	Hamilton County	18
3480	18095	Madison County	18
3480	18063	Hendricks County	18
3480	18097	Marion County	18
3480	18109	Morgan County	18
3480	18145	Shelby County	18
3480	18081	Johnson County	18
4520	18019	Clark County	18
4520	18043	Floyd County	18
4520	18061	Harrison County	18
4520	18143	Scott County	18
2760	18003	Allen County	18
2760	18183	Whitley County	18
2760	18179	Wells County	18
2760	18069	Huntington County	18
2760	18001	Adams County	18
2760	18033	DeKalb County	18
1303	50013	Grand Isle County	50
1303	50011	Franklin County	50
1303	50007	Chittenden County	50
4400	05085	Lonoke County	05
4400	05045	Faulkner County	05
4400	05119	Pulaski County	05
4400	05125	Saline County	05
4920	05035	Crittenden County	05
2080	08059	Jefferson County	08
2080	08005	Arapahoe County	08
2080	08001	Adams County	08
2080	08031	Denver County	08
2080	08035	Douglas County	08
1600	17043	DuPage County	17
1600	17037	DeKalb County	17
1600	17111	McHenry County	17
1600	17031	Cook County	17
1600	17097	Lake County	17
1600	17089	Kane County	17
1600	17063	Grundy County	17
1600	17197	Will County	17
1600	17093	Kendall County	17
7040	17119	Madison County	17
7040	17083	Jersey County	17
7040	17027	Clinton County	17
7040	17133	Monroe County	17
7040	17163	St. Clair County	17
6880	17201	Winnebago County	17
6880	17007	Boone County	17
6880	17141	Ogle County	17
6120	17203	Woodford County	17
6120	17143	Peoria County	17
6120	17179	Tazewell County	17
3400	21089	Greenup County	21
3400	21019	Boyd County	21
1640	21015	Boone County	21
1640	21191	Pendleton County	21
1640	21077	Gallatin County	21
1640	21037	Campbell County	21
1640	21081	Grant County	21
1640	21117	Kenton County	21
1660	21047	Christian County	21
4520	21111	Jefferson County	21
4520	21029	Bullitt County	21
4520	21185	Oldham County	21
4280	21239	Woodford County	21
4280	21113	Jessamine County	21
4280	21067	Fayette County	21
4280	21017	Bourbon County	21
4280	21209	Scott County	21
4280	21151	Madison County	21
4280	21049	Clark County	21
1900	24001	Allegany County	24
8840	24021	Frederick County	24
8840	24033	Prince George's County	24
8840	24017	Charles County	24
8840	24031	Montgomery County	24
8840	24009	Calvert County	24
720	24510	Baltimore city	24
720	24005	Baltimore County	24
720	24027	Howard County	24
720	24025	Harford County	24
720	24013	Carroll County	24
720	24035	Queen Anne's County	24
720	24003	Anne Arundel County	24
6960	26017	Bay County	26
6960	26111	Midland County	26
6960	26145	Saginaw County	26
2160	26147	St. Clair County	26
2160	26099	Macomb County	26
2160	26087	Lapeer County	26
2160	26163	Wayne County	26
2160	26125	Oakland County	26
2160	26115	Monroe County	26
3720	26077	Kalamazoo County	26
3720	26159	Van Buren County	26
3720	26025	Calhoun County	26
440	26161	Washtenaw County	26
440	26091	Lenawee County	26
440	26093	Livingston County	26
3000	26139	Ottawa County	26
3000	26005	Allegan County	26
3000	26121	Muskegon County	26
3000	26081	Kent County	26
4040	26037	Clinton County	26
4040	26065	Ingham County	26
4040	26045	Eaton County	26
7040	29219	Warren County	29
7040	29183	St. Charles County	29
7040	29510	St. Louis city	29
7040	29113	Lincoln County	29
7040	29099	Jefferson County	29
7040	29189	St. Louis County	29
7040	29071	Franklin County	29
3760	29049	Clinton County	29
3760	29177	Ray County	29
3760	29165	Platte County	29
3760	29095	Jackson County	29
3760	29107	Lafayette County	29
3760	29047	Clay County	29
3760	29037	Cass County	29
7920	29077	Greene County	29
7920	29225	Webster County	29
7920	29043	Christian County	29
5920	31025	Cass County	31
5920	31055	Douglas County	31
5920	31153	Sarpy County	31
5920	31177	Washington County	31
1280	36029	Erie County	36
1280	36063	Niagara County	36
1050	36081	Queens County	36
1050	36047	Kings County	36
1050	36085	Richmond County	36
1050	36005	Bronx County	36
1050	36061	New York County	36
160	36093	Schenectady County	36
160	36095	Schoharie County	36
160	36083	Rensselaer County	36
160	36057	Montgomery County	36
160	36001	Albany County	36
160	36091	Saratoga County	36
6840	36037	Genesee County	36
6840	36069	Ontario County	36
6840	36073	Orleans County	36
6840	36051	Livingston County	36
6840	36055	Monroe County	36
6840	36117	Wayne County	36
960	36007	Broome County	36
960	36107	Tioga County	36
8160	36011	Cayuga County	36
8160	36053	Madison County	36
8160	36067	Onondaga County	36
8160	36075	Oswego County	36
8560	40143	Tulsa County	40
8560	40131	Rogers County	40
8560	40145	Wagoner County	40
8560	40113	Osage County	40
8560	40037	Creek County	40
5880	40125	Pottawatomie County	40
5880	40087	McClain County	40
5880	40083	Logan County	40
5880	40027	Cleveland County	40
5880	40109	Oklahoma County	40
5880	40017	Canadian County	40
1540	51003	Albemarle County	51
1540	51079	Greene County	51
1540	51065	Fluvanna County	51
1540	51540	Charlottesville city	51
4640	51680	Lynchburg city	51
4640	51009	Amherst County	51
4640	51019	Bedford County	51
4640	51031	Campbell County	51
3660	51169	Scott County	51
3660	51191	Washington County	51
3660	51520	Bristol city	51
5720	51650	Hampton city	51
5720	51199	York County	51
5720	51093	Isle of Wight County	51
5720	51830	Williamsburg city	51
5720	51800	Suffolk city	51
5720	51095	James City County	51
5720	51073	Gloucester County	51
5720	51735	Poquoson city	51
5720	51810	Virginia Beach city	51
5720	51740	Portsmouth city	51
5720	51550	Chesapeake city	51
5720	51115	Mathews County	51
5720	51710	Norfolk city	51
5720	51700	Newport News city	51
6760	51570	Colonial Heights city	51
6760	51087	Henrico County	51
6760	51145	Powhatan County	51
6760	51760	Richmond city	51
6760	51075	Goochland County	51
6760	51041	Chesterfield County	51
6760	51085	Hanover County	51
6760	51149	Prince George County	51
6760	51036	Charles City County	51
6760	51127	New Kent County	51
6760	51730	Petersburg city	51
6760	51053	Dinwiddie County	51
6760	51670	Hopewell city	51
8840	51600	Fairfax city	51
8840	51510	Alexandria city	51
8840	51685	Manassas Park city	51
8840	51059	Fairfax County	51
8840	51187	Warren County	51
8840	51013	Arlington County	51
8840	51630	Fredericksburg city	51
8840	51153	Prince William County	51
8840	51107	Loudoun County	51
8840	51043	Clarke County	51
8840	51179	Stafford County	51
8840	51683	Manassas city	51
8840	51061	Fauquier County	51
8840	51610	Falls Church city	51
8840	51177	Spotsylvania County	51
6800	51023	Botetourt County	51
6800	51161	Roanoke County	51
6800	51770	Roanoke city	51
6800	51775	Salem city	51
220	22079	Rapides Parish	22
7680	22015	Bossier Parish	22
7680	22017	Caddo Parish	22
7680	22119	Webster Parish	22
3880	22001	Acadia Parish	22
3880	22099	St. Martin Parish	22
3880	22097	St. Landry Parish	22
3880	22055	Lafayette Parish	22
5560	22093	St. James Parish	22
5560	22071	Orleans Parish	22
5560	22075	Plaquemines Parish	22
5560	22095	St. John the Baptist Parish	22
5560	22087	St. Bernard Parish	22
5560	22089	St. Charles Parish	22
5560	22103	St. Tammany Parish	22
5560	22051	Jefferson Parish	22
760	22121	West Baton Rouge Parish	22
760	22063	Livingston Parish	22
760	22033	East Baton Rouge Parish	22
5120	27141	Sherburne County	27
5120	27053	Hennepin County	27
5120	27059	Isanti County	27
5120	27171	Wright County	27
5120	27037	Dakota County	27
5120	27139	Scott County	27
5120	27025	Chisago County	27
5120	27003	Anoka County	27
5120	27163	Washington County	27
5120	27019	Carver County	27
5120	27123	Ramsey County	27
3840	47173	Union County	47
3840	47155	Sevier County	47
3840	47009	Blount County	47
3840	47093	Knox County	47
3840	47001	Anderson County	47
3840	47105	Loudon County	47
1560	47065	Hamilton County	47
4920	47047	Fayette County	47
4920	47167	Tipton County	47
4920	47157	Shelby County	47
3660	47163	Sullivan County	47
3660	47073	Hawkins County	47
3660	47179	Washington County	47
3660	47171	Unicoi County	47
3660	47019	Carter County	47
1660	47125	Montgomery County	47
5360	47037	Davidson County	47
5360	47149	Rutherford County	47
5360	47165	Sumner County	47
5360	47187	Williamson County	47
5360	47021	Cheatham County	47
5360	47147	Robertson County	47
5360	47043	Dickson County	47
5360	47189	Wilson County	47
5120	55093	Pierce County	55
5120	55109	St. Croix County	55
460	55015	Calumet County	55
460	55087	Outagamie County	55
460	55139	Winnebago County	55
5080	55079	Milwaukee County	55
5080	55089	Ozaukee County	55
5080	55133	Waukesha County	55
5080	55131	Washington County	55
6920	06067	Sacramento County	06
6920	06017	El Dorado County	06
6920	06061	Placer County	06
1040	06075	San Francisco County	06
1040	06081	San Mateo County	06
1040	06013	Contra Costa County	06
1040	06001	Alameda County	06
1040	06041	Marin County	06
1040	06085	Santa Clara County	06
5640	34013	Essex County	34
5640	34037	Sussex County	34
5640	34041	Warren County	34
5640	34039	Union County	34
5640	34027	Morris County	34
6160	34005	Burlington County	34
6160	34015	Gloucester County	34
6160	34007	Camden County	34
6160	34033	Salem County	34
560	34001	Atlantic County	34
560	34009	Cape May County	34
875	34003	Bergen County	34
875	34031	Passaic County	34
5015	34023	Middlesex County	34
5015	34035	Somerset County	34
5015	34019	Hunterdon County	34
200	35001	Bernalillo County	35
200	35043	Sandoval County	35
200	35061	Valencia County	35
6440	53011	Clark County	53
7600	53033	King County	53
7600	53061	Snohomish County	53
7600	53029	Island County	53
3283	09003	Hartford County	09
3283	09013	Tolland County	09
3283	09007	Middlesex County	09
4920	28033	DeSoto County	28
920	28045	Hancock County	28
920	28047	Harrison County	28
920	28059	Jackson County	28
3560	28089	Madison County	28
3560	28049	Hinds County	28
3560	28121	Rankin County	28
1010	38059	Morton County	38
1010	38015	Burleigh County	38
6160	42091	Montgomery County	42
6160	42017	Bucks County	42
6160	42029	Chester County	42
6160	42045	Delaware County	42
6160	42101	Philadelphia County	42
6280	42125	Washington County	42
6280	42007	Beaver County	42
6280	42129	Westmoreland County	42
6280	42019	Butler County	42
6280	42051	Fayette County	42
6280	42003	Allegheny County	42
7560	42079	Luzerne County	42
7560	42037	Columbia County	42
7560	42069	Lackawanna County	42
7560	42131	Wyoming County	42
3240	42075	Lebanon County	42
3240	42099	Perry County	42
3240	42041	Cumberland County	42
3240	42043	Dauphin County	42
240	42077	Lehigh County	42
240	42095	Northampton County	42
240	42025	Carbon County	42
6483	44001	Bristol County	44
6483	44003	Kent County	44
6483	44007	Providence County	44
6483	44009	Washington County	44
8003	25013	Hampden County	25
8003	25015	Hampshire County	25
1123	25005	Bristol County	25
1123	25009	Essex County	25
1123	25027	Worcester County	25
1123	25021	Norfolk County	25
1123	25025	Suffolk County	25
1123	25023	Plymouth County	25
1123	25017	Middlesex County	25
1123	33017	Strafford County	33
1123	33015	Rockingham County	33
1123	33011	Hillsborough County	33
9000	54069	Ohio County	54
9000	54051	Marshall County	54
3400	54099	Wayne County	54
3400	54011	Cabell County	54
1900	54057	Mineral County	54
8840	54037	Jefferson County	54
8080	54029	Hancock County	54
8080	54009	Brooke County	54
1480	54079	Putnam County	54
1480	54039	Kanawha County	54
3120	37151	Randolph County	37
3120	37067	Forsyth County	37
3120	37059	Davie County	37
3120	37169	Stokes County	37
3120	37001	Alamance County	37
3120	37197	Yadkin County	37
3120	37057	Davidson County	37
3120	37081	Guilford County	37
5720	37053	Currituck County	37
3290	37003	Alexander County	37
3290	37023	Burke County	37
3290	37027	Caldwell County	37
3290	37035	Catawba County	37
480	37115	Madison County	37
480	37021	Buncombe County	37
1520	37109	Lincoln County	37
1520	37119	Mecklenburg County	37
1520	37159	Rowan County	37
1520	37179	Union County	37
1520	37025	Cabarrus County	37
1520	37071	Gaston County	37
6640	37183	Wake County	37
6640	37135	Orange County	37
6640	37069	Franklin County	37
6640	37101	Johnston County	37
6640	37063	Durham County	37
6640	37037	Chatham County	37
600	45003	Aiken County	45
600	45037	Edgefield County	45
3160	45007	Anderson County	45
3160	45083	Spartanburg County	45
3160	45045	Greenville County	45
3160	45077	Pickens County	45
3160	45021	Cherokee County	45
1440	45019	Charleston County	45
1440	45035	Dorchester County	45
1440	45015	Berkeley County	45
1760	45079	Richland County	45
1760	45063	Lexington County	45
1520	45091	York County	45
8840	11001	District of Columbia	11
\.


--
-- PostgreSQL database dump complete
--

