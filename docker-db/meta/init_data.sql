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

DROP TABLE public.state_meta CASCADE;
DROP TABLE public.msa_meta CASCADE;
DROP TABLE public.county_meta CASCADE;
SET default_table_access_method = heap;

--
-- Name: county_meta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.county_meta (
    county_fips_code text,
    state_fips_code text,
    population integer,
    county_name text,
    state_name text,
    state_abbr text,
    msa_id text,
    msa_name text,
    msa_url_name text
);


--
-- Name: msa_meta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.msa_meta (
    msa_id text,
    msa_name text,
    msa_url_name text,
    state_fips_code text,
    state_name text,
    state_postal_abbreviation text,
    population bigint
);


--
-- Name: state_meta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.state_meta (
    state_fips_code text,
    state_abbr text,
    state_name text,
    population integer
);


--
-- Data for Name: county_meta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.county_meta (county_fips_code, state_fips_code, population, county_name, state_name, state_abbr, msa_id, msa_name, msa_url_name) FROM stdin;
19155	19	93328	Pottawattamie County	Iowa	IA	5920	Omaha	Omaha
19181	19	52265	Warren County	Iowa	IA	2120	Des Moines	DesMoines
19049	19	96963	Dallas County	Iowa	IA	2120	Des Moines	DesMoines
19153	19	494281	Polk County	Iowa	IA	2120	Des Moines	DesMoines
39013	39	65932	Belmont County	Ohio	OH	9000	Wheeling	Wheeling
39129	39	58658	Pickaway County	Ohio	OH	1840	Columbus (OH)	Columbus_OH
39041	39	213554	Delaware County	Ohio	OH	1840	Columbus (OH)	Columbus_OH
39089	39	178100	Licking County	Ohio	OH	1840	Columbus (OH)	Columbus_OH
39049	39	1324624	Franklin County	Ohio	OH	1840	Columbus (OH)	Columbus_OH
39097	39	44559	Madison County	Ohio	OH	1840	Columbus (OH)	Columbus_OH
39045	39	159709	Fairfield County	Ohio	OH	1840	Columbus (OH)	Columbus_OH
39087	39	59091	Lawrence County	Ohio	OH	3400	Huntingon/Ashland	HuntingtonAshland
39153	39	538866	Summit County	Ohio	OH	80	Akron Area	Akron
39133	39	162583	Portage County	Ohio	OH	80	Akron Area	Akron
39061	39	817985	Hamilton County	Ohio	OH	1640	Cincinnati Area	Cincinnati
39025	39	207449	Clermont County	Ohio	OH	1640	Cincinnati Area	Cincinnati
39165	39	238412	Warren County	Ohio	OH	1640	Cincinnati Area	Cincinnati
39015	39	43414	Brown County	Ohio	OH	1640	Cincinnati Area	Cincinnati
39155	39	196800	Trumbull County	Ohio	OH	9320	Youngstown/Warren	YoungstownWarren
39029	39	101118	Columbiana County	Ohio	OH	9320	Youngstown/Warren	YoungstownWarren
39099	39	226075	Mahoning County	Ohio	OH	9320	Youngstown/Warren	YoungstownWarren
39055	39	93271	Geauga County	Ohio	OH	1680	Cleveland	Cleveland
39103	39	180912	Medina County	Ohio	OH	1680	Cleveland	Cleveland
39007	39	96513	Ashtabula County	Ohio	OH	1680	Cleveland	Cleveland
39085	39	229569	Lake County	Ohio	OH	1680	Cleveland	Cleveland
39035	39	1227883	Cuyahoga County	Ohio	OH	1680	Cleveland	Cleveland
39093	39	312172	Lorain County	Ohio	OH	1680	Cleveland	Cleveland
39081	39	64939	Jefferson County	Ohio	OH	8080	Steubenville	Steubenville
39109	39	107516	Miami County	Ohio	OH	2000	Dayton Area	Dayton
39023	39	133593	Clark County	Ohio	OH	2000	Dayton Area	Dayton
39113	39	531610	Montgomery County	Ohio	OH	2000	Dayton Area	Dayton
39057	39	170122	Greene County	Ohio	OH	2000	Dayton Area	Dayton
39095	39	428294	Lucas County	Ohio	OH	8400	Toledo	Toledo
39051	39	41889	Fulton County	Ohio	OH	8400	Toledo	Toledo
39173	39	131113	Wood County	Ohio	OH	8400	Toledo	Toledo
49035	49	1165517	Salt Lake County	Utah	UT	7160	Salt Lake City	SLT
49011	49	359232	Davis County	Utah	UT	7160	Salt Lake City	SLT
49057	49	262658	Weber County	Utah	UT	7160	Salt Lake City	SLT
16001	16	494399	Ada County	Idaho	ID	1080	Boise City	Boise
16027	16	237053	Canyon County	Idaho	ID	1080	Boise City	Boise
48441	48	139200	Taylor County	Texas	TX	40	Abilene Area	Abilene
48473	48	57452	Waller County	Texas	TX	3360	Houston Area	Houston
48339	48	626351	Montgomery County	Texas	TX	3360	Houston Area	Houston
48291	48	91547	Liberty County	Texas	TX	3360	Houston Area	Houston
48071	48	45590	Chambers County	Texas	TX	3360	Houston Area	Houston
48157	48	839706	Fort Bend County	Texas	TX	3360	Houston Area	Houston
48201	48	4738253	Harris County	Texas	TX	3360	Houston Area	Houston
48375	48	116004	Potter County	Texas	TX	320	Amarillo Area	Amarillo
48381	48	139899	Randall County	Texas	TX	320	Amarillo Area	Amarillo
48459	48	42166	Upshur County	Texas	TX	4420	Longview/Marshall	Longview
48203	48	66386	Harrison County	Texas	TX	4420	Longview/Marshall	Longview
48183	48	124229	Gregg County	Texas	TX	4420	Longview/Marshall	Longview
48199	48	58305	Hardin County	Texas	TX	840	Beaumont/Port Arthur Area	Beaumont
48245	48	250127	Jefferson County	Texas	TX	840	Beaumont/Port Arthur Area	Beaumont
48361	48	82878	Orange County	Texas	TX	840	Beaumont/Port Arthur Area	Beaumont
48091	48	164812	Comal County	Texas	TX	7240	San Antonio	SanAntonio
48029	48	2026823	Bexar County	Texas	TX	7240	San Antonio	SanAntonio
48187	48	170608	Guadalupe County	Texas	TX	7240	San Antonio	SanAntonio
48493	48	52023	Wilson County	Texas	TX	7240	San Antonio	SanAntonio
48409	48	67069	San Patricio County	Texas	TX	1880	Corpus Christi	CorpusChristi
48355	48	363148	Nueces County	Texas	TX	1880	Corpus Christi	CorpusChristi
48055	48	43979	Caldwell County	Texas	TX	640	Greater Austin	Austin
48491	48	617855	Williamson County	Texas	TX	640	Greater Austin	Austin
48021	48	91601	Bastrop County	Texas	TX	640	Greater Austin	Austin
48209	48	241365	Hays County	Texas	TX	640	Greater Austin	Austin
48453	48	1300503	Travis County	Texas	TX	640	Greater Austin	Austin
48257	48	143198	Kaufman County	Texas	TX	1920	Greater Dallas	Dallas
48367	48	148198	Parker County	Texas	TX	1920	Greater Dallas	Dallas
48221	48	63527	Hood County	Texas	TX	1920	Greater Dallas	Dallas
48251	48	179575	Johnson County	Texas	TX	1920	Greater Dallas	Dallas
48231	48	99807	Hunt County	Texas	TX	1920	Greater Dallas	Dallas
48121	48	919324	Denton County	Texas	TX	1920	Greater Dallas	Dallas
48113	48	2635888	Dallas County	Texas	TX	1920	Greater Dallas	Dallas
48139	48	191760	Ellis County	Texas	TX	1920	Greater Dallas	Dallas
48397	48	109888	Rockwall County	Texas	TX	1920	Greater Dallas	Dallas
48439	48	2123347	Tarrant County	Texas	TX	1920	Greater Dallas	Dallas
48213	48	83792	Henderson County	Texas	TX	1920	Greater Dallas	Dallas
48085	48	1072069	Collin County	Texas	TX	1920	Greater Dallas	Dallas
02020	02	287095	Anchorage Municipality	Alaska	AK	380	Anchorage Area	Anchorage
20079	20	34291	Harvey County	Kansas	KS	9040	Wichita	Wichita
20015	20	66992	Butler County	Kansas	KS	9040	Wichita	Wichita
20173	20	519907	Sedgwick County	Kansas	KS	9040	Wichita	Wichita
20103	20	82246	Leavenworth County	Kansas	KS	3760	Kansas City Area	KansasCity
20091	20	607220	Johnson County	Kansas	KS	3760	Kansas City Area	KansasCity
20121	20	34334	Miami County	Kansas	KS	3760	Kansas City Area	KansasCity
20209	20	165265	Wyandotte County	Kansas	KS	3760	Kansas City Area	KansasCity
32003	32	2315963	Clark County	Nevada	NV	4120	Las Vegas	Las Vegas
32023	32	48054	Nye County	Nevada	NV	4120	Las Vegas	Las Vegas
41051	41	815637	Multnomah County	Oregon	OR	6440	Portland	Portland
41067	41	603514	Washington County	Oregon	OR	6440	Portland	Portland
41005	41	421596	Clackamas County	Oregon	OR	6440	Portland	Portland
41009	41	52876	Columbia County	Oregon	OR	6440	Portland	Portland
41071	41	107664	Yamhill County	Oregon	OR	6440	Portland	Portland
01015	01	113469	Calhoun County	Alabama	AL	450	Anniston Area	Anniston
01113	01	58237	Russell County	Alabama	AL	1800	Columbus (GA)	Columbus_GA
01001	01	56145	Autauga County	Alabama	AL	5240	Montgomery	Montgomery
01051	01	82158	Elmore County	Alabama	AL	5240	Montgomery	Montgomery
01101	01	224639	Montgomery County	Alabama	AL	5240	Montgomery	Montgomery
01117	01	221428	Shelby County	Alabama	AL	1000	Birmingham	Birmingham
01009	01	57879	Blount County	Alabama	AL	1000	Birmingham	Birmingham
01115	01	90739	St. Clair County	Alabama	AL	1000	Birmingham	Birmingham
01073	01	655342	Jefferson County	Alabama	AL	1000	Birmingham	Birmingham
04015	04	217206	Mohave County	Arizona	AZ	4120	Las Vegas	Las Vegas
12089	12	91113	Nassau County	Florida	FL	3600	Jacksonville	Jacksonville
12031	12	966728	Duval County	Florida	FL	3600	Jacksonville	Jacksonville
12109	12	278715	St. Johns County	Florida	FL	3600	Jacksonville	Jacksonville
12019	12	221770	Clay County	Florida	FL	3600	Jacksonville	Jacksonville
12095	12	1404396	Orange County	Florida	FL	5960	Orlando	Orlando
12069	12	375492	Lake County	Florida	FL	5960	Orlando	Orlando
12117	12	474171	Seminole County	Florida	FL	5960	Orlando	Orlando
12097	12	385315	Osceola County	Florida	FL	5960	Orlando	Orlando
12057	12	1497957	Hillsborough County	Florida	FL	8280	Tampa Area	Tampa
12101	12	570412	Pasco County	Florida	FL	8280	Tampa Area	Tampa
12053	12	198792	Hernando County	Florida	FL	8280	Tampa Area	Tampa
12103	12	976802	Pinellas County	Florida	FL	8280	Tampa Area	Tampa
13215	13	196442	Muscogee County	Georgia	GA	1800	Columbus (GA)	Columbus_GA
13053	13	10551	Chattahoochee County	Georgia	GA	1800	Columbus (GA)	Columbus_GA
13145	13	36080	Harris County	Georgia	GA	1800	Columbus (GA)	Columbus_GA
13295	13	70116	Walker County	Georgia	GA	1560	Chattanooga	Chattanooga
13047	13	67996	Catoosa County	Georgia	GA	1560	Chattanooga	Chattanooga
13083	13	16057	Dade County	Georgia	GA	1560	Chattanooga	Chattanooga
13013	13	85588	Barrow County	Georgia	GA	820	Atlanta Area	Atlanta
13015	13	109426	Bartow County	Georgia	GA	820	Atlanta Area	Atlanta
13063	13	292646	Clayton County	Georgia	GA	820	Atlanta Area	Atlanta
13097	13	147988	Douglas County	Georgia	GA	820	Atlanta Area	Atlanta
13089	13	762009	DeKalb County	Georgia	GA	820	Atlanta Area	Atlanta
13151	13	239139	Henry County	Georgia	GA	820	Atlanta Area	Atlanta
13067	13	762944	Cobb County	Georgia	GA	820	Atlanta Area	Atlanta
13077	13	150849	Coweta County	Georgia	GA	820	Atlanta Area	Atlanta
13247	13	90939	Rockdale County	Georgia	GA	820	Atlanta Area	Atlanta
13255	13	67414	Spalding County	Georgia	GA	820	Atlanta Area	Atlanta
13113	13	115821	Fayette County	Georgia	GA	820	Atlanta Area	Atlanta
13121	13	1077402	Fulton County	Georgia	GA	820	Atlanta Area	Atlanta
13057	13	265274	Cherokee County	Georgia	GA	820	Atlanta Area	Atlanta
13117	13	250847	Forsyth County	Georgia	GA	820	Atlanta Area	Atlanta
13135	13	942627	Gwinnett County	Georgia	GA	820	Atlanta Area	Atlanta
13227	13	33127	Pickens County	Georgia	GA	820	Atlanta Area	Atlanta
13045	13	121633	Carroll County	Georgia	GA	820	Atlanta Area	Atlanta
13223	13	173359	Paulding County	Georgia	GA	820	Atlanta Area	Atlanta
13217	13	113295	Newton County	Georgia	GA	820	Atlanta Area	Atlanta
13297	13	96875	Walton County	Georgia	GA	820	Atlanta Area	Atlanta
13153	13	160110	Houston County	Georgia	GA	4680	Macon	Macon
13021	13	152737	Bibb County	Georgia	GA	4680	Macon	Macon
13289	13	8103	Twiggs County	Georgia	GA	4680	Macon	Macon
13225	13	27950	Peach County	Georgia	GA	4680	Macon	Macon
13169	13	28787	Jones County	Georgia	GA	4680	Macon	Macon
13073	13	160377	Columbia County	Georgia	GA	600	Augusta/Aiken	AugustaAiken
13245	13	202079	Richmond County	Georgia	GA	600	Augusta/Aiken	AugustaAiken
13103	13	65765	Effingham County	Georgia	GA	7520	Savannah	Savannah
13029	13	40755	Bryan County	Georgia	GA	7520	Savannah	Savannah
13051	13	289463	Chatham County	Georgia	GA	7520	Savannah	Savannah
13177	13	30234	Lee County	Georgia	GA	120	Albany (GA) Area	AlbanyGA
13095	13	86477	Dougherty County	Georgia	GA	120	Albany (GA) Area	AlbanyGA
13195	13	30457	Madison County	Georgia	GA	500	Athens Area	Athens
13059	13	127795	Clarke County	Georgia	GA	500	Athens Area	Athens
13219	13	41124	Oconee County	Georgia	GA	500	Athens Area	Athens
18115	18	5892	Ohio County	Indiana	IN	1640	Cincinnati Area	Cincinnati
18029	18	49824	Dearborn County	Indiana	IN	1640	Cincinnati Area	Cincinnati
18165	18	15329	Vermillion County	Indiana	IN	8320	Terre Haute	TerreHaute
18167	18	106608	Vigo County	Indiana	IN	8320	Terre Haute	TerreHaute
18021	18	26246	Clay County	Indiana	IN	8320	Terre Haute	TerreHaute
18059	18	79553	Hancock County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18011	18	69347	Boone County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18057	18	344238	Hamilton County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18095	18	129681	Madison County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18063	18	173251	Hendricks County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18097	18	966183	Marion County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18109	18	70707	Morgan County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18145	18	44871	Shelby County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18081	18	160607	Johnson County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18019	18	119266	Clark County	Indiana	IN	4520	Louisville	Louisville
18043	18	78936	Floyd County	Indiana	IN	4520	Louisville	Louisville
18061	18	40682	Harrison County	Indiana	IN	4520	Louisville	Louisville
18143	18	23788	Scott County	Indiana	IN	4520	Louisville	Louisville
18003	18	382187	Allen County	Indiana	IN	2760	Fort Wayne	FortWayne
18183	18	34378	Whitley County	Indiana	IN	2760	Fort Wayne	FortWayne
18179	18	28142	Wells County	Indiana	IN	2760	Fort Wayne	FortWayne
18069	18	36395	Huntington County	Indiana	IN	2760	Fort Wayne	FortWayne
18001	18	35839	Adams County	Indiana	IN	2760	Fort Wayne	FortWayne
18033	18	43670	DeKalb County	Indiana	IN	2760	Fort Wayne	FortWayne
50013	50	7169	Grand Isle County	Vermont	VT	1303	Burlington	Burlington
50011	50	49685	Franklin County	Vermont	VT	1303	Burlington	Burlington
50007	50	164306	Chittenden County	Vermont	VT	1303	Burlington	Burlington
05085	05	73921	Lonoke County	Arkansas	AR	4400	Little Rock	Little Rock
05045	05	126919	Faulkner County	Arkansas	AR	4400	Little Rock	Little Rock
05119	05	392980	Pulaski County	Arkansas	AR	4400	Little Rock	Little Rock
05125	05	123968	Saline County	Arkansas	AR	4400	Little Rock	Little Rock
05035	05	47616	Crittenden County	Arkansas	AR	4920	Memphis	Memphis
08059	08	583283	Jefferson County	Colorado	CO	2080	Denver	Denver
08005	08	657452	Arapahoe County	Colorado	CO	2080	Denver	Denver
08001	08	519883	Adams County	Colorado	CO	2080	Denver	Denver
08031	08	735538	Denver County	Colorado	CO	2080	Denver	Denver
08035	08	360750	Douglas County	Colorado	CO	2080	Denver	Denver
17043	17	917481	DuPage County	Illinois	IL	1600	Chicagoland Area	Chicago
17037	17	104491	DeKalb County	Illinois	IL	1600	Chicagoland Area	Chicago
17111	17	305888	McHenry County	Illinois	IL	1600	Chicagoland Area	Chicago
17031	17	5108284	Cook County	Illinois	IL	1600	Chicagoland Area	Chicago
17097	17	693593	Lake County	Illinois	IL	1600	Chicagoland Area	Chicago
17089	17	531010	Kane County	Illinois	IL	1600	Chicagoland Area	Chicago
17063	17	50993	Grundy County	Illinois	IL	1600	Chicagoland Area	Chicago
17197	17	688726	Will County	Illinois	IL	1600	Chicagoland Area	Chicago
17093	17	130638	Kendall County	Illinois	IL	1600	Chicagoland Area	Chicago
17119	17	262635	Madison County	Illinois	IL	7040	St. Louis	StLouis
17083	17	21616	Jersey County	Illinois	IL	7040	St. Louis	StLouis
17027	17	37398	Clinton County	Illinois	IL	7040	St. Louis	StLouis
17133	17	34739	Monroe County	Illinois	IL	7040	St. Louis	StLouis
17163	17	258046	St. Clair County	Illinois	IL	7040	St. Louis	StLouis
17201	17	281295	Winnebago County	Illinois	IL	6880	Rockford	Rockford
17007	17	52777	Boone County	Illinois	IL	6880	Rockford	Rockford
17141	17	50306	Ogle County	Illinois	IL	6880	Rockford	Rockford
17203	17	38091	Woodford County	Illinois	IL	6120	Peoria/Pekin	PeoriaPekin
17143	17	177652	Peoria County	Illinois	IL	6120	Peoria/Pekin	PeoriaPekin
17179	17	130777	Tazewell County	Illinois	IL	6120	Peoria/Pekin	PeoriaPekin
21089	21	34865	Greenup County	Kentucky	KY	3400	Huntingon/Ashland	HuntingtonAshland
21019	21	46516	Boyd County	Kentucky	KY	3400	Huntingon/Ashland	HuntingtonAshland
21015	21	135396	Boone County	Kentucky	KY	1640	Cincinnati Area	Cincinnati
21191	21	14586	Pendleton County	Kentucky	KY	1640	Cincinnati Area	Cincinnati
21077	21	8779	Gallatin County	Kentucky	KY	1640	Cincinnati Area	Cincinnati
21037	21	94020	Campbell County	Kentucky	KY	1640	Cincinnati Area	Cincinnati
21081	21	25387	Grant County	Kentucky	KY	1640	Cincinnati Area	Cincinnati
21117	21	167949	Kenton County	Kentucky	KY	1640	Cincinnati Area	Cincinnati
21047	21	71478	Christian County	Kentucky	KY	1660	Clarksville	Clarksville
21111	21	767452	Jefferson County	Kentucky	KY	4520	Louisville	Louisville
21029	21	82182	Bullitt County	Kentucky	KY	4520	Louisville	Louisville
21185	21	66999	Oldham County	Kentucky	KY	4520	Louisville	Louisville
21239	21	26765	Woodford County	Kentucky	KY	4280	Lexington	Lexington
21113	21	54057	Jessamine County	Kentucky	KY	4280	Lexington	Lexington
21067	21	324735	Fayette County	Kentucky	KY	4280	Lexington	Lexington
21017	21	19901	Bourbon County	Kentucky	KY	4280	Lexington	Lexington
21209	21	58470	Scott County	Kentucky	KY	4280	Lexington	Lexington
21151	21	94265	Madison County	Kentucky	KY	4280	Lexington	Lexington
21049	21	36463	Clark County	Kentucky	KY	4280	Lexington	Lexington
24001	24	70057	Allegany County	Maryland	MD	1900	Cumberland	Cumberland
24021	24	265161	Frederick County	Maryland	MD	8840	Greater DC Area	DC
24033	24	909612	Prince George's County	Maryland	MD	8840	Greater DC Area	DC
24017	24	164436	Charles County	Maryland	MD	8840	Greater DC Area	DC
24031	24	1051816	Montgomery County	Maryland	MD	8840	Greater DC Area	DC
24009	24	93072	Calvert County	Maryland	MD	8840	Greater DC Area	DC
24510	24	586131	Baltimore city	Maryland	MD	720	Greater Baltimore	Baltimore
24005	24	826017	Baltimore County	Maryland	MD	720	Greater Baltimore	Baltimore
24027	24	328200	Howard County	Maryland	MD	720	Greater Baltimore	Baltimore
24025	24	256805	Harford County	Maryland	MD	720	Greater Baltimore	Baltimore
24013	24	169092	Carroll County	Maryland	MD	720	Greater Baltimore	Baltimore
24035	24	51167	Queen Anne's County	Maryland	MD	720	Greater Baltimore	Baltimore
24003	24	582777	Anne Arundel County	Maryland	MD	720	Greater Baltimore	Baltimore
26017	26	102387	Bay County	Michigan	MI	6960	Saginaw Area	Saginaw
26111	26	83441	Midland County	Michigan	MI	6960	Saginaw Area	Saginaw
26145	26	189868	Saginaw County	Michigan	MI	6960	Saginaw Area	Saginaw
26147	26	159293	St. Clair County	Michigan	MI	2160	Detroit Area	Detroit
26099	26	870791	Macomb County	Michigan	MI	2160	Detroit Area	Detroit
26087	26	87635	Lapeer County	Michigan	MI	2160	Detroit Area	Detroit
26163	26	1740623	Wayne County	Michigan	MI	2160	Detroit Area	Detroit
26125	26	1253459	Oakland County	Michigan	MI	2160	Detroit Area	Detroit
26115	26	150568	Monroe County	Michigan	MI	2160	Detroit Area	Detroit
26077	26	265988	Kalamazoo County	Michigan	MI	3720	Kalamazoo/Battle Creek	Kalamazoo
26159	26	75474	Van Buren County	Michigan	MI	3720	Kalamazoo/Battle Creek	Kalamazoo
26025	26	133580	Calhoun County	Michigan	MI	3720	Kalamazoo/Battle Creek	Kalamazoo
26161	26	366473	Washtenaw County	Michigan	MI	440	Ann Arbor Area	AnnArbor
26091	26	97808	Lenawee County	Michigan	MI	440	Ann Arbor Area	AnnArbor
26093	26	192335	Livingston County	Michigan	MI	440	Ann Arbor Area	AnnArbor
26139	26	294635	Ottawa County	Michigan	MI	3000	Grand Rapids Area	GrandRapids
26005	26	118927	Allegan County	Michigan	MI	3000	Grand Rapids Area	GrandRapids
26121	26	173883	Muskegon County	Michigan	MI	3000	Grand Rapids Area	GrandRapids
26081	26	658708	Kent County	Michigan	MI	3000	Grand Rapids Area	GrandRapids
26037	26	79753	Clinton County	Michigan	MI	4040	Lansing Area	Lansing
26065	26	290609	Ingham County	Michigan	MI	4040	Lansing Area	Lansing
26045	26	110148	Eaton County	Michigan	MI	4040	Lansing Area	Lansing
29219	29	36594	Warren County	Missouri	MO	7040	St. Louis	StLouis
29183	29	406204	St. Charles County	Missouri	MO	7040	St. Louis	StLouis
29510	29	297645	St. Louis city	Missouri	MO	7040	St. Louis	StLouis
29113	29	60119	Lincoln County	Missouri	MO	7040	St. Louis	StLouis
29099	29	226543	Jefferson County	Missouri	MO	7040	St. Louis	StLouis
29189	29	994020	St. Louis County	Missouri	MO	7040	St. Louis	StLouis
29071	29	104469	Franklin County	Missouri	MO	7040	St. Louis	StLouis
29049	29	20553	Clinton County	Missouri	MO	3760	Kansas City Area	KansasCity
29177	29	22915	Ray County	Missouri	MO	3760	Kansas City Area	KansasCity
29165	29	106532	Platte County	Missouri	MO	3760	Kansas City Area	KansasCity
29095	29	705925	Jackson County	Missouri	MO	3760	Kansas City Area	KansasCity
29107	29	33006	Lafayette County	Missouri	MO	3760	Kansas City Area	KansasCity
29047	29	253463	Clay County	Missouri	MO	3760	Kansas City Area	KansasCity
29037	29	106806	Cass County	Missouri	MO	3760	Kansas City Area	KansasCity
29077	29	294997	Greene County	Missouri	MO	7920	Springfield, MO	Springfield_MO
29225	29	39859	Webster County	Missouri	MO	7920	Springfield, MO	Springfield_MO
29043	29	90655	Christian County	Missouri	MO	7920	Springfield, MO	Springfield_MO
31025	31	26232	Cass County	Nebraska	NE	5920	Omaha	Omaha
31055	31	574332	Douglas County	Nebraska	NE	5920	Omaha	Omaha
31153	31	188856	Sarpy County	Nebraska	NE	5920	Omaha	Omaha
31177	31	20901	Washington County	Nebraska	NE	5920	Omaha	Omaha
36029	36	917241	Erie County	New York	NY	1280	Buffalo Area	BuffaloNiagara
36063	36	208396	Niagara County	New York	NY	1280	Buffalo Area	BuffaloNiagara
36081	36	2225821	Queens County	New York	NY	1050	New York City	NYC
36047	36	2538934	Kings County	New York	NY	1050	New York City	NYC
36085	36	475327	Richmond County	New York	NY	1050	New York City	NYC
36005	36	1401142	Bronx County	New York	NY	1050	New York City	NYC
36061	36	1611989	New York County	New York	NY	1050	New York City	NYC
36093	36	155358	Schenectady County	New York	NY	160	Albany (NY) Area	AlbanyNY
36095	36	31132	Schoharie County	New York	NY	160	Albany (NY) Area	AlbanyNY
36083	36	158108	Rensselaer County	New York	NY	160	Albany (NY) Area	AlbanyNY
36057	36	49170	Montgomery County	New York	NY	160	Albany (NY) Area	AlbanyNY
36001	36	303654	Albany County	New York	NY	160	Albany (NY) Area	AlbanyNY
36091	36	230298	Saratoga County	New York	NY	160	Albany (NY) Area	AlbanyNY
36037	36	56994	Genesee County	New York	NY	6840	Rochester	Rochester
36069	36	110091	Ontario County	New York	NY	6840	Rochester	Rochester
36073	36	39978	Orleans County	New York	NY	6840	Rochester	Rochester
36051	36	62398	Livingston County	New York	NY	6840	Rochester	Rochester
36055	36	740900	Monroe County	New York	NY	6840	Rochester	Rochester
36117	36	89339	Wayne County	New York	NY	6840	Rochester	Rochester
36007	36	189420	Broome County	New York	NY	960	Binghamton	Binghamton
36107	36	47904	Tioga County	New York	NY	960	Binghamton	Binghamton
36011	36	76029	Cayuga County	New York	NY	8160	Syracuse	Syracuse
36053	36	70478	Madison County	New York	NY	8160	Syracuse	Syracuse
36067	36	459214	Onondaga County	New York	NY	8160	Syracuse	Syracuse
36075	36	116346	Oswego County	New York	NY	8160	Syracuse	Syracuse
40143	40	657589	Tulsa County	Oklahoma	OK	8560	Tulsa	Tulsa
40131	40	93155	Rogers County	Oklahoma	OK	8560	Tulsa	Tulsa
40145	40	82925	Wagoner County	Oklahoma	OK	8560	Tulsa	Tulsa
40113	40	46642	Osage County	Oklahoma	OK	8560	Tulsa	Tulsa
40037	40	71485	Creek County	Oklahoma	OK	8560	Tulsa	Tulsa
40125	40	72998	Pottawatomie County	Oklahoma	OK	5880	Oklahoma City	OklahomaCity
40087	40	41348	McClain County	Oklahoma	OK	5880	Oklahoma City	OklahomaCity
40083	40	48777	Logan County	Oklahoma	OK	5880	Oklahoma City	OklahomaCity
40027	40	287066	Cleveland County	Oklahoma	OK	5880	Oklahoma City	OklahomaCity
40109	40	804041	Oklahoma County	Oklahoma	OK	5880	Oklahoma City	OklahomaCity
40017	40	153192	Canadian County	Oklahoma	OK	5880	Oklahoma City	OklahomaCity
51003	51	110652	Albemarle County	Virginia	VA	1540	Charlottesville	Charlottesville
51079	51	20131	Greene County	Virginia	VA	1540	Charlottesville	Charlottesville
51065	51	27422	Fluvanna County	Virginia	VA	1540	Charlottesville	Charlottesville
51540	51	46950	Charlottesville city	Virginia	VA	1540	Charlottesville	Charlottesville
51680	51	81561	Lynchburg city	Virginia	VA	4640	Lynchburg	Lynchburg
51009	51	31667	Amherst County	Virginia	VA	4640	Lynchburg	Lynchburg
51019	51	79811	Bedford County	Virginia	VA	4640	Lynchburg	Lynchburg
51031	51	55304	Campbell County	Virginia	VA	4640	Lynchburg	Lynchburg
51169	51	21629	Scott County	Virginia	VA	3660	Johnson City/Kingsport/Bristol	JohnsonCity
51191	51	53695	Washington County	Virginia	VA	3660	Johnson City/Kingsport/Bristol	JohnsonCity
51520	51	17329	Bristol city	Virginia	VA	3660	Johnson City/Kingsport/Bristol	JohnsonCity
51650	51	135464	Hampton city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51199	51	69199	York County	Virginia	VA	5720	Norfolk Area	NorfolkVA
51093	51	37725	Isle of Wight County	Virginia	VA	5720	Norfolk Area	NorfolkVA
51830	51	15259	Williamsburg city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51800	51	93913	Suffolk city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51095	51	77612	James City County	Virginia	VA	5720	Norfolk Area	NorfolkVA
51073	51	37459	Gloucester County	Virginia	VA	5720	Norfolk Area	NorfolkVA
51735	51	12257	Poquoson city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51810	51	451231	Virginia Beach city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51740	51	95094	Portsmouth city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51550	51	247011	Chesapeake city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51115	51	8766	Mathews County	Virginia	VA	5720	Norfolk Area	NorfolkVA
51710	51	242803	Norfolk city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51700	51	179062	Newport News city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51570	51	17205	Colonial Heights city	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51087	51	333766	Henrico County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51145	51	30148	Powhatan County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51760	51	232226	Richmond city	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51075	51	24431	Goochland County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51041	51	358245	Chesterfield County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51085	51	108262	Hanover County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51149	51	38686	Prince George County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51036	51	6821	Charles City County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51127	51	23648	New Kent County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51730	51	30446	Petersburg city	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51053	51	28688	Dinwiddie County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51670	51	22375	Hopewell city	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51600	51	23429	Fairfax city	Virginia	VA	8840	Greater DC Area	DC
51510	51	158726	Alexandria city	Virginia	VA	8840	Greater DC Area	DC
51685	51	18004	Manassas Park city	Virginia	VA	8840	Greater DC Area	DC
51059	51	1150847	Fairfax County	Virginia	VA	8840	Greater DC Area	DC
51187	51	40475	Warren County	Virginia	VA	8840	Greater DC Area	DC
51013	51	240119	Arlington County	Virginia	VA	8840	Greater DC Area	DC
51630	51	29492	Fredericksburg city	Virginia	VA	8840	Greater DC Area	DC
51153	51	475533	Prince William County	Virginia	VA	8840	Greater DC Area	DC
51107	51	422784	Loudoun County	Virginia	VA	8840	Greater DC Area	DC
51043	51	14622	Clarke County	Virginia	VA	8840	Greater DC Area	DC
51179	51	156748	Stafford County	Virginia	VA	8840	Greater DC Area	DC
51683	51	40869	Manassas city	Virginia	VA	8840	Greater DC Area	DC
51061	51	71361	Fauquier County	Virginia	VA	8840	Greater DC Area	DC
51610	51	14631	Falls Church city	Virginia	VA	8840	Greater DC Area	DC
51177	51	138449	Spotsylvania County	Virginia	VA	8840	Greater DC Area	DC
51023	51	33633	Botetourt County	Virginia	VA	6800	Roanoke	Roanoke
51161	51	94509	Roanoke County	Virginia	VA	6800	Roanoke	Roanoke
51770	51	99058	Roanoke city	Virginia	VA	6800	Roanoke	Roanoke
51775	51	25340	Salem city	Virginia	VA	6800	Roanoke	Roanoke
22079	22	128567	Rapides Parish	Louisiana	LA	220	Alexandria Area	Alexandria
22015	22	127275	Bossier Parish	Louisiana	LA	7680	Shreveport	Shreveport
22017	22	237479	Caddo Parish	Louisiana	LA	7680	Shreveport	Shreveport
22119	22	37943	Webster Parish	Louisiana	LA	7680	Shreveport	Shreveport
22001	22	61918	Acadia Parish	Louisiana	LA	3880	Lafayette (LA)	Lafayette
22099	22	52954	St. Martin Parish	Louisiana	LA	3880	Lafayette (LA)	Lafayette
22097	22	81440	St. Landry Parish	Louisiana	LA	3880	Lafayette (LA)	Lafayette
22055	22	246518	Lafayette Parish	Louisiana	LA	3880	Lafayette (LA)	Lafayette
22093	22	20727	St. James Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22071	22	389476	Orleans Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22075	22	23113	Plaquemines Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22095	22	42516	St. John the Baptist Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22087	22	47647	St. Bernard Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22089	22	52987	St. Charles Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22103	22	263446	St. Tammany Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22051	22	432346	Jefferson Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22121	22	26792	West Baton Rouge Parish	Louisiana	LA	760	Baton Rouge	BatonRouge
22063	22	143737	Livingston Parish	Louisiana	LA	760	Baton Rouge	BatonRouge
22033	22	439729	East Baton Rouge Parish	Louisiana	LA	760	Baton Rouge	BatonRouge
27141	27	98811	Sherburne County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27053	27	1268408	Hennepin County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27059	27	41429	Isanti County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27171	27	140249	Wright County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27037	27	431807	Dakota County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27139	27	150689	Scott County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27025	27	56794	Chisago County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27003	27	359921	Anoka County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27163	27	265476	Washington County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27019	27	106565	Carver County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27123	27	547903	Ramsey County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
47173	47	20187	Union County	Tennessee	TN	3840	Knoxville	Knoxville
47155	47	99244	Sevier County	Tennessee	TN	3840	Knoxville	Knoxville
47009	47	134751	Blount County	Tennessee	TN	3840	Knoxville	Knoxville
47093	47	475609	Knox County	Tennessee	TN	3840	Knoxville	Knoxville
47001	47	77558	Anderson County	Tennessee	TN	3840	Knoxville	Knoxville
47105	47	54910	Loudon County	Tennessee	TN	3840	Knoxville	Knoxville
47065	47	371662	Hamilton County	Tennessee	TN	1560	Chattanooga	Chattanooga
47047	47	41620	Fayette County	Tennessee	TN	4920	Memphis	Memphis
47167	47	61918	Tipton County	Tennessee	TN	4920	Memphis	Memphis
47157	47	936017	Shelby County	Tennessee	TN	4920	Memphis	Memphis
47163	47	158755	Sullivan County	Tennessee	TN	3660	Johnson City/Kingsport/Bristol	JohnsonCity
47073	47	56775	Hawkins County	Tennessee	TN	3660	Johnson City/Kingsport/Bristol	JohnsonCity
47179	47	130367	Washington County	Tennessee	TN	3660	Johnson City/Kingsport/Bristol	JohnsonCity
47171	47	17755	Unicoi County	Tennessee	TN	3660	Johnson City/Kingsport/Bristol	JohnsonCity
47019	47	56418	Carter County	Tennessee	TN	3660	Johnson City/Kingsport/Bristol	JohnsonCity
47125	47	214251	Montgomery County	Tennessee	TN	1660	Clarksville	Clarksville
47037	47	694176	Davidson County	Tennessee	TN	5360	Nashville	Nashville
47149	47	339261	Rutherford County	Tennessee	TN	5360	Nashville	Nashville
47165	47	195561	Sumner County	Tennessee	TN	5360	Nashville	Nashville
47187	47	245348	Williamson County	Tennessee	TN	5360	Nashville	Nashville
47021	47	41101	Cheatham County	Tennessee	TN	5360	Nashville	Nashville
47147	47	72275	Robertson County	Tennessee	TN	5360	Nashville	Nashville
47043	47	54376	Dickson County	Tennessee	TN	5360	Nashville	Nashville
47189	47	148130	Wilson County	Tennessee	TN	5360	Nashville	Nashville
55093	55	42700	Pierce County	Wisconsin	WI	5120	Minneapolis/St. Paul	MinneapolisStPaul
55109	55	91838	St. Croix County	Wisconsin	WI	5120	Minneapolis/St. Paul	MinneapolisStPaul
55015	55	50209	Calumet County	Wisconsin	WI	460	Appleton	Appleton
55087	55	188766	Outagamie County	Wisconsin	WI	460	Appleton	Appleton
55139	55	171631	Winnebago County	Wisconsin	WI	460	Appleton	Appleton
55079	55	945016	Milwaukee County	Wisconsin	WI	5080	Milwaukee Area	Milwaukee
55089	55	90043	Ozaukee County	Wisconsin	WI	5080	Milwaukee Area	Milwaukee
55133	55	406172	Waukesha County	Wisconsin	WI	5080	Milwaukee Area	Milwaukee
55131	55	136445	Washington County	Wisconsin	WI	5080	Milwaukee Area	Milwaukee
06067	06	1559146	Sacramento County	California	CA	6920	Sacramento Area	Sacramento
06017	06	192925	El Dorado County	California	CA	6920	Sacramento Area	Sacramento
06061	06	402950	Placer County	California	CA	6920	Sacramento Area	Sacramento
06075	06	866606	San Francisco County	California	CA	1040	Bay Area	BayArea
06081	06	758308	San Mateo County	California	CA	1040	Bay Area	BayArea
06013	06	1152333	Contra Costa County	California	CA	1040	Bay Area	BayArea
06001	06	1662323	Alameda County	California	CA	1040	Bay Area	BayArea
06041	06	257332	Marin County	California	CA	1040	Bay Area	BayArea
06085	06	1907105	Santa Clara County	California	CA	1040	Bay Area	BayArea
34013	34	800501	Essex County	New Jersey	NJ	5640	Newark	Newark
34037	34	140002	Sussex County	New Jersey	NJ	5640	Newark	Newark
34041	34	105624	Warren County	New Jersey	NJ	5640	Newark	Newark
34039	34	555394	Union County	New Jersey	NJ	5640	Newark	Newark
34027	34	491087	Morris County	New Jersey	NJ	5640	Newark	Newark
34005	34	446596	Burlington County	New Jersey	NJ	6160	Philadelphia	Philly
34015	34	293245	Gloucester County	New Jersey	NJ	6160	Philadelphia	Philly
34007	34	506809	Camden County	New Jersey	NJ	6160	Philadelphia	Philly
34033	34	62451	Salem County	New Jersey	NJ	6160	Philadelphia	Philly
34001	34	262945	Atlantic County	New Jersey	NJ	560	Atlantic/Cape May	AtlanticMay
34009	34	91546	Cape May County	New Jersey	NJ	560	Atlantic/Cape May	AtlanticMay
34003	34	930394	Bergen County	New Jersey	NJ	875	Bergen/Passaic	Bergen
34031	34	500382	Passaic County	New Jersey	NJ	875	Bergen/Passaic	Bergen
34023	34	822736	Middlesex County	New Jersey	NJ	5015	Middlesex Area	MiddlesexNJ
34035	34	329331	Somerset County	New Jersey	NJ	5015	Middlesex Area	MiddlesexNJ
34019	34	124797	Hunterdon County	New Jersey	NJ	5015	Middlesex Area	MiddlesexNJ
35001	35	681666	Bernalillo County	New Mexico	NM	200	Albuquerque Area	Albuquerque
35043	35	148904	Sandoval County	New Mexico	NM	200	Albuquerque Area	Albuquerque
35061	35	77574	Valencia County	New Mexico	NM	200	Albuquerque Area	Albuquerque
53011	53	496865	Clark County	Washington	WA	6440	Portland	Portland
53033	53	2274315	King County	Washington	WA	7600	Seattle Area	Seattle
53061	53	830393	Snohomish County	Washington	WA	7600	Seattle Area	Seattle
53029	53	86014	Island County	Washington	WA	7600	Seattle Area	Seattle
09003	09	889226	Hartford County	Connecticut	CT	3283	Greater Hartford Area	Hartford
09013	09	150600	Tolland County	Connecticut	CT	3283	Greater Hartford Area	Hartford
09007	09	161657	Middlesex County	Connecticut	CT	3283	Greater Hartford Area	Hartford
28033	28	188275	DeSoto County	Mississippi	MS	4920	Memphis	Memphis
28045	28	48000	Hancock County	Mississippi	MS	920	Biloxi/Gulfport/Pascogoula	Biloxi
28047	28	208801	Harrison County	Mississippi	MS	920	Biloxi/Gulfport/Pascogoula	Biloxi
28059	28	143802	Jackson County	Mississippi	MS	920	Biloxi/Gulfport/Pascogoula	Biloxi
28089	28	106871	Madison County	Mississippi	MS	3560	Jackson	Jackson
28049	28	227966	Hinds County	Mississippi	MS	3560	Jackson	Jackson
28121	28	155975	Rankin County	Mississippi	MS	3560	Jackson	Jackson
38059	38	31503	Morton County	North Dakota	ND	1010	Bismarck	Bismarck
38015	38	96212	Burleigh County	North Dakota	ND	1010	Bismarck	Bismarck
42091	42	833869	Montgomery County	Pennsylvania	PA	6160	Philadelphia	Philly
42017	42	627987	Bucks County	Pennsylvania	PA	6160	Philadelphia	Philly
42029	42	526759	Chester County	Pennsylvania	PA	6160	Philadelphia	Philly
42045	42	566753	Delaware County	Pennsylvania	PA	6160	Philadelphia	Philly
42101	42	1578487	Philadelphia County	Pennsylvania	PA	6160	Philadelphia	Philly
42125	42	206803	Washington County	Pennsylvania	PA	6280	Pittsburgh	Pittsburgh
42007	42	162575	Beaver County	Pennsylvania	PA	6280	Pittsburgh	Pittsburgh
42129	42	347087	Westmoreland County	Pennsylvania	PA	6280	Pittsburgh	Pittsburgh
42019	42	189135	Butler County	Pennsylvania	PA	6280	Pittsburgh	Pittsburgh
42051	42	128126	Fayette County	Pennsylvania	PA	6280	Pittsburgh	Pittsburgh
42003	42	1211358	Allegheny County	Pennsylvania	PA	6280	Pittsburgh	Pittsburgh
42079	42	316982	Luzerne County	Pennsylvania	PA	7560	Scranton	Scranton
42037	42	64842	Columbia County	Pennsylvania	PA	7560	Scranton	Scranton
42069	42	208989	Lackawanna County	Pennsylvania	PA	7560	Scranton	Scranton
42131	42	26557	Wyoming County	Pennsylvania	PA	7560	Scranton	Scranton
42075	42	141663	Lebanon County	Pennsylvania	PA	3240	Harrisburg Area	Harrisburg
42099	42	46212	Perry County	Pennsylvania	PA	3240	Harrisburg Area	Harrisburg
42041	42	255857	Cumberland County	Pennsylvania	PA	3240	Harrisburg Area	Harrisburg
42043	42	279874	Dauphin County	Pennsylvania	PA	3240	Harrisburg Area	Harrisburg
42077	42	370802	Lehigh County	Pennsylvania	PA	240	Allentown Area	Allentown
42095	42	305892	Northampton County	Pennsylvania	PA	240	Allentown Area	Allentown
42025	42	64081	Carbon County	Pennsylvania	PA	240	Allentown Area	Allentown
44001	44	48350	Bristol County	Rhode Island	RI	6483	Providence Area	ProvidenceRI
44003	44	164646	Kent County	Rhode Island	RI	6483	Providence Area	ProvidenceRI
44007	44	636547	Providence County	Rhode Island	RI	6483	Providence Area	ProvidenceRI
44009	44	125746	Washington County	Rhode Island	RI	6483	Providence Area	ProvidenceRI
25013	25	463986	Hampden County	Massachusetts	MA	8003	Springfield MA	Springfield_MA
25015	25	161401	Hampshire County	Massachusetts	MA	8003	Springfield MA	Springfield_MA
25005	25	566765	Bristol County	Massachusetts	MA	1123	Greater Boston Area	Boston
25009	25	791263	Essex County	Massachusetts	MA	1123	Greater Boston Area	Boston
25027	25	829212	Worcester County	Massachusetts	MA	1123	Greater Boston Area	Boston
25021	25	709409	Norfolk County	Massachusetts	MA	1123	Greater Boston Area	Boston
25025	25	801582	Suffolk County	Massachusetts	MA	1123	Greater Boston Area	Boston
25023	25	523738	Plymouth County	Massachusetts	MA	1123	Greater Boston Area	Boston
25017	25	1609379	Middlesex County	Massachusetts	MA	1123	Greater Boston Area	Boston
33017	33	131533	Strafford County	New Hampshire	NH	1123	Greater Boston Area	Boston
33015	33	311307	Rockingham County	New Hampshire	NH	1123	Greater Boston Area	Boston
33011	33	418735	Hillsborough County	New Hampshire	NH	1123	Greater Boston Area	Boston
54069	54	41182	Ohio County	West Virginia	WV	9000	Wheeling	Wheeling
54051	54	30103	Marshall County	West Virginia	WV	9000	Wheeling	Wheeling
54099	54	39054	Wayne County	West Virginia	WV	3400	Huntingon/Ashland	HuntingtonAshland
54011	54	91589	Cabell County	West Virginia	WV	3400	Huntingon/Ashland	HuntingtonAshland
54057	54	26722	Mineral County	West Virginia	WV	1900	Cumberland	Cumberland
54037	54	57486	Jefferson County	West Virginia	WV	8840	Greater DC Area	DC
54029	54	28571	Hancock County	West Virginia	WV	8080	Steubenville	Steubenville
54009	54	21674	Brooke County	West Virginia	WV	8080	Steubenville	Steubenville
54079	54	56428	Putnam County	West Virginia	WV	1480	Charleston	Charleston
54039	54	176253	Kanawha County	West Virginia	WV	1480	Charleston	Charleston
37151	37	144557	Randolph County	North Carolina	NC	3120	Greensboro Area	Greensboro
37067	37	383843	Forsyth County	North Carolina	NC	3120	Greensboro Area	Greensboro
37059	37	43286	Davie County	North Carolina	NC	3120	Greensboro Area	Greensboro
37169	37	45743	Stokes County	North Carolina	NC	3120	Greensboro Area	Greensboro
37001	37	171346	Alamance County	North Carolina	NC	3120	Greensboro Area	Greensboro
37197	37	37625	Yadkin County	North Carolina	NC	3120	Greensboro Area	Greensboro
37057	37	169234	Davidson County	North Carolina	NC	3120	Greensboro Area	Greensboro
37081	37	540521	Guilford County	North Carolina	NC	3120	Greensboro Area	Greensboro
37053	37	29052	Currituck County	North Carolina	NC	5720	Norfolk Area	NorfolkVA
37003	37	37441	Alexander County	North Carolina	NC	3290	Hickory/Morganton/Lenoir	Hickory
37023	37	90418	Burke County	North Carolina	NC	3290	Hickory/Morganton/Lenoir	Hickory
37027	37	82100	Caldwell County	North Carolina	NC	3290	Hickory/Morganton/Lenoir	Hickory
37035	37	160307	Catawba County	North Carolina	NC	3290	Hickory/Morganton/Lenoir	Hickory
37115	37	21740	Madison County	North Carolina	NC	480	Asheville Area	Asheville
37021	37	263477	Buncombe County	North Carolina	NC	480	Asheville Area	Asheville
37109	37	88097	Lincoln County	North Carolina	NC	1520	Greater Charlotte Area	Charlotte
37119	37	1128945	Mecklenburg County	North Carolina	NC	1520	Greater Charlotte Area	Charlotte
37159	37	142495	Rowan County	North Carolina	NC	1520	Greater Charlotte Area	Charlotte
37179	37	244562	Union County	North Carolina	NC	1520	Greater Charlotte Area	Charlotte
37025	37	221479	Cabarrus County	North Carolina	NC	1520	Greater Charlotte Area	Charlotte
37071	37	226568	Gaston County	North Carolina	NC	1520	Greater Charlotte Area	Charlotte
37183	37	1132271	Wake County	North Carolina	NC	6640	Raleigh/Chapel Hill Area	RaleighChapelHill
37135	37	149077	Orange County	North Carolina	NC	6640	Raleigh/Chapel Hill Area	RaleighChapelHill
37069	37	71859	Franklin County	North Carolina	NC	6640	Raleigh/Chapel Hill Area	RaleighChapelHill
37101	37	216246	Johnston County	North Carolina	NC	6640	Raleigh/Chapel Hill Area	RaleighChapelHill
37063	37	327306	Durham County	North Carolina	NC	6640	Raleigh/Chapel Hill Area	RaleighChapelHill
37037	37	75748	Chatham County	North Carolina	NC	6640	Raleigh/Chapel Hill Area	RaleighChapelHill
45003	45	172895	Aiken County	South Carolina	SC	600	Augusta/Aiken	AugustaAiken
45037	45	27120	Edgefield County	South Carolina	SC	600	Augusta/Aiken	AugustaAiken
45007	45	204353	Anderson County	South Carolina	SC	3160	Greenville Area	Greenville
45083	45	326205	Spartanburg County	South Carolina	SC	3160	Greenville Area	Greenville
45045	45	532486	Greenville County	South Carolina	SC	3160	Greenville Area	Greenville
45077	45	127983	Pickens County	South Carolina	SC	3160	Greenville Area	Greenville
45021	45	57316	Cherokee County	South Carolina	SC	3160	Greenville Area	Greenville
45019	45	417981	Charleston County	South Carolina	SC	1440	Greater Charleston Area	Charleston
45035	45	165737	Dorchester County	South Carolina	SC	1440	Greater Charleston Area	Charleston
45015	45	235987	Berkeley County	South Carolina	SC	1440	Greater Charleston Area	Charleston
45079	45	419051	Richland County	South Carolina	SC	1760	Columbia (SC)	Columbia
45063	45	303946	Lexington County	South Carolina	SC	1760	Columbia (SC)	Columbia
45091	45	289105	York County	South Carolina	SC	1520	Greater Charlotte Area	Charlotte
11001	11	712816	District of Columbia	District of Columbia	DC	8840	Greater DC Area	DC
01127	01	63143	Walker County	Alabama	AL	\N	\N	\N
48389	48	15949	Reeves County	Texas	TX	\N	\N	\N
56017	56	4425	Hot Springs County	Wyoming	WY	\N	\N	\N
72085	72	\N	Las Piedras Municipio	Puerto Rico	PR	\N	\N	\N
37147	37	182924	Pitt County	North Carolina	NC	\N	\N	\N
05053	05	18449	Grant County	Arkansas	AR	\N	\N	\N
47123	47	47177	Monroe County	Tennessee	TN	\N	\N	\N
36059	36	1351334	Nassau County	New York	NY	\N	\N	\N
42057	42	14501	Fulton County	Pennsylvania	PA	\N	\N	\N
20031	20	8158	Coffey County	Kansas	KS	\N	\N	\N
40129	40	3570	Roger Mills County	Oklahoma	OK	\N	\N	\N
23031	23	209066	York County	Maine	ME	\N	\N	\N
12119	12	139018	Sumter County	Florida	FL	\N	\N	\N
18045	18	16511	Fountain County	Indiana	IN	\N	\N	\N
48343	48	12393	Morris County	Texas	TX	\N	\N	\N
05141	05	16541	Van Buren County	Arkansas	AR	\N	\N	\N
47181	47	16524	Wayne County	Tennessee	TN	\N	\N	\N
48153	48	5672	Floyd County	Texas	TX	\N	\N	\N
28087	28	58309	Lowndes County	Mississippi	MS	\N	\N	\N
19097	19	19205	Jackson County	Iowa	IA	\N	\N	\N
17155	17	5716	Putnam County	Illinois	IL	\N	\N	\N
45073	45	80015	Oconee County	South Carolina	SC	\N	\N	\N
37143	37	13667	Perquimans County	North Carolina	NC	\N	\N	\N
28035	28	75009	Forrest County	Mississippi	MS	\N	\N	\N
31027	31	8414	Cedar County	Nebraska	NE	\N	\N	\N
39059	39	38779	Guernsey County	Ohio	OH	\N	\N	\N
49007	49	20760	Carbon County	Utah	UT	\N	\N	\N
20053	20	6034	Ellsworth County	Kansas	KS	\N	\N	\N
27113	27	13874	Pennington County	Minnesota	MN	\N	\N	\N
18131	18	12388	Pulaski County	Indiana	IN	\N	\N	\N
28003	28	36889	Alcorn County	Mississippi	MS	\N	\N	\N
50009	50	6123	Essex County	Vermont	VT	\N	\N	\N
13253	13	8060	Seminole County	Georgia	GA	\N	\N	\N
17181	17	16498	Union County	Illinois	IL	\N	\N	\N
20095	20	6974	Kingman County	Kansas	KS	\N	\N	\N
29199	29	4871	Scotland County	Missouri	MO	\N	\N	\N
48125	48	2140	Dickens County	Texas	TX	\N	\N	\N
37193	37	68043	Wilkes County	North Carolina	NC	\N	\N	\N
27081	27	5568	Lincoln County	Minnesota	MN	\N	\N	\N
48369	48	9522	Parmer County	Texas	TX	\N	\N	\N
02063	02	6427	Chugach Census Area	Alaska	AK	\N	\N	\N
51035	51	30074	Carroll County	Virginia	VA	\N	\N	\N
47033	47	14180	Crockett County	Tennessee	TN	\N	\N	\N
29143	29	16693	New Madrid County	Missouri	MO	\N	\N	\N
48275	48	3683	Knox County	Texas	TX	\N	\N	\N
26089	26	21743	Leelanau County	Michigan	MI	\N	\N	\N
35051	35	10867	Sierra County	New Mexico	NM	\N	\N	\N
48195	48	5279	Hansford County	Texas	TX	\N	\N	\N
27079	27	28741	Le Sueur County	Minnesota	MN	\N	\N	\N
72131	72	\N	San Sebastián Municipio	Puerto Rico	PR	\N	\N	\N
37129	37	236613	New Hanover County	North Carolina	NC	\N	\N	\N
26013	26	8164	Baraga County	Michigan	MI	\N	\N	\N
39143	39	58351	Sandusky County	Ohio	OH	\N	\N	\N
48465	48	49028	Val Verde County	Texas	TX	\N	\N	\N
48279	48	12710	Lamb County	Texas	TX	\N	\N	\N
37041	37	13815	Chowan County	North Carolina	NC	\N	\N	\N
51109	51	38132	Louisa County	Virginia	VA	\N	\N	\N
51820	51	22741	Waynesboro city	Virginia	VA	\N	\N	\N
21229	21	12147	Washington County	Kentucky	KY	\N	\N	\N
27029	27	9017	Clearwater County	Minnesota	MN	\N	\N	\N
17061	17	12702	Greene County	Illinois	IL	\N	\N	\N
51071	51	16663	Giles County	Virginia	VA	\N	\N	\N
72151	72	\N	Yabucoa Municipio	Puerto Rico	PR	\N	\N	\N
20083	20	1779	Hodgeman County	Kansas	KS	\N	\N	\N
72145	72	\N	Vega Baja Municipio	Puerto Rico	PR	\N	\N	\N
20045	20	122530	Douglas County	Kansas	KS	\N	\N	\N
20127	20	5559	Morris County	Kansas	KS	\N	\N	\N
55019	55	34720	Clark County	Wisconsin	WI	\N	\N	\N
30025	30	2826	Fallon County	Montana	MT	\N	\N	\N
55011	55	13033	Buffalo County	Wisconsin	WI	\N	\N	\N
41023	41	7180	Grant County	Oregon	OR	\N	\N	\N
22023	22	7003	Cameron Parish	Louisiana	LA	\N	\N	\N
22013	22	12983	Bienville Parish	Louisiana	LA	\N	\N	\N
13193	13	12712	Macon County	Georgia	GA	\N	\N	\N
01003	01	229287	Baldwin County	Alabama	AL	\N	\N	\N
20187	20	1969	Stanton County	Kansas	KS	\N	\N	\N
72097	72	\N	Mayagüez Municipio	Puerto Rico	PR	\N	\N	\N
38057	38	8174	Mercer County	North Dakota	ND	\N	\N	\N
55035	55	105260	Eau Claire County	Wisconsin	WI	\N	\N	\N
47077	47	28076	Henderson County	Tennessee	TN	\N	\N	\N
29079	29	9595	Grundy County	Missouri	MO	\N	\N	\N
23000	23	\N	Maine Unknown	Maine	ME	\N	\N	\N
48005	48	86796	Angelina County	Texas	TX	\N	\N	\N
46061	46	3489	Hanson County	South Dakota	SD	\N	\N	\N
48271	48	3670	Kinney County	Texas	TX	\N	\N	\N
40043	40	4815	Dewey County	Oklahoma	OK	\N	\N	\N
48325	48	52358	Medina County	Texas	TX	\N	\N	\N
08051	08	17593	Gunnison County	Colorado	CO	\N	\N	\N
08000	08	\N	Colorado Unknown	Colorado	CO	\N	\N	\N
30045	30	1994	Judith Basin County	Montana	MT	\N	\N	\N
53001	53	20027	Adams County	Washington	WA	\N	\N	\N
19109	19	14680	Kossuth County	Iowa	IA	\N	\N	\N
19075	19	12217	Grundy County	Iowa	IA	\N	\N	\N
23005	23	298111	Cumberland County	Maine	ME	\N	\N	\N
48171	48	26960	Gillespie County	Texas	TX	\N	\N	\N
40093	40	7579	Major County	Oklahoma	OK	\N	\N	\N
12013	12	14078	Calhoun County	Florida	FL	\N	\N	\N
48059	48	14110	Callahan County	Texas	TX	\N	\N	\N
46109	46	10331	Roberts County	South Dakota	SD	\N	\N	\N
27147	27	36596	Steele County	Minnesota	MN	\N	\N	\N
42027	42	161496	Centre County	Pennsylvania	PA	\N	\N	\N
16013	16	23426	Blaine County	Idaho	ID	\N	\N	\N
13123	13	31978	Gilmer County	Georgia	GA	\N	\N	\N
72045	72	\N	Comerío Municipio	Puerto Rico	PR	\N	\N	\N
41019	41	111364	Douglas County	Oregon	OR	\N	\N	\N
49000	49	\N	Utah Unknown	Utah	UT	\N	\N	\N
19179	19	34985	Wapello County	Iowa	IA	\N	\N	\N
13023	13	12955	Bleckley County	Georgia	GA	\N	\N	\N
55117	55	115240	Sheboygan County	Wisconsin	WI	\N	\N	\N
21161	21	17035	Mason County	Kentucky	KY	\N	\N	\N
08015	08	20661	Chaffee County	Colorado	CO	\N	\N	\N
13003	13	8393	Atkinson County	Georgia	GA	\N	\N	\N
02198	02	6147	Prince of Wales-Hyder Census Area	Alaska	AK	\N	\N	\N
22085	22	23803	Sabine Parish	Louisiana	LA	\N	\N	\N
55099	55	13245	Price County	Wisconsin	WI	\N	\N	\N
20175	20	21038	Seward County	Kansas	KS	\N	\N	\N
37011	37	17571	Avery County	North Carolina	NC	\N	\N	\N
18083	18	36522	Knox County	Indiana	IN	\N	\N	\N
05069	05	65377	Jefferson County	Arkansas	AR	\N	\N	\N
30035	30	13594	Glacier County	Montana	MT	\N	\N	\N
48051	48	18514	Burleson County	Texas	TX	\N	\N	\N
13221	13	15383	Oglethorpe County	Georgia	GA	\N	\N	\N
13273	13	8523	Terrell County	Georgia	GA	\N	\N	\N
42011	42	421017	Berks County	Pennsylvania	PA	\N	\N	\N
18013	18	15112	Brown County	Indiana	IN	\N	\N	\N
38077	38	16156	Richland County	North Dakota	ND	\N	\N	\N
36111	36	177716	Ulster County	New York	NY	\N	\N	\N
16015	16	8065	Boise County	Idaho	ID	\N	\N	\N
49055	49	2759	Wayne County	Utah	UT	\N	\N	\N
41061	41	26551	Union County	Oregon	OR	\N	\N	\N
30101	30	4686	Toole County	Montana	MT	\N	\N	\N
05137	05	12674	Stone County	Arkansas	AR	\N	\N	\N
39123	39	40253	Ottawa County	Ohio	OH	\N	\N	\N
27173	27	9580	Yellow Medicine County	Minnesota	MN	\N	\N	\N
05041	05	11110	Desha County	Arkansas	AR	\N	\N	\N
22025	22	9226	Catahoula Parish	Louisiana	LA	\N	\N	\N
39161	39	28159	Van Wert County	Ohio	OH	\N	\N	\N
08111	08	748	San Juan County	Colorado	CO	\N	\N	\N
51077	51	15493	Grayson County	Virginia	VA	\N	\N	\N
18105	18	148219	Monroe County	Indiana	IN	\N	\N	\N
48429	48	9334	Stephens County	Texas	TX	\N	\N	\N
26001	26	10505	Alcona County	Michigan	MI	\N	\N	\N
54077	54	33380	Preston County	West Virginia	WV	\N	\N	\N
01039	01	36930	Covington County	Alabama	AL	\N	\N	\N
35023	35	4106	Hidalgo County	New Mexico	NM	\N	\N	\N
05061	05	13109	Howard County	Arkansas	AR	\N	\N	\N
46031	46	4031	Corson County	South Dakota	SD	\N	\N	\N
19021	19	19772	Buena Vista County	Iowa	IA	\N	\N	\N
39027	39	41921	Clinton County	Ohio	OH	\N	\N	\N
41031	41	24856	Jefferson County	Oregon	OR	\N	\N	\N
26047	26	33342	Emmet County	Michigan	MI	\N	\N	\N
53009	53	78067	Clallam County	Washington	WA	\N	\N	\N
28023	28	15299	Clarke County	Mississippi	MS	\N	\N	\N
48031	48	12269	Blanco County	Texas	TX	\N	\N	\N
05117	05	7966	Prairie County	Arkansas	AR	\N	\N	\N
28015	28	9732	Carroll County	Mississippi	MS	\N	\N	\N
17015	17	14241	Carroll County	Illinois	IL	\N	\N	\N
12115	12	443465	Sarasota County	Florida	FL	\N	\N	\N
12071	12	790767	Lee County	Florida	FL	\N	\N	\N
29205	29	5919	Shelby County	Missouri	MO	\N	\N	\N
02997	02	\N	Multicounty, Not Statewide Alaska	Alaska	AK	\N	\N	\N
27011	27	4923	Big Stone County	Minnesota	MN	\N	\N	\N
31031	31	5781	Cherry County	Nebraska	NE	\N	\N	\N
06021	06	28283	Glenn County	California	CA	\N	\N	\N
31003	31	6264	Antelope County	Nebraska	NE	\N	\N	\N
20109	20	2732	Logan County	Kansas	KS	\N	\N	\N
47091	47	17849	Johnson County	Tennessee	TN	\N	\N	\N
29141	29	20716	Morgan County	Missouri	MO	\N	\N	\N
16031	16	24277	Cassia County	Idaho	ID	\N	\N	\N
15005	15	87	Kalawao County	Hawaii	HI	\N	\N	\N
48129	48	3308	Donley County	Texas	TX	\N	\N	\N
37103	37	9250	Jones County	North Carolina	NC	\N	\N	\N
51121	51	98391	Montgomery County	Virginia	VA	\N	\N	\N
08081	08	13144	Moffat County	Colorado	CO	\N	\N	\N
47109	47	25696	McNairy County	Tennessee	TN	\N	\N	\N
20033	20	1690	Comanche County	Kansas	KS	\N	\N	\N
21057	21	6523	Cumberland County	Kentucky	KY	\N	\N	\N
18171	18	8194	Warren County	Indiana	IN	\N	\N	\N
29031	29	79512	Cape Girardeau County	Missouri	MO	\N	\N	\N
04012	04	21480	La Paz County	Arizona	AZ	\N	\N	\N
48205	48	5443	Hartley County	Texas	TX	\N	\N	\N
72079	72	\N	Lajas Municipio	Puerto Rico	PR	\N	\N	\N
21091	21	8742	Hancock County	Kentucky	KY	\N	\N	\N
66000	66	\N	Guam Unknown	Guam	GU	\N	\N	\N
41035	41	68739	Klamath County	Oregon	OR	\N	\N	\N
22113	22	59378	Vermilion Parish	Louisiana	LA	\N	\N	\N
26113	26	15152	Missaukee County	Michigan	MI	\N	\N	\N
29000	29	\N	Missouri Unknown	Missouri	MO	\N	\N	\N
05037	05	16142	Cross County	Arkansas	AR	\N	\N	\N
29075	29	6484	Gentry County	Missouri	MO	\N	\N	\N
09015	09	116540	Windham County	Connecticut	CT	\N	\N	\N
28091	28	24441	Marion County	Mississippi	MS	\N	\N	\N
20011	20	14435	Bourbon County	Kansas	KS	\N	\N	\N
35025	35	71830	Lea County	New Mexico	NM	\N	\N	\N
13011	13	19352	Banks County	Georgia	GA	\N	\N	\N
28115	28	32461	Pontotoc County	Mississippi	MS	\N	\N	\N
29123	29	12113	Madison County	Missouri	MO	\N	\N	\N
35041	35	18350	Roosevelt County	New Mexico	NM	\N	\N	\N
48035	48	18603	Bosque County	Texas	TX	\N	\N	\N
30039	30	3317	Granite County	Montana	MT	\N	\N	\N
48169	48	6222	Garza County	Texas	TX	\N	\N	\N
40105	40	10076	Nowata County	Oklahoma	OK	\N	\N	\N
47177	47	41605	Warren County	Tennessee	TN	\N	\N	\N
02261	02	\N	Valdez-Cordova Census Area	Alaska	AK	\N	\N	\N
28111	28	11862	Perry County	Mississippi	MS	\N	\N	\N
09009	09	851948	New Haven County	Connecticut	CT	\N	\N	\N
35045	35	123312	San Juan County	New Mexico	NM	\N	\N	\N
21177	21	30457	Muhlenberg County	Kentucky	KY	\N	\N	\N
49037	49	15278	San Juan County	Utah	UT	\N	\N	\N
29035	29	5991	Carter County	Missouri	MO	\N	\N	\N
37107	37	55720	Lenoir County	North Carolina	NC	\N	\N	\N
04005	04	142481	Coconino County	Arizona	AZ	\N	\N	\N
20143	20	5712	Ottawa County	Kansas	KS	\N	\N	\N
72035	72	\N	Cayey Municipio	Puerto Rico	PR	\N	\N	\N
40051	40	55906	Grady County	Oklahoma	OK	\N	\N	\N
48233	48	20677	Hutchinson County	Texas	TX	\N	\N	\N
13099	13	10037	Early County	Georgia	GA	\N	\N	\N
56045	56	6743	Weston County	Wyoming	WY	\N	\N	\N
46017	46	1956	Buffalo County	South Dakota	SD	\N	\N	\N
55119	55	20318	Taylor County	Wisconsin	WI	\N	\N	\N
17145	17	20664	Perry County	Illinois	IL	\N	\N	\N
27021	27	29928	Cass County	Minnesota	MN	\N	\N	\N
06099	06	550081	Stanislaus County	California	CA	\N	\N	\N
47013	47	39837	Campbell County	Tennessee	TN	\N	\N	\N
48165	48	21996	Gaines County	Texas	TX	\N	\N	\N
47135	47	8099	Perry County	Tennessee	TN	\N	\N	\N
33007	33	31174	Coos County	New Hampshire	NH	\N	\N	\N
40099	40	13955	Murray County	Oklahoma	OK	\N	\N	\N
20201	20	5427	Washington County	Kansas	KS	\N	\N	\N
19041	19	15976	Clay County	Iowa	IA	\N	\N	\N
01049	01	71658	DeKalb County	Alabama	AL	\N	\N	\N
26105	26	29164	Mason County	Michigan	MI	\N	\N	\N
40061	40	12652	Haskell County	Oklahoma	OK	\N	\N	\N
27015	27	24846	Brown County	Minnesota	MN	\N	\N	\N
45057	45	100926	Lancaster County	South Carolina	SC	\N	\N	\N
28113	28	38997	Pike County	Mississippi	MS	\N	\N	\N
25019	25	11376	Nantucket County	Massachusetts	MA	\N	\N	\N
13321	13	19972	Worth County	Georgia	GA	\N	\N	\N
72051	72	\N	Dorado Municipio	Puerto Rico	PR	\N	\N	\N
51089	51	50309	Henry County	Virginia	VA	\N	\N	\N
13303	13	20150	Washington County	Georgia	GA	\N	\N	\N
08069	08	360428	Larimer County	Colorado	CO	\N	\N	\N
51037	51	11820	Charlotte County	Virginia	VA	\N	\N	\N
51101	51	17641	King William County	Virginia	VA	\N	\N	\N
17189	17	13764	Washington County	Illinois	IL	\N	\N	\N
29135	29	15585	Moniteau County	Missouri	MO	\N	\N	\N
33000	33	\N	New Hampshire Unknown	New Hampshire	NH	\N	\N	\N
48419	48	24915	Shelby County	Texas	TX	\N	\N	\N
17183	17	74855	Vermilion County	Illinois	IL	\N	\N	\N
26067	26	64553	Ionia County	Michigan	MI	\N	\N	\N
26085	26	11587	Lake County	Michigan	MI	\N	\N	\N
21000	21	\N	Kentucky Unknown	Kentucky	KY	\N	\N	\N
72093	72	\N	Maricao Municipio	Puerto Rico	PR	\N	\N	\N
72127	72	\N	San Juan Municipio	Puerto Rico	PR	\N	\N	\N
21101	21	44740	Henderson County	Kentucky	KY	\N	\N	\N
13283	13	6822	Treutlen County	Georgia	GA	\N	\N	\N
22035	22	6589	East Carroll Parish	Louisiana	LA	\N	\N	\N
51195	51	37206	Wise County	Virginia	VA	\N	\N	\N
48037	48	93481	Bowie County	Texas	TX	\N	\N	\N
50000	50	\N	Vermont Unknown	Vermont	VT	\N	\N	\N
01045	01	48959	Dale County	Alabama	AL	\N	\N	\N
29041	29	7360	Chariton County	Missouri	MO	\N	\N	\N
29055	29	23739	Crawford County	Missouri	MO	\N	\N	\N
42081	42	113209	Lycoming County	Pennsylvania	PA	\N	\N	\N
42063	42	83664	Indiana County	Pennsylvania	PA	\N	\N	\N
31137	31	9006	Phelps County	Nebraska	NE	\N	\N	\N
25001	25	213164	Barnstable County	Massachusetts	MA	\N	\N	\N
06025	06	180267	Imperial County	California	CA	\N	\N	\N
19065	19	19258	Fayette County	Iowa	IA	\N	\N	\N
18065	18	48033	Henry County	Indiana	IN	\N	\N	\N
72005	72	\N	Aguadilla Municipio	Puerto Rico	PR	\N	\N	\N
26079	26	18003	Kalkaska County	Michigan	MI	\N	\N	\N
46117	46	3121	Stanley County	South Dakota	SD	\N	\N	\N
46029	46	28186	Codington County	South Dakota	SD	\N	\N	\N
17011	17	32303	Bureau County	Illinois	IL	\N	\N	\N
05049	05	12381	Fulton County	Arkansas	AR	\N	\N	\N
30063	30	121630	Missoula County	Montana	MT	\N	\N	\N
48105	48	3513	Crockett County	Texas	TX	\N	\N	\N
13125	13	2984	Glascock County	Georgia	GA	\N	\N	\N
01099	01	20459	Monroe County	Alabama	AL	\N	\N	\N
72135	72	\N	Toa Alta Municipio	Puerto Rico	PR	\N	\N	\N
05135	05	17424	Sharp County	Arkansas	AR	\N	\N	\N
16085	16	11792	Valley County	Idaho	ID	\N	\N	\N
26021	26	153025	Berrien County	Michigan	MI	\N	\N	\N
36089	36	107185	St. Lawrence County	New York	NY	\N	\N	\N
72069	72	\N	Humacao Municipio	Puerto Rico	PR	\N	\N	\N
17049	17	34065	Effingham County	Illinois	IL	\N	\N	\N
17135	17	28045	Montgomery County	Illinois	IL	\N	\N	\N
36031	36	36891	Essex County	New York	NY	\N	\N	\N
12037	12	12201	Franklin County	Florida	FL	\N	\N	\N
29039	29	14322	Cedar County	Missouri	MO	\N	\N	\N
05017	05	9924	Chicot County	Arkansas	AR	\N	\N	\N
46000	46	\N	South Dakota Unknown	South Dakota	SD	\N	\N	\N
48317	48	5816	Martin County	Texas	TX	\N	\N	\N
72025	72	\N	Caguas Municipio	Puerto Rico	PR	\N	\N	\N
06053	06	430906	Monterey County	California	CA	\N	\N	\N
13109	13	10638	Evans County	Georgia	GA	\N	\N	\N
29097	29	121648	Jasper County	Missouri	MO	\N	\N	\N
42123	42	38911	Warren County	Pennsylvania	PA	\N	\N	\N
54091	54	16699	Taylor County	West Virginia	WV	\N	\N	\N
37113	37	35994	Macon County	North Carolina	NC	\N	\N	\N
72021	72	\N	Bayamón Municipio	Puerto Rico	PR	\N	\N	\N
42013	42	121007	Blair County	Pennsylvania	PA	\N	\N	\N
30005	30	6568	Blaine County	Montana	MT	\N	\N	\N
55059	55	169671	Kenosha County	Wisconsin	WI	\N	\N	\N
72149	72	\N	Villalba Municipio	Puerto Rico	PR	\N	\N	\N
38053	38	15242	McKenzie County	North Dakota	ND	\N	\N	\N
32007	32	53006	Elko County	Nevada	NV	\N	\N	\N
35015	35	58418	Eddy County	New Mexico	NM	\N	\N	\N
24045	24	103990	Wicomico County	Maryland	MD	\N	\N	\N
51720	51	3985	Norton city	Virginia	VA	\N	\N	\N
46003	46	2730	Aurora County	South Dakota	SD	\N	\N	\N
08067	08	56564	La Plata County	Colorado	CO	\N	\N	\N
16035	16	8846	Clearwater County	Idaho	ID	\N	\N	\N
72107	72	\N	Orocovis Municipio	Puerto Rico	PR	\N	\N	\N
19099	19	37148	Jasper County	Iowa	IA	\N	\N	\N
06033	06	64479	Lake County	California	CA	\N	\N	\N
22125	22	15465	West Feliciana Parish	Louisiana	LA	\N	\N	\N
55041	55	8960	Forest County	Wisconsin	WI	\N	\N	\N
53055	53	17492	San Juan County	Washington	WA	\N	\N	\N
38063	38	2789	Nelson County	North Dakota	ND	\N	\N	\N
20065	20	2389	Graham County	Kansas	KS	\N	\N	\N
36043	36	60945	Herkimer County	New York	NY	\N	\N	\N
23007	23	29986	Franklin County	Maine	ME	\N	\N	\N
38037	38	2215	Grant County	North Dakota	ND	\N	\N	\N
13061	13	2866	Clay County	Georgia	GA	\N	\N	\N
72109	72	\N	Patillas Municipio	Puerto Rico	PR	\N	\N	\N
30111	30	162990	Yellowstone County	Montana	MT	\N	\N	\N
19029	19	12817	Cass County	Iowa	IA	\N	\N	\N
47099	47	44432	Lawrence County	Tennessee	TN	\N	\N	\N
08101	08	169823	Pueblo County	Colorado	CO	\N	\N	\N
08043	08	47867	Fremont County	Colorado	CO	\N	\N	\N
31063	31	2587	Frontier County	Nebraska	NE	\N	\N	\N
36039	36	47177	Greene County	New York	NY	\N	\N	\N
56043	56	7760	Washakie County	Wyoming	WY	\N	\N	\N
29051	29	76191	Cole County	Missouri	MO	\N	\N	\N
13087	13	26457	Decatur County	Georgia	GA	\N	\N	\N
22045	22	68991	Iberia Parish	Louisiana	LA	\N	\N	\N
17057	17	33690	Fulton County	Illinois	IL	\N	\N	\N
46069	46	1281	Hyde County	South Dakota	SD	\N	\N	\N
35055	35	32593	Taos County	New Mexico	NM	\N	\N	\N
17117	17	44567	Macoupin County	Illinois	IL	\N	\N	\N
46039	46	4346	Deuel County	South Dakota	SD	\N	\N	\N
19023	19	14333	Butler County	Iowa	IA	\N	\N	\N
20111	20	33045	Lyon County	Kansas	KS	\N	\N	\N
48173	48	1439	Glasscock County	Texas	TX	\N	\N	\N
38011	38	2986	Bowman County	North Dakota	ND	\N	\N	\N
56011	56	7593	Crook County	Wyoming	WY	\N	\N	\N
48289	48	17493	Leon County	Texas	TX	\N	\N	\N
48333	48	4840	Mills County	Texas	TX	\N	\N	\N
17129	17	12068	Menard County	Illinois	IL	\N	\N	\N
37121	37	14881	Mitchell County	North Carolina	NC	\N	\N	\N
31059	31	5519	Fillmore County	Nebraska	NE	\N	\N	\N
19183	19	21992	Washington County	Iowa	IA	\N	\N	\N
17199	17	66415	Williamson County	Illinois	IL	\N	\N	\N
16025	16	1130	Camas County	Idaho	ID	\N	\N	\N
45039	45	22059	Fairfield County	South Carolina	SC	\N	\N	\N
01079	01	32857	Lawrence County	Alabama	AL	\N	\N	\N
19077	19	10737	Guthrie County	Iowa	IA	\N	\N	\N
29119	29	22900	McDonald County	Missouri	MO	\N	\N	\N
42103	42	56072	Pike County	Pennsylvania	PA	\N	\N	\N
29057	29	7568	Dade County	Missouri	MO	\N	\N	\N
20141	20	3439	Osborne County	Kansas	KS	\N	\N	\N
19187	19	35934	Webster County	Iowa	IA	\N	\N	\N
48079	48	2897	Cochran County	Texas	TX	\N	\N	\N
13027	13	15357	Brooks County	Georgia	GA	\N	\N	\N
12015	12	194711	Charlotte County	Florida	FL	\N	\N	\N
41055	41	1801	Sherman County	Oregon	OR	\N	\N	\N
47041	47	20837	DeKalb County	Tennessee	TN	\N	\N	\N
21159	21	11031	Martin County	Kentucky	KY	\N	\N	\N
47169	47	11455	Trousdale County	Tennessee	TN	\N	\N	\N
54021	54	7811	Gilmer County	West Virginia	WV	\N	\N	\N
37095	37	4843	Hyde County	North Carolina	NC	\N	\N	\N
55049	55	23640	Iowa County	Wisconsin	WI	\N	\N	\N
36103	36	1474273	Suffolk County	New York	NY	\N	\N	\N
16081	16	12501	Teton County	Idaho	ID	\N	\N	\N
02013	02	3401	Aleutians East Borough	Alaska	AK	\N	\N	\N
51840	51	27700	Winchester city	Virginia	VA	\N	\N	\N
19089	19	9176	Howard County	Iowa	IA	\N	\N	\N
19139	19	42394	Muscatine County	Iowa	IA	\N	\N	\N
49047	49	35970	Uintah County	Utah	UT	\N	\N	\N
18121	18	16871	Parke County	Indiana	IN	\N	\N	\N
55097	55	71032	Portage County	Wisconsin	WI	\N	\N	\N
29007	29	24835	Audrain County	Missouri	MO	\N	\N	\N
27033	27	11242	Cottonwood County	Minnesota	MN	\N	\N	\N
31101	31	7983	Keith County	Nebraska	NE	\N	\N	\N
21153	21	12017	Magoffin County	Kentucky	KY	\N	\N	\N
08047	08	6235	Gilpin County	Colorado	CO	\N	\N	\N
20137	20	5328	Norton County	Kansas	KS	\N	\N	\N
39005	39	53362	Ashland County	Ohio	OH	\N	\N	\N
23019	23	151655	Penobscot County	Maine	ME	\N	\N	\N
29139	29	11294	Montgomery County	Missouri	MO	\N	\N	\N
28007	28	18004	Attala County	Mississippi	MS	\N	\N	\N
48109	48	2149	Culberson County	Texas	TX	\N	\N	\N
20089	20	2833	Jewell County	Kansas	KS	\N	\N	\N
12081	12	411219	Manatee County	Florida	FL	\N	\N	\N
21181	21	7234	Nicholas County	Kentucky	KY	\N	\N	\N
38029	38	3187	Emmons County	North Dakota	ND	\N	\N	\N
36071	36	385234	Orange County	New York	NY	\N	\N	\N
31181	31	3419	Webster County	Nebraska	NE	\N	\N	\N
13301	13	5232	Warren County	Georgia	GA	\N	\N	\N
55007	55	15242	Bayfield County	Wisconsin	WI	\N	\N	\N
36079	36	98532	Putnam County	New York	NY	\N	\N	\N
27091	27	19484	Martin County	Minnesota	MN	\N	\N	\N
35009	35	48793	Curry County	New Mexico	NM	\N	\N	\N
06049	06	8763	Modoc County	California	CA	\N	\N	\N
29053	29	17102	Cooper County	Missouri	MO	\N	\N	\N
16063	16	5358	Lincoln County	Idaho	ID	\N	\N	\N
41017	41	201769	Deschutes County	Oregon	OR	\N	\N	\N
41033	41	88053	Josephine County	Oregon	OR	\N	\N	\N
28127	28	26629	Simpson County	Mississippi	MS	\N	\N	\N
31039	31	8798	Cuming County	Nebraska	NE	\N	\N	\N
51640	51	6296	Galax city	Virginia	VA	\N	\N	\N
47085	47	18590	Humphreys County	Tennessee	TN	\N	\N	\N
29300	29	\N	Missouri Unknown 2	Missouri	MO	\N	\N	\N
46059	46	3127	Hand County	South Dakota	SD	\N	\N	\N
54045	54	31688	Logan County	West Virginia	WV	\N	\N	\N
51011	51	16043	Appomattox County	Virginia	VA	\N	\N	\N
47079	47	32056	Henry County	Tennessee	TN	\N	\N	\N
19103	19	153740	Johnson County	Iowa	IA	\N	\N	\N
21237	21	7106	Wolfe County	Kentucky	KY	\N	\N	\N
49051	49	35300	Wasatch County	Utah	UT	\N	\N	\N
28085	28	33936	Lincoln County	Mississippi	MS	\N	\N	\N
47185	47	27707	White County	Tennessee	TN	\N	\N	\N
37133	37	203943	Onslow County	North Carolina	NC	\N	\N	\N
54025	54	34319	Greenbrier County	West Virginia	WV	\N	\N	\N
01089	01	379453	Madison County	Alabama	AL	\N	\N	\N
05133	05	16702	Sevier County	Arkansas	AR	\N	\N	\N
51051	51	14078	Dickenson County	Virginia	VA	\N	\N	\N
08057	08	1389	Jackson County	Colorado	CO	\N	\N	\N
08079	08	773	Mineral County	Colorado	CO	\N	\N	\N
38079	38	14165	Rolette County	North Dakota	ND	\N	\N	\N
20207	20	3015	Woodson County	Kansas	KS	\N	\N	\N
47061	47	13485	Grundy County	Tennessee	TN	\N	\N	\N
02122	02	59414	Kenai Peninsula Borough	Alaska	AK	\N	\N	\N
13049	13	13430	Charlton County	Georgia	GA	\N	\N	\N
21175	21	13142	Morgan County	Kentucky	KY	\N	\N	\N
30071	30	3919	Phillips County	Montana	MT	\N	\N	\N
37117	37	22178	Martin County	North Carolina	NC	\N	\N	\N
02195	02	3296	Petersburg Borough	Alaska	AK	\N	\N	\N
29161	29	44414	Phelps County	Missouri	MO	\N	\N	\N
01093	01	29703	Marion County	Alabama	AL	\N	\N	\N
26000	26	\N	Michigan Unknown	Michigan	MI	\N	\N	\N
37000	37	\N	North Carolina Unknown	North Carolina	NC	\N	\N	\N
13157	13	76199	Jackson County	Georgia	GA	\N	\N	\N
21119	21	14512	Knott County	Kentucky	KY	\N	\N	\N
54109	54	20123	Wyoming County	West Virginia	WV	\N	\N	\N
22073	22	152439	Ouachita Parish	Louisiana	LA	\N	\N	\N
06031	06	152692	Kings County	California	CA	\N	\N	\N
13111	13	26521	Fannin County	Georgia	GA	\N	\N	\N
42000	42	\N	Pennsylvania Unknown	Pennsylvania	PA	\N	\N	\N
48009	48	8730	Archer County	Texas	TX	\N	\N	\N
35019	35	4275	Guadalupe County	New Mexico	NM	\N	\N	\N
18027	18	33505	Daviess County	Indiana	IN	\N	\N	\N
01075	01	13764	Lamar County	Alabama	AL	\N	\N	\N
37017	37	32911	Bladen County	North Carolina	NC	\N	\N	\N
48387	48	11995	Red River County	Texas	TX	\N	\N	\N
48311	48	721	McMullen County	Texas	TX	\N	\N	\N
20181	20	5777	Sherman County	Kansas	KS	\N	\N	\N
01007	01	22136	Bibb County	Alabama	AL	\N	\N	\N
72013	72	\N	Arecibo Municipio	Puerto Rico	PR	\N	\N	\N
21205	21	24682	Rowan County	Kentucky	KY	\N	\N	\N
27065	27	16416	Kanabec County	Minnesota	MN	\N	\N	\N
19053	19	7769	Decatur County	Iowa	IA	\N	\N	\N
48377	48	6508	Presidio County	Texas	TX	\N	\N	\N
28083	28	27854	Leflore County	Mississippi	MS	\N	\N	\N
19135	19	7770	Monroe County	Iowa	IA	\N	\N	\N
72057	72	\N	Guayama Municipio	Puerto Rico	PR	\N	\N	\N
01043	01	84515	Cullman County	Alabama	AL	\N	\N	\N
18127	18	170980	Porter County	Indiana	IN	\N	\N	\N
29005	29	5096	Atchison County	Missouri	MO	\N	\N	\N
48259	48	48523	Kendall County	Texas	TX	\N	\N	\N
21075	21	5952	Fulton County	Kentucky	KY	\N	\N	\N
17079	17	9465	Jasper County	Illinois	IL	\N	\N	\N
51133	51	12069	Northumberland County	Virginia	VA	\N	\N	\N
06000	06	\N	California Unknown	California	CA	\N	\N	\N
48229	48	4906	Hudspeth County	Texas	TX	\N	\N	\N
47045	47	36693	Dyer County	Tennessee	TN	\N	\N	\N
20051	20	28671	Ellis County	Kansas	KS	\N	\N	\N
13267	13	25365	Tattnall County	Georgia	GA	\N	\N	\N
48247	48	5184	Jim Hogg County	Texas	TX	\N	\N	\N
42097	42	90258	Northumberland County	Pennsylvania	PA	\N	\N	\N
39083	39	62423	Knox County	Ohio	OH	\N	\N	\N
37009	37	27166	Ashe County	North Carolina	NC	\N	\N	\N
19047	19	16834	Crawford County	Iowa	IA	\N	\N	\N
06071	06	2189183	San Bernardino County	California	CA	\N	\N	\N
20069	20	5954	Gray County	Kansas	KS	\N	\N	\N
51750	51	18255	Radford city	Virginia	VA	\N	\N	\N
20059	20	25703	Franklin County	Kansas	KS	\N	\N	\N
41025	41	7373	Harney County	Oregon	OR	\N	\N	\N
17077	17	56675	Jackson County	Illinois	IL	\N	\N	\N
29173	29	10299	Ralls County	Missouri	MO	\N	\N	\N
48305	48	6025	Lynn County	Texas	TX	\N	\N	\N
06009	06	46308	Calaveras County	California	CA	\N	\N	\N
54007	54	13702	Braxton County	West Virginia	WV	\N	\N	\N
12005	12	171322	Bay County	Florida	FL	\N	\N	\N
28051	28	16726	Holmes County	Mississippi	MS	\N	\N	\N
31123	31	4625	Morrill County	Nebraska	NE	\N	\N	\N
37051	37	336364	Cumberland County	North Carolina	NC	\N	\N	\N
48471	48	72164	Walker County	Texas	TX	\N	\N	\N
37177	37	3774	Tyrrell County	North Carolina	NC	\N	\N	\N
23017	23	58132	Oxford County	Maine	ME	\N	\N	\N
19101	19	18347	Jefferson County	Iowa	IA	\N	\N	\N
36115	36	60606	Washington County	New York	NY	\N	\N	\N
27143	27	14715	Sibley County	Minnesota	MN	\N	\N	\N
02090	02	95651	Fairbanks North Star Borough	Alaska	AK	\N	\N	\N
33013	33	152622	Merrimack County	New Hampshire	NH	\N	\N	\N
20013	20	9482	Brown County	Kansas	KS	\N	\N	\N
27077	27	3754	Lake of the Woods County	Minnesota	MN	\N	\N	\N
06011	06	21558	Colusa County	California	CA	\N	\N	\N
48147	48	35913	Fannin County	Texas	TX	\N	\N	\N
18041	18	22892	Fayette County	Indiana	IN	\N	\N	\N
69110	69	\N	Saipan Municipality	Northern Mariana Islands	MP	\N	\N	\N
45085	45	106360	Sumter County	South Carolina	SC	\N	\N	\N
48303	48	314772	Lubbock County	Texas	TX	\N	\N	\N
47133	47	22566	Overton County	Tennessee	TN	\N	\N	\N
36121	36	39465	Wyoming County	New York	NY	\N	\N	\N
21213	21	18635	Simpson County	Kentucky	KY	\N	\N	\N
12079	12	18707	Madison County	Florida	FL	\N	\N	\N
21121	21	31022	Knox County	Kentucky	KY	\N	\N	\N
38103	38	3709	Wells County	North Dakota	ND	\N	\N	\N
06077	06	767967	San Joaquin County	California	CA	\N	\N	\N
27161	27	18550	Waseca County	Minnesota	MN	\N	\N	\N
18155	18	10724	Switzerland County	Indiana	IN	\N	\N	\N
21085	21	26480	Grayson County	Kentucky	KY	\N	\N	\N
48345	48	1185	Motley County	Texas	TX	\N	\N	\N
27105	27	21400	Nobles County	Minnesota	MN	\N	\N	\N
22101	22	48330	St. Mary Parish	Louisiana	LA	\N	\N	\N
48041	48	232555	Brazos County	Texas	TX	\N	\N	\N
41037	41	7949	Lake County	Oregon	OR	\N	\N	\N
26031	26	25365	Cheboygan County	Michigan	MI	\N	\N	\N
53017	53	43560	Douglas County	Washington	WA	\N	\N	\N
13101	13	4002	Echols County	Georgia	GA	\N	\N	\N
42071	42	546192	Lancaster County	Pennsylvania	PA	\N	\N	\N
47057	47	23565	Grainger County	Tennessee	TN	\N	\N	\N
51005	51	14701	Alleghany County	Virginia	VA	\N	\N	\N
13019	13	19408	Berrien County	Georgia	GA	\N	\N	\N
26141	26	12665	Presque Isle County	Michigan	MI	\N	\N	\N
21193	21	25456	Perry County	Kentucky	KY	\N	\N	\N
48263	48	786	Kent County	Texas	TX	\N	\N	\N
54027	54	23190	Hampshire County	West Virginia	WV	\N	\N	\N
22083	22	20014	Richland Parish	Louisiana	LA	\N	\N	\N
31089	31	9956	Holt County	Nebraska	NE	\N	\N	\N
01017	01	32865	Chambers County	Alabama	AL	\N	\N	\N
19000	19	\N	Iowa Unknown	Iowa	IA	\N	\N	\N
39047	39	28579	Fayette County	Ohio	OH	\N	\N	\N
21105	21	4364	Hickman County	Kentucky	KY	\N	\N	\N
32027	32	6573	Pershing County	Nevada	NV	\N	\N	\N
05075	05	16410	Lawrence County	Arkansas	AR	\N	\N	\N
37031	37	69558	Carteret County	North Carolina	NC	\N	\N	\N
36097	36	17685	Schuyler County	New York	NY	\N	\N	\N
02998	02	\N	Out-of-State, Alaska	Alaska	AK	\N	\N	\N
05097	05	9006	Montgomery County	Arkansas	AR	\N	\N	\N
38093	38	20498	Stutsman County	North Dakota	ND	\N	\N	\N
48485	48	133205	Wichita County	Texas	TX	\N	\N	\N
37153	37	44332	Richmond County	North Carolina	NC	\N	\N	\N
16023	16	2646	Butte County	Idaho	ID	\N	\N	\N
28005	28	12205	Amite County	Mississippi	MS	\N	\N	\N
72063	72	\N	Gurabo Municipio	Puerto Rico	PR	\N	\N	\N
24023	24	28852	Garrett County	Maryland	MD	\N	\N	\N
05087	05	16644	Madison County	Arkansas	AR	\N	\N	\N
48487	48	12552	Wilbarger County	Texas	TX	\N	\N	\N
51091	51	2200	Highland County	Virginia	VA	\N	\N	\N
09000	09	\N	Connecticut Unknown	Connecticut	CT	\N	\N	\N
50027	50	54988	Windsor County	Vermont	VT	\N	\N	\N
39017	39	385648	Butler County	Ohio	OH	\N	\N	\N
55129	55	15712	Washburn County	Wisconsin	WI	\N	\N	\N
30015	30	5699	Chouteau County	Montana	MT	\N	\N	\N
05149	05	21181	Yell County	Arkansas	AR	\N	\N	\N
39147	39	54938	Seneca County	Ohio	OH	\N	\N	\N
31097	31	5057	Johnson County	Nebraska	NE	\N	\N	\N
53051	53	14144	Pend Oreille County	Washington	WA	\N	\N	\N
72029	72	\N	Canóvanas Municipio	Puerto Rico	PR	\N	\N	\N
55023	55	16021	Crawford County	Wisconsin	WI	\N	\N	\N
50003	50	35338	Bennington County	Vermont	VT	\N	\N	\N
37029	37	10984	Camden County	North Carolina	NC	\N	\N	\N
31065	31	4653	Furnas County	Nebraska	NE	\N	\N	\N
38047	38	1880	Logan County	North Dakota	ND	\N	\N	\N
54103	54	14904	Wetzel County	West Virginia	WV	\N	\N	\N
08103	08	6342	Rio Blanco County	Colorado	CO	\N	\N	\N
20145	20	6366	Pawnee County	Kansas	KS	\N	\N	\N
50025	50	42015	Windham County	Vermont	VT	\N	\N	\N
56019	56	8588	Johnson County	Wyoming	WY	\N	\N	\N
56035	56	9856	Sublette County	Wyoming	WY	\N	\N	\N
53019	53	7759	Ferry County	Washington	WA	\N	\N	\N
37047	37	54754	Columbus County	North Carolina	NC	\N	\N	\N
53023	53	2290	Garfield County	Washington	WA	\N	\N	\N
05067	05	16636	Jackson County	Arkansas	AR	\N	\N	\N
17055	17	38060	Franklin County	Illinois	IL	\N	\N	\N
21141	21	27416	Logan County	Kentucky	KY	\N	\N	\N
05145	05	78729	White County	Arkansas	AR	\N	\N	\N
48351	48	13414	Newton County	Texas	TX	\N	\N	\N
51047	51	53569	Culpeper County	Virginia	VA	\N	\N	\N
49003	49	57007	Box Elder County	Utah	UT	\N	\N	\N
48000	48	\N	Texas Unknown	Texas	TX	\N	\N	\N
48405	48	8248	San Augustine County	Texas	TX	\N	\N	\N
30069	30	500	Petroleum County	Montana	MT	\N	\N	\N
56027	56	2275	Niobrara County	Wyoming	WY	\N	\N	\N
31103	31	759	Keya Paha County	Nebraska	NE	\N	\N	\N
51620	51	7833	Franklin city	Virginia	VA	\N	\N	\N
22127	22	13839	Winn Parish	Louisiana	LA	\N	\N	\N
26133	26	23466	Osceola County	Michigan	MI	\N	\N	\N
29103	29	3940	Knox County	Missouri	MO	\N	\N	\N
40119	40	81755	Payne County	Oklahoma	OK	\N	\N	\N
13197	13	8516	Marion County	Georgia	GA	\N	\N	\N
12000	12	\N	Florida Unknown	Florida	FL	\N	\N	\N
16055	16	170628	Kootenai County	Idaho	ID	\N	\N	\N
18149	18	23049	Starke County	Indiana	IN	\N	\N	\N
19037	19	11834	Chickasaw County	Iowa	IA	\N	\N	\N
05003	05	19339	Ashley County	Arkansas	AR	\N	\N	\N
37013	37	47073	Beaufort County	North Carolina	NC	\N	\N	\N
21171	21	10549	Monroe County	Kentucky	KY	\N	\N	\N
16029	16	7123	Caribou County	Idaho	ID	\N	\N	\N
32033	32	9466	White Pine County	Nevada	NV	\N	\N	\N
48149	48	25547	Fayette County	Texas	TX	\N	\N	\N
55001	55	20498	Adams County	Wisconsin	WI	\N	\N	\N
18017	18	37388	Cass County	Indiana	IN	\N	\N	\N
17169	17	6738	Schuyler County	Illinois	IL	\N	\N	\N
13043	13	10985	Candler County	Georgia	GA	\N	\N	\N
49025	49	7914	Kane County	Utah	UT	\N	\N	\N
01029	01	14967	Cleburne County	Alabama	AL	\N	\N	\N
35047	35	27144	San Miguel County	New Mexico	NM	\N	\N	\N
60000	60	\N	American Samoa Unknown	American Samoa	AS	\N	\N	\N
48219	48	22921	Hockley County	Texas	TX	\N	\N	\N
55141	55	72560	Wood County	Wisconsin	WI	\N	\N	\N
45061	45	16701	Lee County	South Carolina	SC	\N	\N	\N
22019	22	203310	Calcasieu Parish	Louisiana	LA	\N	\N	\N
48479	48	277681	Webb County	Texas	TX	\N	\N	\N
48349	48	50694	Navarro County	Texas	TX	\N	\N	\N
30051	30	2369	Liberty County	Montana	MT	\N	\N	\N
37019	37	149039	Brunswick County	North Carolina	NC	\N	\N	\N
16039	16	27448	Elmore County	Idaho	ID	\N	\N	\N
48287	48	17397	Lee County	Texas	TX	\N	\N	\N
21233	21	12923	Webster County	Kentucky	KY	\N	\N	\N
13307	13	2595	Webster County	Georgia	GA	\N	\N	\N
24000	24	\N	Maryland Unknown	Maryland	MD	\N	\N	\N
38039	38	2207	Griggs County	North Dakota	ND	\N	\N	\N
19083	19	16575	Hardin County	Iowa	IA	\N	\N	\N
21167	21	21889	Mercer County	Kentucky	KY	\N	\N	\N
13259	13	6689	Stewart County	Georgia	GA	\N	\N	\N
29153	29	9083	Ozark County	Missouri	MO	\N	\N	\N
48057	48	21001	Calhoun County	Texas	TX	\N	\N	\N
30067	30	16760	Park County	Montana	MT	\N	\N	\N
35005	35	64711	Chaves County	New Mexico	NM	\N	\N	\N
28073	28	64165	Lamar County	Mississippi	MS	\N	\N	\N
21079	21	17719	Garrard County	Kentucky	KY	\N	\N	\N
39111	39	13586	Monroe County	Ohio	OH	\N	\N	\N
26059	26	45658	Hillsdale County	Michigan	MI	\N	\N	\N
21139	21	9041	Livingston County	Kentucky	KY	\N	\N	\N
08097	08	17894	Pitkin County	Colorado	CO	\N	\N	\N
17053	17	12949	Ford County	Illinois	IL	\N	\N	\N
51580	51	5639	Covington city	Virginia	VA	\N	\N	\N
21093	21	111309	Hardin County	Kentucky	KY	\N	\N	\N
48093	48	13750	Comanche County	Texas	TX	\N	\N	\N
05111	05	23283	Poinsett County	Arkansas	AR	\N	\N	\N
51595	51	5257	Emporia city	Virginia	VA	\N	\N	\N
05103	05	23167	Ouachita County	Arkansas	AR	\N	\N	\N
35035	35	67967	Otero County	New Mexico	NM	\N	\N	\N
28011	28	30142	Bolivar County	Mississippi	MS	\N	\N	\N
06005	06	40083	Amador County	California	CA	\N	\N	\N
46019	46	10538	Butte County	South Dakota	SD	\N	\N	\N
47097	47	25451	Lauderdale County	Tennessee	TN	\N	\N	\N
48357	48	9598	Ochiltree County	Texas	TX	\N	\N	\N
28133	28	24740	Sunflower County	Mississippi	MS	\N	\N	\N
19087	19	19697	Henry County	Iowa	IA	\N	\N	\N
50021	50	57764	Rutland County	Vermont	VT	\N	\N	\N
21195	21	57057	Pike County	Kentucky	KY	\N	\N	\N
40081	40	35045	Lincoln County	Oklahoma	OK	\N	\N	\N
48273	48	30338	Kleberg County	Texas	TX	\N	\N	\N
48019	48	23861	Bandera County	Texas	TX	\N	\N	\N
53035	53	272787	Kitsap County	Washington	WA	\N	\N	\N
17151	17	4142	Pope County	Illinois	IL	\N	\N	\N
48117	48	18277	Deaf Smith County	Texas	TX	\N	\N	\N
28149	28	44841	Warren County	Mississippi	MS	\N	\N	\N
05081	05	12180	Little River County	Arkansas	AR	\N	\N	\N
05093	05	40066	Mississippi County	Arkansas	AR	\N	\N	\N
22081	22	8286	Red River Parish	Louisiana	LA	\N	\N	\N
45075	45	85343	Orangeburg County	South Carolina	SC	\N	\N	\N
19011	19	25414	Benton County	Iowa	IA	\N	\N	\N
28075	28	73751	Lauderdale County	Mississippi	MS	\N	\N	\N
48499	48	46291	Wood County	Texas	TX	\N	\N	\N
40141	40	7229	Tillman County	Oklahoma	OK	\N	\N	\N
48495	48	7887	Winkler County	Texas	TX	\N	\N	\N
55021	55	57668	Columbia County	Wisconsin	WI	\N	\N	\N
17147	17	16355	Piatt County	Illinois	IL	\N	\N	\N
47159	47	20285	Smith County	Tennessee	TN	\N	\N	\N
26007	26	28238	Alpena County	Michigan	MI	\N	\N	\N
13211	13	19636	Morgan County	Georgia	GA	\N	\N	\N
51097	51	6942	King and Queen County	Virginia	VA	\N	\N	\N
42047	42	29607	Elk County	Pennsylvania	PA	\N	\N	\N
47059	47	69571	Greene County	Tennessee	TN	\N	\N	\N
13085	13	27113	Dawson County	Georgia	GA	\N	\N	\N
05073	05	6596	Lafayette County	Arkansas	AR	\N	\N	\N
17039	17	15368	De Witt County	Illinois	IL	\N	\N	\N
18161	18	7119	Union County	Indiana	IN	\N	\N	\N
18055	18	32203	Greene County	Indiana	IN	\N	\N	\N
51167	51	26647	Russell County	Virginia	VA	\N	\N	\N
13139	13	206591	Hall County	Georgia	GA	\N	\N	\N
22007	22	21621	Assumption Parish	Louisiana	LA	\N	\N	\N
12127	12	561497	Volusia County	Florida	FL	\N	\N	\N
08041	08	728310	El Paso County	Colorado	CO	\N	\N	\N
37161	37	67076	Rutherford County	North Carolina	NC	\N	\N	\N
56031	56	8578	Platte County	Wyoming	WY	\N	\N	\N
39019	39	26897	Carroll County	Ohio	OH	\N	\N	\N
29163	29	17552	Pike County	Missouri	MO	\N	\N	\N
21011	21	12481	Bath County	Kentucky	KY	\N	\N	\N
13000	13	\N	Georgia Unknown	Georgia	GA	\N	\N	\N
29083	29	22076	Henry County	Missouri	MO	\N	\N	\N
05007	05	288774	Benton County	Arkansas	AR	\N	\N	\N
41001	41	16284	Baker County	Oregon	OR	\N	\N	\N
28099	28	28996	Neshoba County	Mississippi	MS	\N	\N	\N
13309	13	7751	Wheeler County	Georgia	GA	\N	\N	\N
08061	08	1458	Kiowa County	Colorado	CO	\N	\N	\N
47031	47	57632	Coffee County	Tennessee	TN	\N	\N	\N
21031	21	12703	Butler County	Kentucky	KY	\N	\N	\N
34025	34	618381	Monmouth County	New Jersey	NJ	\N	\N	\N
31021	31	6477	Burt County	Nebraska	NE	\N	\N	\N
38091	38	1890	Steele County	North Dakota	ND	\N	\N	\N
21051	21	19631	Clay County	Kentucky	KY	\N	\N	\N
38023	38	2277	Divide County	North Dakota	ND	\N	\N	\N
41065	41	26403	Wasco County	Oregon	OR	\N	\N	\N
21115	21	22002	Johnson County	Kentucky	KY	\N	\N	\N
06113	06	219728	Yolo County	California	CA	\N	\N	\N
48399	48	10401	Runnels County	Texas	TX	\N	\N	\N
29145	29	58451	Newton County	Missouri	MO	\N	\N	\N
26043	26	25112	Dickinson County	Michigan	MI	\N	\N	\N
72061	72	\N	Guaynabo Municipio	Puerto Rico	PR	\N	\N	\N
48239	48	14854	Jackson County	Texas	TX	\N	\N	\N
28155	28	9676	Webster County	Mississippi	MS	\N	\N	\N
13149	13	11973	Heard County	Georgia	GA	\N	\N	\N
08009	08	3555	Baca County	Colorado	CO	\N	\N	\N
48433	48	1348	Stonewall County	Texas	TX	\N	\N	\N
28025	28	19352	Clay County	Mississippi	MS	\N	\N	\N
08083	08	26408	Montezuma County	Colorado	CO	\N	\N	\N
48309	48	259730	McLennan County	Texas	TX	\N	\N	\N
31115	31	650	Loup County	Nebraska	NE	\N	\N	\N
27063	27	9768	Jackson County	Minnesota	MN	\N	\N	\N
72077	72	\N	Juncos Municipio	Puerto Rico	PR	\N	\N	\N
45027	45	33415	Clarendon County	South Carolina	SC	\N	\N	\N
29061	29	8283	Daviess County	Missouri	MO	\N	\N	\N
26101	26	24738	Manistee County	Michigan	MI	\N	\N	\N
02164	02	1493	Lake and Peninsula Borough	Alaska	AK	\N	\N	\N
48083	48	8100	Coleman County	Texas	TX	\N	\N	\N
29085	29	9586	Hickory County	Missouri	MO	\N	\N	\N
46085	46	3797	Lyman County	South Dakota	SD	\N	\N	\N
39169	39	115694	Wayne County	Ohio	OH	\N	\N	\N
36065	36	227346	Oneida County	New York	NY	\N	\N	\N
46063	46	1311	Harding County	South Dakota	SD	\N	\N	\N
19007	19	12430	Appanoose County	Iowa	IA	\N	\N	\N
39073	39	28095	Hocking County	Ohio	OH	\N	\N	\N
12105	12	744552	Polk County	Florida	FL	\N	\N	\N
19127	19	39495	Marshall County	Iowa	IA	\N	\N	\N
53021	53	97075	Franklin County	Washington	WA	\N	\N	\N
40091	40	19635	McIntosh County	Oklahoma	OK	\N	\N	\N
19137	19	9935	Montgomery County	Iowa	IA	\N	\N	\N
13163	13	15267	Jefferson County	Georgia	GA	\N	\N	\N
08125	08	10047	Yuma County	Colorado	CO	\N	\N	\N
48103	48	4765	Crane County	Texas	TX	\N	\N	\N
17121	17	37045	Marion County	Illinois	IL	\N	\N	\N
33003	33	49167	Carroll County	New Hampshire	NH	\N	\N	\N
30099	30	6249	Teton County	Montana	MT	\N	\N	\N
27135	27	15117	Roseau County	Minnesota	MN	\N	\N	\N
54053	54	26335	Mason County	West Virginia	WV	\N	\N	\N
47103	47	34540	Lincoln County	Tennessee	TN	\N	\N	\N
47139	47	16835	Polk County	Tennessee	TN	\N	\N	\N
17171	17	4950	Scott County	Illinois	IL	\N	\N	\N
21043	21	26542	Carter County	Kentucky	KY	\N	\N	\N
46013	46	38738	Brown County	South Dakota	SD	\N	\N	\N
31075	31	630	Grant County	Nebraska	NE	\N	\N	\N
49041	49	21780	Sevier County	Utah	UT	\N	\N	\N
72003	72	\N	Aguada Municipio	Puerto Rico	PR	\N	\N	\N
15000	15	\N	Hawaii Unknown	Hawaii	HI	\N	\N	\N
12027	12	38520	DeSoto County	Florida	FL	\N	\N	\N
53065	53	46360	Stevens County	Washington	WA	\N	\N	\N
27101	27	8155	Murray County	Minnesota	MN	\N	\N	\N
45031	45	66509	Darlington County	South Carolina	SC	\N	\N	\N
12083	12	373513	Marion County	Florida	FL	\N	\N	\N
51045	51	5077	Craig County	Virginia	VA	\N	\N	\N
48047	48	6964	Brooks County	Texas	TX	\N	\N	\N
21021	21	30367	Boyle County	Kentucky	KY	\N	\N	\N
39105	39	22678	Meigs County	Ohio	OH	\N	\N	\N
35013	35	221262	Doña Ana County	New Mexico	NM	\N	\N	\N
26053	26	13842	Gogebic County	Michigan	MI	\N	\N	\N
28069	28	9521	Kemper County	Mississippi	MS	\N	\N	\N
24039	24	25453	Somerset County	Maryland	MD	\N	\N	\N
13071	13	45542	Colquitt County	Georgia	GA	\N	\N	\N
54065	54	17873	Morgan County	West Virginia	WV	\N	\N	\N
48167	48	345089	Galveston County	Texas	TX	\N	\N	\N
19027	19	19914	Carroll County	Iowa	IA	\N	\N	\N
35017	35	27007	Grant County	New Mexico	NM	\N	\N	\N
39159	39	60021	Union County	Ohio	OH	\N	\N	\N
54033	54	66870	Harrison County	West Virginia	WV	\N	\N	\N
27027	27	64690	Clay County	Minnesota	MN	\N	\N	\N
29229	29	18325	Wright County	Missouri	MO	\N	\N	\N
49023	49	12122	Juab County	Utah	UT	\N	\N	\N
42113	42	5913	Sullivan County	Pennsylvania	PA	\N	\N	\N
37015	37	18712	Bertie County	North Carolina	NC	\N	\N	\N
40085	40	10230	Love County	Oklahoma	OK	\N	\N	\N
05051	05	99789	Garland County	Arkansas	AR	\N	\N	\N
48025	48	32513	Bee County	Texas	TX	\N	\N	\N
39069	39	26904	Henry County	Ohio	OH	\N	\N	\N
30061	30	4544	Mineral County	Montana	MT	\N	\N	\N
54049	54	55962	Marion County	West Virginia	WV	\N	\N	\N
19129	19	14766	Mills County	Iowa	IA	\N	\N	\N
46057	46	6234	Hamlin County	South Dakota	SD	\N	\N	\N
18075	18	20416	Jay County	Indiana	IN	\N	\N	\N
36027	36	293293	Dutchess County	New York	NY	\N	\N	\N
51117	51	30679	Mecklenburg County	Virginia	VA	\N	\N	\N
26153	26	8104	Schoolcraft County	Michigan	MI	\N	\N	\N
51143	51	59850	Pittsylvania County	Virginia	VA	\N	\N	\N
30055	30	1648	McCone County	Montana	MT	\N	\N	\N
55137	55	24326	Waushara County	Wisconsin	WI	\N	\N	\N
56021	56	100595	Laramie County	Wyoming	WY	\N	\N	\N
13305	13	30023	Wayne County	Georgia	GA	\N	\N	\N
36033	36	49965	Franklin County	New York	NY	\N	\N	\N
28093	28	35301	Marshall County	Mississippi	MS	\N	\N	\N
18181	18	24165	White County	Indiana	IN	\N	\N	\N
27089	27	9321	Marshall County	Minnesota	MN	\N	\N	\N
30057	30	8959	Madison County	Montana	MT	\N	\N	\N
26129	26	20923	Ogemaw County	Michigan	MI	\N	\N	\N
78030	78	\N	St. Thomas Island	U.S. Virgin Islands	VI	\N	\N	\N
06089	06	179027	Shasta County	California	CA	\N	\N	\N
29179	29	6198	Reynolds County	Missouri	MO	\N	\N	\N
47175	47	5947	Van Buren County	Tennessee	TN	\N	\N	\N
17149	17	15239	Pike County	Illinois	IL	\N	\N	\N
13033	13	22648	Burke County	Georgia	GA	\N	\N	\N
48321	48	36725	Matagorda County	Texas	TX	\N	\N	\N
21219	21	12448	Todd County	Kentucky	KY	\N	\N	\N
35028	35	19462	Los Alamos County	New Mexico	NM	\N	\N	\N
54019	54	42062	Fayette County	West Virginia	WV	\N	\N	\N
31001	31	31321	Adams County	Nebraska	NE	\N	\N	\N
31061	31	2940	Franklin County	Nebraska	NE	\N	\N	\N
20057	20	33094	Ford County	Kansas	KS	\N	\N	\N
32009	32	886	Esmeralda County	Nevada	NV	\N	\N	\N
02188	02	7644	Northwest Arctic Borough	Alaska	AK	\N	\N	\N
29089	29	10001	Howard County	Missouri	MO	\N	\N	\N
29131	29	25791	Miller County	Missouri	MO	\N	\N	\N
21001	21	19555	Adair County	Kentucky	KY	\N	\N	\N
26039	26	13981	Crawford County	Michigan	MI	\N	\N	\N
28031	28	18518	Covington County	Mississippi	MS	\N	\N	\N
16021	16	12656	Boundary County	Idaho	ID	\N	\N	\N
48299	48	21958	Llano County	Texas	TX	\N	\N	\N
45047	45	71074	Greenwood County	South Carolina	SC	\N	\N	\N
30091	30	3261	Sheridan County	Montana	MT	\N	\N	\N
19185	19	6415	Wayne County	Iowa	IA	\N	\N	\N
19171	19	16801	Tama County	Iowa	IA	\N	\N	\N
53037	53	49204	Kittitas County	Washington	WA	\N	\N	\N
53063	53	528225	Spokane County	Washington	WA	\N	\N	\N
48463	48	26742	Uvalde County	Texas	TX	\N	\N	\N
39171	39	36565	Williams County	Ohio	OH	\N	\N	\N
55063	55	118502	La Crosse County	Wisconsin	WI	\N	\N	\N
16065	16	40318	Madison County	Idaho	ID	\N	\N	\N
18103	18	35328	Miami County	Indiana	IN	\N	\N	\N
72019	72	\N	Barranquitas Municipio	Puerto Rico	PR	\N	\N	\N
40023	40	14646	Choctaw County	Oklahoma	OK	\N	\N	\N
51147	51	23006	Prince Edward County	Virginia	VA	\N	\N	\N
05083	05	21410	Logan County	Arkansas	AR	\N	\N	\N
21071	21	34974	Floyd County	Kentucky	KY	\N	\N	\N
55033	55	45452	Dunn County	Wisconsin	WI	\N	\N	\N
31015	31	1860	Boyd County	Nebraska	NE	\N	\N	\N
31045	31	8361	Dawes County	Nebraska	NE	\N	\N	\N
19141	19	13679	O'Brien County	Iowa	IA	\N	\N	\N
54023	54	11510	Grant County	West Virginia	WV	\N	\N	\N
37165	37	34637	Scotland County	North Carolina	NC	\N	\N	\N
20093	20	3745	Kearny County	Kansas	KS	\N	\N	\N
39009	39	65481	Athens County	Ohio	OH	\N	\N	\N
22011	22	37881	Beauregard Parish	Louisiana	LA	\N	\N	\N
35006	35	26354	Cibola County	New Mexico	NM	\N	\N	\N
48137	48	1923	Edwards County	Texas	TX	\N	\N	\N
29203	29	8203	Shannon County	Missouri	MO	\N	\N	\N
21045	21	16066	Casey County	Kentucky	KY	\N	\N	\N
02275	02	2510	Wrangell City and Borough	Alaska	AK	\N	\N	\N
22069	22	37655	Natchitoches Parish	Louisiana	LA	\N	\N	\N
47137	47	5061	Pickett County	Tennessee	TN	\N	\N	\N
50019	50	26897	Orleans County	Vermont	VT	\N	\N	\N
19013	19	130786	Black Hawk County	Iowa	IA	\N	\N	\N
54031	54	13633	Hardy County	West Virginia	WV	\N	\N	\N
16073	16	12133	Owyhee County	Idaho	ID	\N	\N	\N
42089	42	170154	Monroe County	Pennsylvania	PA	\N	\N	\N
21197	21	12218	Powell County	Kentucky	KY	\N	\N	\N
19125	19	33168	Marion County	Iowa	IA	\N	\N	\N
21109	21	13340	Jackson County	Kentucky	KY	\N	\N	\N
31183	31	790	Wheeler County	Nebraska	NE	\N	\N	\N
38067	38	6658	Pembina County	North Dakota	ND	\N	\N	\N
23013	23	39951	Knox County	Maine	ME	\N	\N	\N
21215	21	19585	Spencer County	Kentucky	KY	\N	\N	\N
21003	21	21303	Allen County	Kentucky	KY	\N	\N	\N
08045	08	60366	Garfield County	Colorado	CO	\N	\N	\N
42107	42	140709	Schuylkill County	Pennsylvania	PA	\N	\N	\N
01025	01	23291	Clarke County	Alabama	AL	\N	\N	\N
29067	29	13344	Douglas County	Missouri	MO	\N	\N	\N
41041	41	50583	Lincoln County	Oregon	OR	\N	\N	\N
13315	13	8502	Wilcox County	Georgia	GA	\N	\N	\N
30059	30	1831	Meagher County	Montana	MT	\N	\N	\N
36041	36	4345	Hamilton County	New York	NY	\N	\N	\N
17165	17	23182	Saline County	Illinois	IL	\N	\N	\N
05099	05	8099	Nevada County	Arkansas	AR	\N	\N	\N
53067	53	294074	Thurston County	Washington	WA	\N	\N	\N
37085	37	137058	Harnett County	North Carolina	NC	\N	\N	\N
37077	37	60486	Granville County	North Carolina	NC	\N	\N	\N
31073	31	1986	Gosper County	Nebraska	NE	\N	\N	\N
48327	48	2124	Menard County	Texas	TX	\N	\N	\N
13091	13	20452	Dodge County	Georgia	GA	\N	\N	\N
37111	37	45782	McDowell County	North Carolina	NC	\N	\N	\N
18119	18	20833	Owen County	Indiana	IN	\N	\N	\N
48127	48	9925	Dimmit County	Texas	TX	\N	\N	\N
20169	20	53926	Saline County	Kansas	KS	\N	\N	\N
46015	46	5254	Brule County	South Dakota	SD	\N	\N	\N
13265	13	1562	Taliaferro County	Georgia	GA	\N	\N	\N
72031	72	\N	Carolina Municipio	Puerto Rico	PR	\N	\N	\N
51000	51	\N	Virginia Unknown	Virginia	VA	\N	\N	\N
47055	47	29530	Giles County	Tennessee	TN	\N	\N	\N
31000	31	\N	Nebraska Unknown	Nebraska	NE	\N	\N	\N
69000	69	\N	Northern Mariana Islands Unknown	Northern Mariana Islands	MP	\N	\N	\N
27137	27	198538	St. Louis County	Minnesota	MN	\N	\N	\N
46137	46	2656	Ziebach County	South Dakota	SD	\N	\N	\N
31165	31	1200	Sioux County	Nebraska	NE	\N	\N	\N
41047	41	349204	Marion County	Oregon	OR	\N	\N	\N
19059	19	17549	Dickinson County	Iowa	IA	\N	\N	\N
37055	37	37547	Dare County	North Carolina	NC	\N	\N	\N
48243	48	2220	Jeff Davis County	Texas	TX	\N	\N	\N
23011	23	122955	Kennebec County	Maine	ME	\N	\N	\N
48505	48	14172	Zapata County	Texas	TX	\N	\N	\N
37131	37	19088	Northampton County	North Carolina	NC	\N	\N	\N
24041	24	36972	Talbot County	Maryland	MD	\N	\N	\N
28123	28	28061	Scott County	Mississippi	MS	\N	\N	\N
30103	30	695	Treasure County	Montana	MT	\N	\N	\N
20183	20	3544	Smith County	Kansas	KS	\N	\N	\N
26035	26	30771	Clare County	Michigan	MI	\N	\N	\N
55017	55	64737	Chippewa County	Wisconsin	WI	\N	\N	\N
39043	39	73719	Erie County	Ohio	OH	\N	\N	\N
16049	16	16823	Idaho County	Idaho	ID	\N	\N	\N
19193	19	103138	Woodbury County	Iowa	IA	\N	\N	\N
13239	13	2271	Quitman County	Georgia	GA	\N	\N	\N
13131	13	24491	Grady County	Georgia	GA	\N	\N	\N
29171	29	4688	Putnam County	Missouri	MO	\N	\N	\N
26165	26	33743	Wexford County	Michigan	MI	\N	\N	\N
13165	13	8746	Jenkins County	Georgia	GA	\N	\N	\N
19033	19	42103	Cerro Gordo County	Iowa	IA	\N	\N	\N
13171	13	19261	Lamar County	Georgia	GA	\N	\N	\N
31163	31	2986	Sherman County	Nebraska	NE	\N	\N	\N
30083	30	11043	Richland County	Montana	MT	\N	\N	\N
50017	50	28837	Orange County	Vermont	VT	\N	\N	\N
21053	21	10110	Clinton County	Kentucky	KY	\N	\N	\N
13055	13	24843	Chattooga County	Georgia	GA	\N	\N	\N
04011	04	9341	Greenlee County	Arizona	AZ	\N	\N	\N
05047	05	17897	Franklin County	Arkansas	AR	\N	\N	\N
40111	40	38234	Okmulgee County	Oklahoma	OK	\N	\N	\N
06101	06	96385	Sutter County	California	CA	\N	\N	\N
27119	27	30900	Polk County	Minnesota	MN	\N	\N	\N
48135	48	167701	Ector County	Texas	TX	\N	\N	\N
45023	45	32232	Chester County	South Carolina	SC	\N	\N	\N
20153	20	2511	Rawlins County	Kansas	KS	\N	\N	\N
28135	28	13707	Tallahatchie County	Mississippi	MS	\N	\N	\N
21073	21	51118	Franklin County	Kentucky	KY	\N	\N	\N
05131	05	127590	Sebastian County	Arkansas	AR	\N	\N	\N
13093	13	13174	Dooly County	Georgia	GA	\N	\N	\N
19043	19	17321	Clayton County	Iowa	IA	\N	\N	\N
28139	28	21748	Tippah County	Mississippi	MS	\N	\N	\N
05005	05	42242	Baxter County	Arkansas	AR	\N	\N	\N
12041	12	18885	Gilchrist County	Florida	FL	\N	\N	\N
48457	48	21591	Tyler County	Texas	TX	\N	\N	\N
20133	20	15929	Neosho County	Kansas	KS	\N	\N	\N
29227	29	1953	Worth County	Missouri	MO	\N	\N	\N
72071	72	\N	Isabela Municipio	Puerto Rico	PR	\N	\N	\N
21123	21	14431	Larue County	Kentucky	KY	\N	\N	\N
53057	53	130789	Skagit County	Washington	WA	\N	\N	\N
19039	19	9353	Clarke County	Iowa	IA	\N	\N	\N
37191	37	123967	Wayne County	North Carolina	NC	\N	\N	\N
18113	18	47832	Noble County	Indiana	IN	\N	\N	\N
21013	21	25482	Bell County	Kentucky	KY	\N	\N	\N
04000	04	\N	Arizona Unknown	Arizona	AZ	\N	\N	\N
04007	04	54303	Gila County	Arizona	AZ	\N	\N	\N
31023	31	7960	Butler County	Nebraska	NE	\N	\N	\N
30043	30	12360	Jefferson County	Montana	MT	\N	\N	\N
01103	01	119883	Morgan County	Alabama	AL	\N	\N	\N
01033	01	55411	Colbert County	Alabama	AL	\N	\N	\N
13287	13	7882	Turner County	Georgia	GA	\N	\N	\N
42023	42	4330	Cameron County	Pennsylvania	PA	\N	\N	\N
37087	37	62972	Haywood County	North Carolina	NC	\N	\N	\N
48013	48	51724	Atascosa County	Texas	TX	\N	\N	\N
72101	72	\N	Morovis Municipio	Puerto Rico	PR	\N	\N	\N
19117	19	8518	Lucas County	Iowa	IA	\N	\N	\N
51185	51	40529	Tazewell County	Virginia	VA	\N	\N	\N
13147	13	26406	Hart County	Georgia	GA	\N	\N	\N
39079	39	32493	Jackson County	Ohio	OH	\N	\N	\N
21221	21	14776	Trigg County	Kentucky	KY	\N	\N	\N
19159	19	4801	Ringgold County	Iowa	IA	\N	\N	\N
38049	38	5695	McHenry County	North Dakota	ND	\N	\N	\N
31167	31	5880	Stanton County	Nebraska	NE	\N	\N	\N
49013	49	19894	Duchesne County	Utah	UT	\N	\N	\N
26135	26	8368	Oscoda County	Michigan	MI	\N	\N	\N
12011	12	1958105	Broward County	Florida	FL	\N	\N	\N
48015	48	29972	Austin County	Texas	TX	\N	\N	\N
05101	05	7602	Newton County	Arkansas	AR	\N	\N	\N
35007	35	11927	Colfax County	New Mexico	NM	\N	\N	\N
48507	48	11840	Zavala County	Texas	TX	\N	\N	\N
32013	32	16962	Humboldt County	Nevada	NV	\N	\N	\N
55083	55	38383	Oconto County	Wisconsin	WI	\N	\N	\N
08099	08	12106	Prowers County	Colorado	CO	\N	\N	\N
18037	18	42542	Dubois County	Indiana	IN	\N	\N	\N
40153	40	19812	Woodward County	Oklahoma	OK	\N	\N	\N
26027	26	51584	Cass County	Michigan	MI	\N	\N	\N
21061	21	12235	Edmonson County	Kentucky	KY	\N	\N	\N
41057	41	27442	Tillamook County	Oregon	OR	\N	\N	\N
28019	28	8063	Choctaw County	Mississippi	MS	\N	\N	\N
37137	37	12715	Pamlico County	North Carolina	NC	\N	\N	\N
06073	06	3332427	San Diego County	California	CA	\N	\N	\N
18159	18	15227	Tipton County	Indiana	IN	\N	\N	\N
32000	32	\N	Nevada Unknown	Nevada	NV	\N	\N	\N
27117	27	9121	Pipestone County	Minnesota	MN	\N	\N	\N
17081	17	37235	Jefferson County	Illinois	IL	\N	\N	\N
27017	27	35769	Carlton County	Minnesota	MN	\N	\N	\N
16079	16	12911	Shoshone County	Idaho	ID	\N	\N	\N
26051	26	25424	Gladwin County	Michigan	MI	\N	\N	\N
31125	31	3532	Nance County	Nebraska	NE	\N	\N	\N
39053	39	29802	Gallia County	Ohio	OH	\N	\N	\N
72023	72	\N	Cabo Rojo Municipio	Puerto Rico	PR	\N	\N	\N
37155	37	129999	Robeson County	North Carolina	NC	\N	\N	\N
13079	13	12231	Crawford County	Georgia	GA	\N	\N	\N
72139	72	\N	Trujillo Alto Municipio	Puerto Rico	PR	\N	\N	\N
55047	55	18908	Green Lake County	Wisconsin	WI	\N	\N	\N
29197	29	4534	Schuyler County	Missouri	MO	\N	\N	\N
08119	08	25529	Teller County	Colorado	CO	\N	\N	\N
48383	48	3833	Reagan County	Texas	TX	\N	\N	\N
48403	48	10507	Sabine County	Texas	TX	\N	\N	\N
27129	27	14403	Renville County	Minnesota	MN	\N	\N	\N
30037	30	827	Golden Valley County	Montana	MT	\N	\N	\N
06047	06	279252	Merced County	California	CA	\N	\N	\N
29011	29	11592	Barton County	Missouri	MO	\N	\N	\N
28067	28	67993	Jones County	Mississippi	MS	\N	\N	\N
13279	13	26973	Toombs County	Georgia	GA	\N	\N	\N
19003	19	3588	Adams County	Iowa	IA	\N	\N	\N
35039	35	38521	Rio Arriba County	New Mexico	NM	\N	\N	\N
16009	16	9430	Benewah County	Idaho	ID	\N	\N	\N
40003	40	5718	Alfalfa County	Oklahoma	OK	\N	\N	\N
01091	01	18733	Marengo County	Alabama	AL	\N	\N	\N
48413	48	2761	Schleicher County	Texas	TX	\N	\N	\N
19167	19	35043	Sioux County	Iowa	IA	\N	\N	\N
31049	31	1793	Deuel County	Nebraska	NE	\N	\N	\N
47035	47	61603	Cumberland County	Tennessee	TN	\N	\N	\N
46123	46	5377	Tripp County	South Dakota	SD	\N	\N	\N
47011	47	109071	Bradley County	Tennessee	TN	\N	\N	\N
48215	48	875200	Hidalgo County	Texas	TX	\N	\N	\N
22049	22	15574	Jackson Parish	Louisiana	LA	\N	\N	\N
48353	48	14835	Nolan County	Texas	TX	\N	\N	\N
46111	46	2322	Sanborn County	South Dakota	SD	\N	\N	\N
31071	31	1956	Garfield County	Nebraska	NE	\N	\N	\N
29217	29	20388	Vernon County	Missouri	MO	\N	\N	\N
02105	02	2141	Hoonah-Angoon Census Area	Alaska	AK	\N	\N	\N
27039	27	20987	Dodge County	Minnesota	MN	\N	\N	\N
29175	29	24409	Randolph County	Missouri	MO	\N	\N	\N
06023	06	134977	Humboldt County	California	CA	\N	\N	\N
30009	30	10921	Carbon County	Montana	MT	\N	\N	\N
18005	18	84447	Bartholomew County	Indiana	IN	\N	\N	\N
20191	20	22578	Sumner County	Kansas	KS	\N	\N	\N
72000	72	\N	Puerto Rico Unknown	Puerto Rico	PR	\N	\N	\N
42049	42	268426	Erie County	Pennsylvania	PA	\N	\N	\N
51103	51	10618	Lancaster County	Virginia	VA	\N	\N	\N
20019	20	3230	Chautauqua County	Kansas	KS	\N	\N	\N
48277	48	49905	Lamar County	Texas	TX	\N	\N	\N
40021	40	49019	Cherokee County	Oklahoma	OK	\N	\N	\N
24011	24	33492	Caroline County	Maryland	MD	\N	\N	\N
17019	17	209192	Champaign County	Illinois	IL	\N	\N	\N
01053	01	36281	Escambia County	Alabama	AL	\N	\N	\N
18133	18	37469	Putnam County	Indiana	IN	\N	\N	\N
42055	42	155637	Franklin County	Pennsylvania	PA	\N	\N	\N
01037	01	10650	Coosa County	Alabama	AL	\N	\N	\N
32011	32	2065	Eureka County	Nevada	NV	\N	\N	\N
01071	01	51582	Jackson County	Alabama	AL	\N	\N	\N
48069	48	7396	Castro County	Texas	TX	\N	\N	\N
72137	72	\N	Toa Baja Municipio	Puerto Rico	PR	\N	\N	\N
37195	37	81979	Wilson County	North Carolina	NC	\N	\N	\N
13069	13	43218	Coffee County	Georgia	GA	\N	\N	\N
38061	38	10502	Mountrail County	North Dakota	ND	\N	\N	\N
20063	20	2621	Gove County	Kansas	KS	\N	\N	\N
17103	17	33647	Lee County	Illinois	IL	\N	\N	\N
51137	51	37695	Orange County	Virginia	VA	\N	\N	\N
05013	05	5113	Calhoun County	Arkansas	AR	\N	\N	\N
27073	27	6527	Lac qui Parle County	Minnesota	MN	\N	\N	\N
27013	27	68241	Blue Earth County	Minnesota	MN	\N	\N	\N
53000	53	\N	Washington Unknown	Washington	WA	\N	\N	\N
17059	17	4793	Gallatin County	Illinois	IL	\N	\N	\N
01085	01	9641	Lowndes County	Alabama	AL	\N	\N	\N
40049	40	27691	Garvin County	Oklahoma	OK	\N	\N	\N
18025	18	10629	Crawford County	Indiana	IN	\N	\N	\N
08014	08	72236	Broomfield County	Colorado	CO	\N	\N	\N
19019	19	21287	Buchanan County	Iowa	IA	\N	\N	\N
13185	13	118268	Lowndes County	Georgia	GA	\N	\N	\N
08013	08	327171	Boulder County	Colorado	CO	\N	\N	\N
20125	20	31502	Montgomery County	Kansas	KS	\N	\N	\N
55069	55	27566	Lincoln County	Wisconsin	WI	\N	\N	\N
72081	72	\N	Lares Municipio	Puerto Rico	PR	\N	\N	\N
51141	51	17493	Patrick County	Virginia	VA	\N	\N	\N
51033	51	30860	Caroline County	Virginia	VA	\N	\N	\N
19161	19	9603	Sac County	Iowa	IA	\N	\N	\N
17131	17	15225	Mercer County	Illinois	IL	\N	\N	\N
53047	53	42620	Okanogan County	Washington	WA	\N	\N	\N
46035	46	19812	Davison County	South Dakota	SD	\N	\N	\N
17123	17	11309	Marshall County	Illinois	IL	\N	\N	\N
51165	51	82346	Rockingham County	Virginia	VA	\N	\N	\N
19121	19	16521	Madison County	Iowa	IA	\N	\N	\N
12113	12	189139	Santa Rosa County	Florida	FL	\N	\N	\N
12017	12	153010	Citrus County	Florida	FL	\N	\N	\N
30093	30	35180	Silver Bow County	Montana	MT	\N	\N	\N
16003	16	4447	Adams County	Idaho	ID	\N	\N	\N
48101	48	1363	Cottle County	Texas	TX	\N	\N	\N
40013	40	48998	Bryan County	Oklahoma	OK	\N	\N	\N
48131	48	11058	Duval County	Texas	TX	\N	\N	\N
29001	29	25399	Adair County	Missouri	MO	\N	\N	\N
29017	29	12111	Bollinger County	Missouri	MO	\N	\N	\N
01121	01	79985	Talladega County	Alabama	AL	\N	\N	\N
06079	06	282249	San Luis Obispo County	California	CA	\N	\N	\N
46033	46	9017	Custer County	South Dakota	SD	\N	\N	\N
48159	48	10821	Franklin County	Texas	TX	\N	\N	\N
41059	41	77752	Umatilla County	Oregon	OR	\N	\N	\N
72091	72	\N	Manatí Municipio	Puerto Rico	PR	\N	\N	\N
28105	28	49789	Oktibbeha County	Mississippi	MS	\N	\N	\N
38099	38	10437	Walsh County	North Dakota	ND	\N	\N	\N
40071	40	43274	Kay County	Oklahoma	OK	\N	\N	\N
28029	28	27933	Copiah County	Mississippi	MS	\N	\N	\N
21007	21	7769	Ballard County	Kentucky	KY	\N	\N	\N
41053	41	87744	Polk County	Oregon	OR	\N	\N	\N
22117	22	45773	Washington Parish	Louisiana	LA	\N	\N	\N
45001	45	24404	Abbeville County	South Carolina	SC	\N	\N	\N
36099	36	33991	Seneca County	New York	NY	\N	\N	\N
35027	35	19939	Lincoln County	New Mexico	NM	\N	\N	\N
35003	35	3623	Catron County	New Mexico	NM	\N	\N	\N
26009	26	23449	Antrim County	Michigan	MI	\N	\N	\N
05147	05	6264	Woodruff County	Arkansas	AR	\N	\N	\N
46125	46	8368	Turner County	South Dakota	SD	\N	\N	\N
13293	13	26527	Upson County	Georgia	GA	\N	\N	\N
42053	42	6965	Forest County	Pennsylvania	PA	\N	\N	\N
26157	26	52289	Tuscola County	Michigan	MI	\N	\N	\N
30087	30	8836	Rosebud County	Montana	MT	\N	\N	\N
54101	54	8058	Webster County	West Virginia	WV	\N	\N	\N
13317	13	9694	Wilkes County	Georgia	GA	\N	\N	\N
48293	48	23340	Limestone County	Texas	TX	\N	\N	\N
12086	12	2707303	Miami-Dade County	Florida	FL	\N	\N	\N
30021	30	8555	Dawson County	Montana	MT	\N	\N	\N
20179	20	2520	Sheridan County	Kansas	KS	\N	\N	\N
39145	39	74347	Scioto County	Ohio	OH	\N	\N	\N
26057	26	40283	Gratiot County	Michigan	MI	\N	\N	\N
21087	21	10995	Green County	Kentucky	KY	\N	\N	\N
01021	01	44397	Chilton County	Alabama	AL	\N	\N	\N
02240	02	6957	Southeast Fairbanks Census Area	Alaska	AK	\N	\N	\N
46135	46	22742	Yankton County	South Dakota	SD	\N	\N	\N
49027	49	13327	Millard County	Utah	UT	\N	\N	\N
72113	72	\N	Ponce Municipio	Puerto Rico	PR	\N	\N	\N
13035	13	25426	Butts County	Georgia	GA	\N	\N	\N
48475	48	12097	Ward County	Texas	TX	\N	\N	\N
05039	05	6802	Dallas County	Arkansas	AR	\N	\N	\N
37127	37	94859	Nash County	North Carolina	NC	\N	\N	\N
72083	72	\N	Las Marías Municipio	Puerto Rico	PR	\N	\N	\N
12133	12	25932	Washington County	Florida	FL	\N	\N	\N
19071	19	6729	Fremont County	Iowa	IA	\N	\N	\N
27157	27	21642	Wabasha County	Minnesota	MN	\N	\N	\N
22041	22	19723	Franklin Parish	Louisiana	LA	\N	\N	\N
19107	19	10085	Keokuk County	Iowa	IA	\N	\N	\N
13039	13	55388	Camden County	Georgia	GA	\N	\N	\N
40000	40	\N	Oklahoma Unknown	Oklahoma	OK	\N	\N	\N
13257	13	26107	Stephens County	Georgia	GA	\N	\N	\N
42133	42	450448	York County	Pennsylvania	PA	\N	\N	\N
02290	02	5077	Yukon-Koyukuk Census Area	Alaska	AK	\N	\N	\N
46107	46	2163	Potter County	South Dakota	SD	\N	\N	\N
19169	19	98237	Story County	Iowa	IA	\N	\N	\N
47087	47	11864	Jackson County	Tennessee	TN	\N	\N	\N
31161	31	5150	Sheridan County	Nebraska	NE	\N	\N	\N
28053	28	7827	Humphreys County	Mississippi	MS	\N	\N	\N
29133	29	12691	Mississippi County	Missouri	MO	\N	\N	\N
49019	49	9796	Grand County	Utah	UT	\N	\N	\N
40025	40	2145	Cimarron County	Oklahoma	OK	\N	\N	\N
27155	27	3218	Traverse County	Minnesota	MN	\N	\N	\N
20049	20	2507	Elk County	Kansas	KS	\N	\N	\N
05077	05	8513	Lee County	Arkansas	AR	\N	\N	\N
01061	01	26411	Geneva County	Alabama	AL	\N	\N	\N
18079	18	27515	Jennings County	Indiana	IN	\N	\N	\N
28103	28	10236	Noxubee County	Mississippi	MS	\N	\N	\N
19115	19	11011	Louisa County	Iowa	IA	\N	\N	\N
02220	02	8405	Sitka City and Borough	Alaska	AK	\N	\N	\N
78020	78	\N	St. John Island	U.S. Virgin Islands	VI	\N	\N	\N
42005	42	64162	Armstrong County	Pennsylvania	PA	\N	\N	\N
37045	37	99035	Cleveland County	North Carolina	NC	\N	\N	\N
48115	48	12974	Dawson County	Texas	TX	\N	\N	\N
17085	17	21239	Jo Daviess County	Illinois	IL	\N	\N	\N
36017	36	46730	Chenango County	New York	NY	\N	\N	\N
26131	26	5656	Ontonagon County	Michigan	MI	\N	\N	\N
12091	12	212820	Okaloosa County	Florida	FL	\N	\N	\N
20177	20	175999	Shawnee County	Kansas	KS	\N	\N	\N
17017	17	11925	Cass County	Illinois	IL	\N	\N	\N
20147	20	5181	Phillips County	Kansas	KS	\N	\N	\N
13119	13	23504	Franklin County	Georgia	GA	\N	\N	\N
51171	51	43905	Shenandoah County	Virginia	VA	\N	\N	\N
16007	16	6143	Bear Lake County	Idaho	ID	\N	\N	\N
55075	55	40262	Marinette County	Wisconsin	WI	\N	\N	\N
18117	18	19651	Orange County	Indiana	IN	\N	\N	\N
21095	21	25566	Harlan County	Kentucky	KY	\N	\N	\N
19005	19	13642	Allamakee County	Iowa	IA	\N	\N	\N
46129	46	5336	Walworth County	South Dakota	SD	\N	\N	\N
16037	16	4249	Custer County	Idaho	ID	\N	\N	\N
17051	17	21264	Fayette County	Illinois	IL	\N	\N	\N
48341	48	20654	Moore County	Texas	TX	\N	\N	\N
31185	31	13511	York County	Nebraska	NE	\N	\N	\N
13001	13	18325	Appling County	Georgia	GA	\N	\N	\N
38009	38	6287	Bottineau County	North Dakota	ND	\N	\N	\N
16011	16	47202	Bingham County	Idaho	ID	\N	\N	\N
46055	46	1861	Haakon County	South Dakota	SD	\N	\N	\N
30085	30	10964	Roosevelt County	Montana	MT	\N	\N	\N
28109	28	55876	Pearl River County	Mississippi	MS	\N	\N	\N
40151	40	8687	Woods County	Oklahoma	OK	\N	\N	\N
53031	53	32700	Jefferson County	Washington	WA	\N	\N	\N
20077	20	5336	Harper County	Kansas	KS	\N	\N	\N
41043	41	131054	Linn County	Oregon	OR	\N	\N	\N
18023	18	32206	Clinton County	Indiana	IN	\N	\N	\N
19163	19	173216	Scott County	Iowa	IA	\N	\N	\N
49049	49	651059	Utah County	Utah	UT	\N	\N	\N
37175	37	34498	Transylvania County	North Carolina	NC	\N	\N	\N
41003	41	93239	Benton County	Oregon	OR	\N	\N	\N
55085	55	35751	Oneida County	Wisconsin	WI	\N	\N	\N
27097	27	33187	Morrison County	Minnesota	MN	\N	\N	\N
45017	45	14554	Calhoun County	South Carolina	SC	\N	\N	\N
47083	47	8292	Houston County	Tennessee	TN	\N	\N	\N
48151	48	3784	Fisher County	Texas	TX	\N	\N	\N
27111	27	58741	Otter Tail County	Minnesota	MN	\N	\N	\N
40007	40	5207	Beaver County	Oklahoma	OK	\N	\N	\N
12077	12	8364	Liberty County	Florida	FL	\N	\N	\N
08003	08	16180	Alamosa County	Colorado	CO	\N	\N	\N
40137	40	43100	Stephens County	Oklahoma	OK	\N	\N	\N
48255	48	15562	Karnes County	Texas	TX	\N	\N	\N
20149	20	24722	Pottawatomie County	Kansas	KS	\N	\N	\N
45043	45	63353	Georgetown County	South Carolina	SC	\N	\N	\N
12059	12	19594	Holmes County	Florida	FL	\N	\N	\N
31079	31	61028	Hall County	Nebraska	NE	\N	\N	\N
29015	29	19627	Benton County	Missouri	MO	\N	\N	\N
48065	48	5854	Carson County	Texas	TX	\N	\N	\N
54059	54	22951	Mingo County	West Virginia	WV	\N	\N	\N
20029	20	8642	Cloud County	Kansas	KS	\N	\N	\N
72011	72	\N	Añasco Municipio	Puerto Rico	PR	\N	\N	\N
19131	19	10647	Mitchell County	Iowa	IA	\N	\N	\N
50015	50	25341	Lamoille County	Vermont	VT	\N	\N	\N
16083	16	88411	Twin Falls County	Idaho	ID	\N	\N	\N
27165	27	10792	Watonwan County	Minnesota	MN	\N	\N	\N
48455	48	14883	Trinity County	Texas	TX	\N	\N	\N
48445	48	12183	Terry County	Texas	TX	\N	\N	\N
51175	51	17636	Southampton County	Virginia	VA	\N	\N	\N
13319	13	8812	Wilkinson County	Georgia	GA	\N	\N	\N
39137	39	33654	Putnam County	Ohio	OH	\N	\N	\N
21131	21	9637	Leslie County	Kentucky	KY	\N	\N	\N
01035	01	11851	Conecuh County	Alabama	AL	\N	\N	\N
20041	20	18266	Dickinson County	Kansas	KS	\N	\N	\N
01013	01	19504	Butler County	Alabama	AL	\N	\N	\N
31139	31	7184	Pierce County	Nebraska	NE	\N	\N	\N
05109	05	10643	Pike County	Arkansas	AR	\N	\N	\N
20157	20	4536	Republic County	Kansas	KS	\N	\N	\N
01081	01	166831	Lee County	Alabama	AL	\N	\N	\N
24043	24	151146	Washington County	Maryland	MD	\N	\N	\N
29149	29	10411	Oregon County	Missouri	MO	\N	\N	\N
08039	08	27313	Elbert County	Colorado	CO	\N	\N	\N
30079	30	1067	Prairie County	Montana	MT	\N	\N	\N
22111	22	22170	Union Parish	Louisiana	LA	\N	\N	\N
12131	12	76648	Walton County	Florida	FL	\N	\N	\N
48379	48	12552	Rains County	Texas	TX	\N	\N	\N
36119	36	965802	Westchester County	New York	NY	\N	\N	\N
31041	31	10626	Custer County	Nebraska	NE	\N	\N	\N
21097	21	18920	Harrison County	Kentucky	KY	\N	\N	\N
19081	19	10507	Hancock County	Iowa	IA	\N	\N	\N
40077	40	10132	Latimer County	Oklahoma	OK	\N	\N	\N
72095	72	\N	Maunabo Municipio	Puerto Rico	PR	\N	\N	\N
20189	20	5388	Stevens County	Kansas	KS	\N	\N	\N
06027	06	18046	Inyo County	California	CA	\N	\N	\N
26019	26	17852	Benzie County	Michigan	MI	\N	\N	\N
40047	40	60869	Garfield County	Oklahoma	OK	\N	\N	\N
55073	55	135593	Marathon County	Wisconsin	WI	\N	\N	\N
32001	32	25363	Churchill County	Nevada	NV	\N	\N	\N
37141	37	64671	Pender County	North Carolina	NC	\N	\N	\N
18085	18	78988	Kosciusko County	Indiana	IN	\N	\N	\N
17107	17	28383	Logan County	Illinois	IL	\N	\N	\N
27167	27	6161	Wilkin County	Minnesota	MN	\N	\N	\N
16067	16	21216	Minidoka County	Idaho	ID	\N	\N	\N
29223	29	12769	Wayne County	Missouri	MO	\N	\N	\N
22009	22	39966	Avoyelles Parish	Louisiana	LA	\N	\N	\N
26149	26	60848	St. Joseph County	Michigan	MI	\N	\N	\N
30097	30	3684	Sweet Grass County	Montana	MT	\N	\N	\N
29045	29	6830	Clark County	Missouri	MO	\N	\N	\N
48075	48	7143	Childress County	Texas	TX	\N	\N	\N
31169	31	4887	Thayer County	Nebraska	NE	\N	\N	\N
12045	12	13534	Gulf County	Florida	FL	\N	\N	\N
21103	21	16067	Henry County	Kentucky	KY	\N	\N	\N
29023	29	42178	Butler County	Missouri	MO	\N	\N	\N
72099	72	\N	Moca Municipio	Puerto Rico	PR	\N	\N	\N
42009	42	47817	Bedford County	Pennsylvania	PA	\N	\N	\N
20151	20	9127	Pratt County	Kansas	KS	\N	\N	\N
21135	21	13262	Lewis County	Kentucky	KY	\N	\N	\N
49039	49	31393	Sanpete County	Utah	UT	\N	\N	\N
26033	26	36958	Chippewa County	Michigan	MI	\N	\N	\N
20131	20	10121	Nemaha County	Kansas	KS	\N	\N	\N
72129	72	\N	San Lorenzo Municipio	Puerto Rico	PR	\N	\N	\N
45049	45	18053	Hampton County	South Carolina	SC	\N	\N	\N
48415	48	16662	Scurry County	Texas	TX	\N	\N	\N
48427	48	64266	Starr County	Texas	TX	\N	\N	\N
46005	46	18513	Beadle County	South Dakota	SD	\N	\N	\N
06051	06	14534	Mono County	California	CA	\N	\N	\N
05000	05	\N	Arkansas Unknown	Arkansas	AR	\N	\N	\N
54000	54	\N	West Virginia Unknown	West Virginia	WV	\N	\N	\N
51125	51	14755	Nelson County	Virginia	VA	\N	\N	\N
29111	29	9810	Lewis County	Missouri	MO	\N	\N	\N
56015	56	13235	Goshen County	Wyoming	WY	\N	\N	\N
51049	51	9933	Cumberland County	Virginia	VA	\N	\N	\N
38003	38	10402	Barnes County	North Dakota	ND	\N	\N	\N
51530	51	6402	Buena Vista city	Virginia	VA	\N	\N	\N
21173	21	28186	Montgomery County	Kentucky	KY	\N	\N	\N
38001	38	2188	Adams County	North Dakota	ND	\N	\N	\N
18031	18	26584	Decatur County	Indiana	IN	\N	\N	\N
38087	38	747	Slope County	North Dakota	ND	\N	\N	\N
48087	48	2877	Collingsworth County	Texas	TX	\N	\N	\N
50001	50	36851	Addison County	Vermont	VT	\N	\N	\N
54001	54	16444	Barbour County	West Virginia	WV	\N	\N	\N
48237	48	9056	Jack County	Texas	TX	\N	\N	\N
37061	37	58794	Duplin County	North Carolina	NC	\N	\N	\N
05121	05	18247	Randolph County	Arkansas	AR	\N	\N	\N
39157	39	91776	Tuscarawas County	Ohio	OH	\N	\N	\N
29167	29	32490	Polk County	Missouri	MO	\N	\N	\N
48253	48	19875	Jones County	Texas	TX	\N	\N	\N
51083	51	33633	Halifax County	Virginia	VA	\N	\N	\N
20021	20	19681	Cherokee County	Kansas	KS	\N	\N	\N
35059	35	4026	Union County	New Mexico	NM	\N	\N	\N
20119	20	4029	Meade County	Kansas	KS	\N	\N	\N
01109	01	32966	Pike County	Alabama	AL	\N	\N	\N
48365	48	23187	Panola County	Texas	TX	\N	\N	\N
13017	13	16614	Ben Hill County	Georgia	GA	\N	\N	\N
12029	12	17057	Dixie County	Florida	FL	\N	\N	\N
36000	36	\N	New York Unknown	New York	NY	\N	\N	\N
28107	28	33848	Panola County	Mississippi	MS	\N	\N	\N
40063	40	13126	Hughes County	Oklahoma	OK	\N	\N	\N
22037	22	18882	East Feliciana Parish	Louisiana	LA	\N	\N	\N
21145	21	65644	McCracken County	Kentucky	KY	\N	\N	\N
54085	54	9499	Ritchie County	West Virginia	WV	\N	\N	\N
06087	06	269925	Santa Cruz County	California	CA	\N	\N	\N
48027	48	369927	Bell County	Texas	TX	\N	\N	\N
42109	42	40317	Snyder County	Pennsylvania	PA	\N	\N	\N
13065	13	6582	Clinch County	Georgia	GA	\N	\N	\N
44005	44	81836	Newport County	Rhode Island	RI	\N	\N	\N
30049	30	70229	Lewis and Clark County	Montana	MT	\N	\N	\N
53027	53	75950	Grays Harbor County	Washington	WA	\N	\N	\N
20075	20	2425	Hamilton County	Kansas	KS	\N	\N	\N
21231	21	20209	Wayne County	Kentucky	KY	\N	\N	\N
37145	37	39925	Person County	North Carolina	NC	\N	\N	\N
48143	48	43224	Erath County	Texas	TX	\N	\N	\N
40011	40	9447	Blaine County	Oklahoma	OK	\N	\N	\N
41011	41	64711	Coos County	Oregon	OR	\N	\N	\N
01031	01	53230	Coffee County	Alabama	AL	\N	\N	\N
55000	55	\N	Wisconsin Unknown	Wisconsin	WI	\N	\N	\N
41045	41	30983	Malheur County	Oregon	OR	\N	\N	\N
46021	46	1380	Campbell County	South Dakota	SD	\N	\N	\N
20155	20	61793	Reno County	Kansas	KS	\N	\N	\N
55013	55	15557	Burnett County	Wisconsin	WI	\N	\N	\N
27087	27	5473	Mahnomen County	Minnesota	MN	\N	\N	\N
55043	55	51021	Grant County	Wisconsin	WI	\N	\N	\N
54013	54	6945	Calhoun County	West Virginia	WV	\N	\N	\N
13167	13	9667	Johnson County	Georgia	GA	\N	\N	\N
37171	37	71683	Surry County	North Carolina	NC	\N	\N	\N
18153	18	20578	Sullivan County	Indiana	IN	\N	\N	\N
48395	48	17155	Robertson County	Texas	TX	\N	\N	\N
55091	55	7271	Pepin County	Wisconsin	WI	\N	\N	\N
39011	39	45680	Auglaize County	Ohio	OH	\N	\N	\N
27005	27	34456	Becker County	Minnesota	MN	\N	\N	\N
08115	08	2260	Sedgwick County	Colorado	CO	\N	\N	\N
47049	47	18787	Fentress County	Tennessee	TN	\N	\N	\N
19113	19	227854	Linn County	Iowa	IA	\N	\N	\N
08065	08	7987	Lake County	Colorado	CO	\N	\N	\N
31091	31	647	Hooker County	Nebraska	NE	\N	\N	\N
37125	37	103352	Moore County	North Carolina	NC	\N	\N	\N
48193	48	8557	Hamilton County	Texas	TX	\N	\N	\N
48145	48	17275	Falls County	Texas	TX	\N	\N	\N
45081	45	20315	Saluda County	South Carolina	SC	\N	\N	\N
22067	22	24227	Morehouse Parish	Louisiana	LA	\N	\N	\N
28145	28	28866	Union County	Mississippi	MS	\N	\N	\N
08075	08	21974	Logan County	Colorado	CO	\N	\N	\N
08071	08	14420	Las Animas County	Colorado	CO	\N	\N	\N
21069	21	14603	Fleming County	Kentucky	KY	\N	\N	\N
37073	37	11464	Gates County	North Carolina	NC	\N	\N	\N
21039	21	4692	Carlisle County	Kentucky	KY	\N	\N	\N
17193	17	13364	White County	Illinois	IL	\N	\N	\N
48295	48	3111	Lipscomb County	Texas	TX	\N	\N	\N
26041	26	35612	Delta County	Michigan	MI	\N	\N	\N
20043	20	7496	Doniphan County	Kansas	KS	\N	\N	\N
48497	48	71084	Wise County	Texas	TX	\N	\N	\N
21207	21	17998	Russell County	Kentucky	KY	\N	\N	\N
31147	31	7791	Richardson County	Nebraska	NE	\N	\N	\N
72147	72	\N	Vieques Municipio	Puerto Rico	PR	\N	\N	\N
01011	01	9976	Bullock County	Alabama	AL	\N	\N	\N
31151	31	13987	Saline County	Nebraska	NE	\N	\N	\N
31035	31	6216	Clay County	Nebraska	NE	\N	\N	\N
22061	22	46552	Lincoln Parish	Louisiana	LA	\N	\N	\N
22057	22	97596	Lafourche Parish	Louisiana	LA	\N	\N	\N
40135	40	41538	Sequoyah County	Oklahoma	OK	\N	\N	\N
72041	72	\N	Cidra Municipio	Puerto Rico	PR	\N	\N	\N
47025	47	32023	Claiborne County	Tennessee	TN	\N	\N	\N
23015	23	34775	Lincoln County	Maine	ME	\N	\N	\N
29063	29	10944	DeKalb County	Missouri	MO	\N	\N	\N
39063	39	75407	Hancock County	Ohio	OH	\N	\N	\N
30073	30	5782	Pondera County	Montana	MT	\N	\N	\N
46119	46	1391	Sully County	South Dakota	SD	\N	\N	\N
36101	36	94657	Steuben County	New York	NY	\N	\N	\N
13141	13	8494	Hancock County	Georgia	GA	\N	\N	\N
39091	39	45326	Logan County	Ohio	OH	\N	\N	\N
48297	48	12324	Live Oak County	Texas	TX	\N	\N	\N
47151	47	22090	Scott County	Tennessee	TN	\N	\N	\N
35021	35	638	Harding County	New Mexico	NM	\N	\N	\N
30027	30	11104	Fergus County	Montana	MT	\N	\N	\N
23027	23	39923	Waldo County	Maine	ME	\N	\N	\N
27159	27	13807	Wadena County	Minnesota	MN	\N	\N	\N
38041	38	2438	Hettinger County	North Dakota	ND	\N	\N	\N
72143	72	\N	Vega Alta Municipio	Puerto Rico	PR	\N	\N	\N
72017	72	\N	Barceloneta Municipio	Puerto Rico	PR	\N	\N	\N
19143	19	5987	Osceola County	Iowa	IA	\N	\N	\N
06105	06	12216	Trinity County	California	CA	\N	\N	\N
48467	48	57533	Van Zandt County	Texas	TX	\N	\N	\N
47027	47	7629	Clay County	Tennessee	TN	\N	\N	\N
55111	55	64449	Sauk County	Wisconsin	WI	\N	\N	\N
48045	48	1487	Briscoe County	Texas	TX	\N	\N	\N
19173	19	6092	Taylor County	Iowa	IA	\N	\N	\N
01005	01	24589	Barbour County	Alabama	AL	\N	\N	\N
39021	39	38960	Champaign County	Ohio	OH	\N	\N	\N
36049	36	26187	Lewis County	New York	NY	\N	\N	\N
51135	51	15160	Nottoway County	Virginia	VA	\N	\N	\N
56000	56	\N	Wyoming Unknown	Wyoming	WY	\N	\N	\N
06069	06	64055	San Benito County	California	CA	\N	\N	\N
13025	13	19202	Brantley County	Georgia	GA	\N	\N	\N
21183	21	23899	Ohio County	Kentucky	KY	\N	\N	\N
18073	18	33440	Jasper County	Indiana	IN	\N	\N	\N
05025	05	7957	Cleveland County	Arkansas	AR	\N	\N	\N
27055	27	18632	Houston County	Minnesota	MN	\N	\N	\N
72009	72	\N	Aibonito Municipio	Puerto Rico	PR	\N	\N	\N
48211	48	3777	Hemphill County	Texas	TX	\N	\N	\N
48189	48	32754	Hale County	Texas	TX	\N	\N	\N
20171	20	4790	Scott County	Kansas	KS	\N	\N	\N
15007	15	71851	Kauai County	Hawaii	HI	\N	\N	\N
54047	54	16916	McDowell County	West Virginia	WV	\N	\N	\N
22043	22	22254	Grant Parish	Louisiana	LA	\N	\N	\N
38085	38	4173	Sioux County	North Dakota	ND	\N	\N	\N
39115	39	14305	Morgan County	Ohio	OH	\N	\N	\N
01057	01	16241	Fayette County	Alabama	AL	\N	\N	\N
13191	13	14387	McIntosh County	Georgia	GA	\N	\N	\N
46121	46	10313	Todd County	South Dakota	SD	\N	\N	\N
31085	31	916	Hayes County	Nebraska	NE	\N	\N	\N
55113	55	16700	Sawyer County	Wisconsin	WI	\N	\N	\N
06083	06	444766	Santa Barbara County	California	CA	\N	\N	\N
72047	72	\N	Corozal Municipio	Puerto Rico	PR	\N	\N	\N
37065	37	50829	Edgecombe County	North Carolina	NC	\N	\N	\N
40097	40	41152	Mayes County	Oklahoma	OK	\N	\N	\N
22105	22	136765	Tangipahoa Parish	Louisiana	LA	\N	\N	\N
36013	36	126032	Chautauqua County	New York	NY	\N	\N	\N
25007	25	17461	Dukes County	Massachusetts	MA	\N	\N	\N
48141	48	841286	El Paso County	Texas	TX	\N	\N	\N
19165	19	11430	Shelby County	Iowa	IA	\N	\N	\N
31051	31	5596	Dixon County	Nebraska	NE	\N	\N	\N
48391	48	6877	Refugio County	Texas	TX	\N	\N	\N
17045	17	16858	Edgar County	Illinois	IL	\N	\N	\N
38105	38	38700	Williams County	North Dakota	ND	\N	\N	\N
19105	19	20617	Jones County	Iowa	IA	\N	\N	\N
17000	17	\N	Illinois Unknown	Illinois	IL	\N	\N	\N
32031	32	477082	Washoe County	Nevada	NV	\N	\N	\N
18139	18	16649	Rush County	Indiana	IN	\N	\N	\N
35029	35	23905	Luna County	New Mexico	NM	\N	\N	\N
39031	39	36449	Coshocton County	Ohio	OH	\N	\N	\N
06065	06	2489188	Riverside County	California	CA	\N	\N	\N
30109	30	939	Wibaux County	Montana	MT	\N	\N	\N
09005	09	179610	Litchfield County	Connecticut	CT	\N	\N	\N
20039	20	2776	Decatur County	Kansas	KS	\N	\N	\N
40103	40	11113	Noble County	Oklahoma	OK	\N	\N	\N
17099	17	107571	LaSalle County	Illinois	IL	\N	\N	\N
51001	51	32238	Accomack County	Virginia	VA	\N	\N	\N
37099	37	44033	Jackson County	North Carolina	NC	\N	\N	\N
39119	39	86020	Muskingum County	Ohio	OH	\N	\N	\N
17177	17	43831	Stephenson County	Illinois	IL	\N	\N	\N
08053	08	808	Hinsdale County	Colorado	CO	\N	\N	\N
27153	27	24732	Todd County	Minnesota	MN	\N	\N	\N
21035	21	39300	Calloway County	Kentucky	KY	\N	\N	\N
16071	16	4520	Oneida County	Idaho	ID	\N	\N	\N
36009	36	75863	Cattaraugus County	New York	NY	\N	\N	\N
17185	17	11190	Wabash County	Illinois	IL	\N	\N	\N
51063	51	15777	Floyd County	Virginia	VA	\N	\N	\N
45041	45	137588	Florence County	South Carolina	SC	\N	\N	\N
29073	29	14566	Gasconade County	Missouri	MO	\N	\N	\N
31141	31	33364	Platte County	Nebraska	NE	\N	\N	\N
12039	12	45277	Gadsden County	Florida	FL	\N	\N	\N
48175	48	7626	Goliad County	Texas	TX	\N	\N	\N
05143	05	243216	Washington County	Arkansas	AR	\N	\N	\N
29151	29	13535	Osage County	Missouri	MO	\N	\N	\N
28009	28	8351	Benton County	Mississippi	MS	\N	\N	\N
48179	48	21658	Gray County	Texas	TX	\N	\N	\N
13009	13	45099	Baldwin County	Georgia	GA	\N	\N	\N
47071	47	25583	Hardin County	Tennessee	TN	\N	\N	\N
47081	47	25387	Hickman County	Tennessee	TN	\N	\N	\N
41039	41	382986	Lane County	Oregon	OR	\N	\N	\N
40045	40	3830	Ellis County	Oklahoma	OK	\N	\N	\N
72111	72	\N	Peñuelas Municipio	Puerto Rico	PR	\N	\N	\N
28141	28	19275	Tishomingo County	Mississippi	MS	\N	\N	\N
31143	31	5201	Polk County	Nebraska	NE	\N	\N	\N
51057	51	10943	Essex County	Virginia	VA	\N	\N	\N
05031	05	112245	Craighead County	Arkansas	AR	\N	\N	\N
21041	21	10730	Carroll County	Kentucky	KY	\N	\N	\N
02150	02	12992	Kodiak Island Borough	Alaska	AK	\N	\N	\N
20165	20	2947	Rush County	Kansas	KS	\N	\N	\N
29186	29	17924	Ste. Genevieve County	Missouri	MO	\N	\N	\N
37157	37	91285	Rockingham County	North Carolina	NC	\N	\N	\N
29081	29	8321	Harrison County	Missouri	MO	\N	\N	\N
47095	47	6988	Lake County	Tennessee	TN	\N	\N	\N
27023	27	11758	Chippewa County	Minnesota	MN	\N	\N	\N
12123	12	21600	Taylor County	Florida	FL	\N	\N	\N
13133	13	18837	Greene County	Georgia	GA	\N	\N	\N
56013	56	39317	Fremont County	Wyoming	WY	\N	\N	\N
36113	36	63756	Warren County	New York	NY	\N	\N	\N
53007	53	77574	Chelan County	Washington	WA	\N	\N	\N
08007	08	14196	Archuleta County	Colorado	CO	\N	\N	\N
21165	21	6502	Menifee County	Kentucky	KY	\N	\N	\N
54083	54	28387	Randolph County	West Virginia	WV	\N	\N	\N
48411	48	6039	San Saba County	Texas	TX	\N	\N	\N
15001	15	203340	Hawaii County	Hawaii	HI	\N	\N	\N
26151	26	40747	Sanilac County	Michigan	MI	\N	\N	\N
42121	42	50328	Venango County	Pennsylvania	PA	\N	\N	\N
39163	39	12972	Vinton County	Ohio	OH	\N	\N	\N
48337	48	19962	Montague County	Texas	TX	\N	\N	\N
13241	13	17273	Rabun County	Georgia	GA	\N	\N	\N
13281	13	12247	Towns County	Georgia	GA	\N	\N	\N
29169	29	52709	Pulaski County	Missouri	MO	\N	\N	\N
05057	05	21253	Hempstead County	Arkansas	AR	\N	\N	\N
27067	27	43130	Kandiyohi County	Minnesota	MN	\N	\N	\N
38089	38	32107	Stark County	North Dakota	ND	\N	\N	\N
54017	54	8368	Doddridge County	West Virginia	WV	\N	\N	\N
21127	21	15436	Lawrence County	Kentucky	KY	\N	\N	\N
27145	27	162038	Stearns County	Minnesota	MN	\N	\N	\N
21169	21	10058	Metcalfe County	Kentucky	KY	\N	\N	\N
42065	42	43108	Jefferson County	Pennsylvania	PA	\N	\N	\N
51099	51	27381	King George County	Virginia	VA	\N	\N	\N
05023	05	24935	Cleburne County	Arkansas	AR	\N	\N	\N
05079	05	12944	Lincoln County	Arkansas	AR	\N	\N	\N
37033	37	22443	Caswell County	North Carolina	NC	\N	\N	\N
21225	21	14443	Union County	Kentucky	KY	\N	\N	\N
42035	42	37957	Clinton County	Pennsylvania	PA	\N	\N	\N
56033	56	30863	Sheridan County	Wyoming	WY	\N	\N	\N
21227	21	134510	Warren County	Kentucky	KY	\N	\N	\N
16059	16	8054	Lemhi County	Idaho	ID	\N	\N	\N
13081	13	22034	Crisp County	Georgia	GA	\N	\N	\N
38083	38	1275	Sheridan County	North Dakota	ND	\N	\N	\N
17087	17	12358	Johnson County	Illinois	IL	\N	\N	\N
35037	35	8197	Quay County	New Mexico	NM	\N	\N	\N
05059	05	33787	Hot Spring County	Arkansas	AR	\N	\N	\N
01105	01	8687	Perry County	Alabama	AL	\N	\N	\N
32021	32	4518	Mineral County	Nevada	NV	\N	\N	\N
18175	18	28213	Washington County	Indiana	IN	\N	\N	\N
48483	48	4946	Wheeler County	Texas	TX	\N	\N	\N
35000	35	\N	New Mexico Unknown	New Mexico	NM	\N	\N	\N
46011	46	35603	Brookings County	South Dakota	SD	\N	\N	\N
26071	26	11066	Iron County	Michigan	MI	\N	\N	\N
38043	38	2458	Kidder County	North Dakota	ND	\N	\N	\N
37007	37	24097	Anson County	North Carolina	NC	\N	\N	\N
19145	19	15073	Page County	Iowa	IA	\N	\N	\N
47067	47	6493	Hancock County	Tennessee	TN	\N	\N	\N
08085	08	43322	Montrose County	Colorado	CO	\N	\N	\N
18107	18	38365	Montgomery County	Indiana	IN	\N	\N	\N
54041	54	15805	Lewis County	West Virginia	WV	\N	\N	\N
29065	29	15481	Dent County	Missouri	MO	\N	\N	\N
12035	12	118451	Flagler County	Florida	FL	\N	\N	\N
20185	20	4046	Stafford County	Kansas	KS	\N	\N	\N
19051	19	9051	Davis County	Iowa	IA	\N	\N	\N
29157	29	19194	Perry County	Missouri	MO	\N	\N	\N
04027	04	217824	Yuma County	Arizona	AZ	\N	\N	\N
20000	20	\N	Kansas Unknown	Kansas	KS	\N	\N	\N
42127	42	51163	Wayne County	Pennsylvania	PA	\N	\N	\N
72065	72	\N	Hatillo Municipio	Puerto Rico	PR	\N	\N	\N
51590	51	39869	Danville city	Virginia	VA	\N	\N	\N
20067	20	7077	Grant County	Kansas	KS	\N	\N	\N
12087	12	73900	Monroe County	Florida	FL	\N	\N	\N
05001	05	17383	Arkansas County	Arkansas	AR	\N	\N	\N
40069	40	10824	Johnston County	Oklahoma	OK	\N	\N	\N
48437	48	7340	Swisher County	Texas	TX	\N	\N	\N
41063	41	7181	Wallowa County	Oregon	OR	\N	\N	\N
48185	48	29614	Grimes County	Texas	TX	\N	\N	\N
22091	22	10081	St. Helena Parish	Louisiana	LA	\N	\N	\N
19091	19	9473	Humboldt County	Iowa	IA	\N	\N	\N
31095	31	7099	Jefferson County	Nebraska	NE	\N	\N	\N
39127	39	36215	Perry County	Ohio	OH	\N	\N	\N
16057	16	40830	Latah County	Idaho	ID	\N	\N	\N
46053	46	4219	Gregory County	South Dakota	SD	\N	\N	\N
49029	49	12462	Morgan County	Utah	UT	\N	\N	\N
22021	22	9839	Caldwell Parish	Louisiana	LA	\N	\N	\N
19133	19	8598	Monona County	Iowa	IA	\N	\N	\N
16017	16	46817	Bonner County	Idaho	ID	\N	\N	\N
51690	51	12355	Martinsville city	Virginia	VA	\N	\N	\N
48417	48	3300	Shackelford County	Texas	TX	\N	\N	\N
27085	27	35710	McLeod County	Minnesota	MN	\N	\N	\N
30017	30	11292	Custer County	Montana	MT	\N	\N	\N
35057	35	15486	Torrance County	New Mexico	NM	\N	\N	\N
06111	06	841387	Ventura County	California	CA	\N	\N	\N
47015	47	14847	Cannon County	Tennessee	TN	\N	\N	\N
42067	42	24619	Juniata County	Pennsylvania	PA	\N	\N	\N
48017	48	6697	Bailey County	Texas	TX	\N	\N	\N
17013	17	4616	Calhoun County	Illinois	IL	\N	\N	\N
22107	22	4178	Tensas Parish	Louisiana	LA	\N	\N	\N
21149	21	9075	McLean County	Kentucky	KY	\N	\N	\N
26097	26	10839	Mackinac County	Michigan	MI	\N	\N	\N
02066	02	2919	Copper River Census Area	Alaska	AK	\N	\N	\N
04019	04	1061175	Pima County	Arizona	AZ	\N	\N	\N
38025	38	4465	Dunn County	North Dakota	ND	\N	\N	\N
29117	29	14413	Livingston County	Missouri	MO	\N	\N	\N
48315	48	9960	Marion County	Texas	TX	\N	\N	\N
28077	28	12480	Lawrence County	Mississippi	MS	\N	\N	\N
21025	21	12550	Breathitt County	Kentucky	KY	\N	\N	\N
29181	29	13300	Ripley County	Missouri	MO	\N	\N	\N
48067	48	29879	Cass County	Texas	TX	\N	\N	\N
17071	17	6535	Henderson County	Illinois	IL	\N	\N	\N
39033	39	41338	Crawford County	Ohio	OH	\N	\N	\N
13271	13	15781	Telfair County	Georgia	GA	\N	\N	\N
48241	48	35375	Jasper County	Texas	TX	\N	\N	\N
47075	47	17002	Haywood County	Tennessee	TN	\N	\N	\N
40123	40	38397	Pontotoc County	Oklahoma	OK	\N	\N	\N
22027	22	15508	Claiborne Parish	Louisiana	LA	\N	\N	\N
45055	45	67472	Kershaw County	South Carolina	SC	\N	\N	\N
51015	51	76544	Augusta County	Virginia	VA	\N	\N	\N
13173	13	10737	Lanier County	Georgia	GA	\N	\N	\N
13161	13	15213	Jeff Davis County	Georgia	GA	\N	\N	\N
48225	48	22835	Houston County	Texas	TX	\N	\N	\N
19073	19	8795	Greene County	Iowa	IA	\N	\N	\N
72067	72	\N	Hormigueros Municipio	Puerto Rico	PR	\N	\N	\N
16077	16	7643	Power County	Idaho	ID	\N	\N	\N
72089	72	\N	Luquillo Municipio	Puerto Rico	PR	\N	\N	\N
40115	40	30879	Ottawa County	Oklahoma	OK	\N	\N	\N
08091	08	5001	Ouray County	Colorado	CO	\N	\N	\N
02070	02	4833	Dillingham Census Area	Alaska	AK	\N	\N	\N
16075	16	24771	Payette County	Idaho	ID	\N	\N	\N
01065	01	14670	Hale County	Alabama	AL	\N	\N	\N
30001	30	9483	Beaverhead County	Montana	MT	\N	\N	\N
29147	29	21743	Nodaway County	Missouri	MO	\N	\N	\N
37189	37	56441	Watauga County	North Carolina	NC	\N	\N	\N
08023	08	3921	Costilla County	Colorado	CO	\N	\N	\N
39001	39	27531	Adams County	Ohio	OH	\N	\N	\N
53039	53	22697	Klickitat County	Washington	WA	\N	\N	\N
13107	13	22507	Emanuel County	Georgia	GA	\N	\N	\N
27093	27	23341	Meeker County	Minnesota	MN	\N	\N	\N
36109	36	101058	Tompkins County	New York	NY	\N	\N	\N
21083	21	36818	Graves County	Kentucky	KY	\N	\N	\N
40039	40	28648	Custer County	Oklahoma	OK	\N	\N	\N
55051	55	5698	Iron County	Wisconsin	WI	\N	\N	\N
05115	05	64334	Pope County	Arkansas	AR	\N	\N	\N
01131	01	10206	Wilcox County	Alabama	AL	\N	\N	\N
13137	13	46047	Habersham County	Georgia	GA	\N	\N	\N
08095	08	4367	Phillips County	Colorado	CO	\N	\N	\N
05139	05	38219	Union County	Arkansas	AR	\N	\N	\N
20003	20	7949	Anderson County	Kansas	KS	\N	\N	\N
31093	31	6488	Howard County	Nebraska	NE	\N	\N	\N
55045	55	36603	Green County	Wisconsin	WI	\N	\N	\N
12051	12	42813	Hendry County	Florida	FL	\N	\N	\N
20007	20	4358	Barber County	Kansas	KS	\N	\N	\N
16061	16	3838	Lewis County	Idaho	ID	\N	\N	\N
36045	36	108095	Jefferson County	New York	NY	\N	\N	\N
33005	33	76228	Cheshire County	New Hampshire	NH	\N	\N	\N
48481	48	41685	Wharton County	Texas	TX	\N	\N	\N
38051	38	2440	McIntosh County	North Dakota	ND	\N	\N	\N
27007	27	47442	Beltrami County	Minnesota	MN	\N	\N	\N
72001	72	\N	Adjuntas Municipio	Puerto Rico	PR	\N	\N	\N
72015	72	\N	Arroyo Municipio	Puerto Rico	PR	\N	\N	\N
13201	13	5622	Miller County	Georgia	GA	\N	\N	\N
48163	48	20379	Frio County	Texas	TX	\N	\N	\N
48269	48	283	King County	Texas	TX	\N	\N	\N
17175	17	5262	Stark County	Illinois	IL	\N	\N	\N
31119	31	34813	Madison County	Nebraska	NE	\N	\N	\N
31133	31	2601	Pawnee County	Nebraska	NE	\N	\N	\N
46037	46	5345	Day County	South Dakota	SD	\N	\N	\N
04017	04	112112	Navajo County	Arizona	AZ	\N	\N	\N
16005	16	88795	Bannock County	Idaho	ID	\N	\N	\N
12043	12	14198	Glades County	Florida	FL	\N	\N	\N
13155	13	9387	Irwin County	Georgia	GA	\N	\N	\N
39065	39	31469	Hardin County	Ohio	OH	\N	\N	\N
55107	55	14022	Rusk County	Wisconsin	WI	\N	\N	\N
27045	27	21135	Fillmore County	Minnesota	MN	\N	\N	\N
46023	46	9262	Charles Mix County	South Dakota	SD	\N	\N	\N
13291	13	25358	Union County	Georgia	GA	\N	\N	\N
21063	21	7372	Elliott County	Kentucky	KY	\N	\N	\N
37173	37	14179	Swain County	North Carolina	NC	\N	\N	\N
48307	48	7823	McCulloch County	Texas	TX	\N	\N	\N
40079	40	49935	Le Flore County	Oklahoma	OK	\N	\N	\N
48223	48	37170	Hopkins County	Texas	TX	\N	\N	\N
28043	28	20610	Grenada County	Mississippi	MS	\N	\N	\N
47069	47	24836	Hardeman County	Tennessee	TN	\N	\N	\N
54043	54	20043	Lincoln County	West Virginia	WV	\N	\N	\N
20101	20	1518	Lane County	Kansas	KS	\N	\N	\N
51027	51	20613	Buchanan County	Virginia	VA	\N	\N	\N
55123	55	30861	Vernon County	Wisconsin	WI	\N	\N	\N
21005	21	22833	Anderson County	Kentucky	KY	\N	\N	\N
12055	12	106639	Highlands County	Florida	FL	\N	\N	\N
31157	31	35299	Scotts Bluff County	Nebraska	NE	\N	\N	\N
29221	29	24604	Washington County	Missouri	MO	\N	\N	\N
53077	53	251879	Yakima County	Washington	WA	\N	\N	\N
48501	48	8702	Yoakum County	Texas	TX	\N	\N	\N
48401	48	54324	Rusk County	Texas	TX	\N	\N	\N
20099	20	19586	Labette County	Kansas	KS	\N	\N	\N
06057	06	99606	Nevada County	California	CA	\N	\N	\N
19093	19	6833	Ida County	Iowa	IA	\N	\N	\N
45009	45	13906	Bamberg County	South Carolina	SC	\N	\N	\N
47107	47	54208	McMinn County	Tennessee	TN	\N	\N	\N
21163	21	28616	Meade County	Kentucky	KY	\N	\N	\N
46045	46	3817	Edmunds County	South Dakota	SD	\N	\N	\N
13233	13	42840	Polk County	Georgia	GA	\N	\N	\N
53043	53	11090	Lincoln County	Washington	WA	\N	\N	\N
53005	53	206426	Benton County	Washington	WA	\N	\N	\N
13129	13	58780	Gordon County	Georgia	GA	\N	\N	\N
27151	27	9176	Swift County	Minnesota	MN	\N	\N	\N
04009	04	39211	Graham County	Arizona	AZ	\N	\N	\N
37187	37	11485	Washington County	North Carolina	NC	\N	\N	\N
39071	39	43304	Highland County	Ohio	OH	\N	\N	\N
53049	53	22984	Pacific County	Washington	WA	\N	\N	\N
27009	27	40958	Benton County	Minnesota	MN	\N	\N	\N
40147	40	52222	Washington County	Oklahoma	OK	\N	\N	\N
54087	54	13482	Roane County	West Virginia	WV	\N	\N	\N
05055	05	45597	Greene County	Arkansas	AR	\N	\N	\N
20073	20	5868	Greenwood County	Kansas	KS	\N	\N	\N
42059	42	35621	Greene County	Pennsylvania	PA	\N	\N	\N
51183	51	10925	Sussex County	Virginia	VA	\N	\N	\N
27099	27	40150	Mower County	Minnesota	MN	\N	\N	\N
46071	46	3321	Jackson County	South Dakota	SD	\N	\N	\N
38071	38	11388	Ramsey County	North Dakota	ND	\N	\N	\N
20113	20	28448	McPherson County	Kansas	KS	\N	\N	\N
22065	22	10635	Madison Parish	Louisiana	LA	\N	\N	\N
48177	48	20948	Gonzales County	Texas	TX	\N	\N	\N
46081	46	26221	Lawrence County	South Dakota	SD	\N	\N	\N
02158	02	8328	Kusilvak Census Area	Alaska	AK	\N	\N	\N
23029	23	31473	Washington County	Maine	ME	\N	\N	\N
21155	21	19314	Marion County	Kentucky	KY	\N	\N	\N
17035	17	10649	Cumberland County	Illinois	IL	\N	\N	\N
18015	18	20228	Carroll County	Indiana	IN	\N	\N	\N
46089	46	2363	McPherson County	South Dakota	SD	\N	\N	\N
31099	31	6652	Kearney County	Nebraska	NE	\N	\N	\N
39037	39	51205	Darke County	Ohio	OH	\N	\N	\N
47063	47	65110	Hamblen County	Tennessee	TN	\N	\N	\N
13075	13	17291	Cook County	Georgia	GA	\N	\N	\N
21033	21	12687	Caldwell County	Kentucky	KY	\N	\N	\N
38045	38	4033	LaMoure County	North Dakota	ND	\N	\N	\N
30023	30	9204	Deer Lodge County	Montana	MT	\N	\N	\N
48281	48	21789	Lampasas County	Texas	TX	\N	\N	\N
02000	02	\N	Alaska Unknown	Alaska	AK	\N	\N	\N
48261	48	379	Kenedy County	Texas	TX	\N	\N	\N
13205	13	21602	Mitchell County	Georgia	GA	\N	\N	\N
34017	34	671666	Hudson County	New Jersey	NJ	\N	\N	\N
41021	41	1975	Gilliam County	Oregon	OR	\N	\N	\N
37075	37	8474	Graham County	North Carolina	NC	\N	\N	\N
16053	16	24578	Jerome County	Idaho	ID	\N	\N	\N
48423	48	235806	Smith County	Texas	TX	\N	\N	\N
48313	48	14427	Madison County	Texas	TX	\N	\N	\N
28129	28	15779	Smith County	Mississippi	MS	\N	\N	\N
37005	37	11194	Alleghany County	North Carolina	NC	\N	\N	\N
31081	31	9237	Hamilton County	Nebraska	NE	\N	\N	\N
37049	37	101233	Craven County	North Carolina	NC	\N	\N	\N
26137	26	24765	Otsego County	Michigan	MI	\N	\N	\N
15009	15	167902	Maui County	Hawaii	HI	\N	\N	\N
10001	10	183643	Kent County	Delaware	DE	\N	\N	\N
48359	48	2135	Oldham County	Texas	TX	\N	\N	\N
18129	18	25275	Posey County	Indiana	IN	\N	\N	\N
06015	06	27968	Del Norte County	California	CA	\N	\N	\N
55105	55	163084	Rock County	Wisconsin	WI	\N	\N	\N
46101	46	6525	Moody County	South Dakota	SD	\N	\N	\N
27057	27	21783	Hubbard County	Minnesota	MN	\N	\N	\N
72103	72	\N	Naguabo Municipio	Puerto Rico	PR	\N	\N	\N
48267	48	4396	Kimble County	Texas	TX	\N	\N	\N
48407	48	29301	San Jacinto County	Texas	TX	\N	\N	\N
37097	37	185770	Iredell County	North Carolina	NC	\N	\N	\N
48181	48	138318	Grayson County	Texas	TX	\N	\N	\N
45089	45	29825	Williamsburg County	South Carolina	SC	\N	\N	\N
31109	31	320650	Lancaster County	Nebraska	NE	\N	\N	\N
55027	55	87336	Dodge County	Wisconsin	WI	\N	\N	\N
26073	26	69504	Isabella County	Michigan	MI	\N	\N	\N
13231	13	19121	Pike County	Georgia	GA	\N	\N	\N
69120	69	\N	Tinian Municipality	Northern Mariana Islands	MP	\N	\N	\N
56039	56	23497	Teton County	Wyoming	WY	\N	\N	\N
21125	21	61238	Laurel County	Kentucky	KY	\N	\N	\N
17167	17	193882	Sangamon County	Illinois	IL	\N	\N	\N
21235	21	36451	Whitley County	Kentucky	KY	\N	\N	\N
51017	51	4119	Bath County	Virginia	VA	\N	\N	\N
38069	38	3928	Pierce County	North Dakota	ND	\N	\N	\N
06103	06	64494	Tehama County	California	CA	\N	\N	\N
72075	72	\N	Juana Díaz Municipio	Puerto Rico	PR	\N	\N	\N
21009	21	44300	Barren County	Kentucky	KY	\N	\N	\N
47003	47	50179	Bedford County	Tennessee	TN	\N	\N	\N
31053	31	36222	Dodge County	Nebraska	NE	\N	\N	\N
41000	41	\N	Oregon Unknown	Oregon	OR	\N	\N	\N
12129	12	34319	Wakulla County	Florida	FL	\N	\N	\N
30065	30	4669	Musselshell County	Montana	MT	\N	\N	\N
19057	19	38708	Des Moines County	Iowa	IA	\N	\N	\N
55031	55	43702	Douglas County	Wisconsin	WI	\N	\N	\N
48003	48	18879	Andrews County	Texas	TX	\N	\N	\N
18147	18	20225	Spencer County	Indiana	IN	\N	\N	\N
01077	01	93368	Lauderdale County	Alabama	AL	\N	\N	\N
13159	13	14483	Jasper County	Georgia	GA	\N	\N	\N
56025	56	80815	Natrona County	Wyoming	WY	\N	\N	\N
54063	54	13229	Monroe County	West Virginia	WV	\N	\N	\N
37167	37	63239	Stanly County	North Carolina	NC	\N	\N	\N
19015	19	26277	Boone County	Iowa	IA	\N	\N	\N
46041	46	5789	Dewey County	South Dakota	SD	\N	\N	\N
29101	29	54219	Johnson County	Missouri	MO	\N	\N	\N
21107	21	44662	Hopkins County	Kentucky	KY	\N	\N	\N
21023	21	8286	Bracken County	Kentucky	KY	\N	\N	\N
20027	20	8025	Clay County	Kansas	KS	\N	\N	\N
55009	55	264610	Brown County	Wisconsin	WI	\N	\N	\N
08113	08	8105	San Miguel County	Colorado	CO	\N	\N	\N
06063	06	18967	Plumas County	California	CA	\N	\N	\N
36015	36	82622	Chemung County	New York	NY	\N	\N	\N
56001	56	38950	Albany County	Wyoming	WY	\N	\N	\N
29013	29	16242	Bates County	Missouri	MO	\N	\N	\N
18051	18	33825	Gibson County	Indiana	IN	\N	\N	\N
45071	45	38445	Newberry County	South Carolina	SC	\N	\N	\N
08073	08	5680	Lincoln County	Colorado	CO	\N	\N	\N
01097	01	412716	Mobile County	Alabama	AL	\N	\N	\N
48039	48	380518	Brazoria County	Texas	TX	\N	\N	\N
19095	19	16138	Iowa County	Iowa	IA	\N	\N	\N
47131	47	30131	Obion County	Tennessee	TN	\N	\N	\N
34021	34	367239	Mercer County	New Jersey	NJ	\N	\N	\N
56007	56	14711	Carbon County	Wyoming	WY	\N	\N	\N
18111	18	13907	Newton County	Indiana	IN	\N	\N	\N
45067	45	30158	Marion County	South Carolina	SC	\N	\N	\N
47127	47	6438	Moore County	Tennessee	TN	\N	\N	\N
01069	01	106580	Houston County	Alabama	AL	\N	\N	\N
08117	08	30631	Summit County	Colorado	CO	\N	\N	\N
72073	72	\N	Jayuya Municipio	Puerto Rico	PR	\N	\N	\N
38101	38	68466	Ward County	North Dakota	ND	\N	\N	\N
08055	08	6883	Huerfano County	Colorado	CO	\N	\N	\N
54081	54	72920	Raleigh County	West Virginia	WV	\N	\N	\N
01019	01	26294	Cherokee County	Alabama	AL	\N	\N	\N
21147	21	17071	McCreary County	Kentucky	KY	\N	\N	\N
53069	53	4498	Wahkiakum County	Washington	WA	\N	\N	\N
19067	19	15480	Floyd County	Iowa	IA	\N	\N	\N
18053	18	65225	Grant County	Indiana	IN	\N	\N	\N
56041	56	20215	Uinta County	Wyoming	WY	\N	\N	\N
02068	02	2081	Denali Borough	Alaska	AK	\N	\N	\N
39125	39	18648	Paulding County	Ohio	OH	\N	\N	\N
47000	47	\N	Tennessee Unknown	Tennessee	TN	\N	\N	\N
49001	49	6761	Beaver County	Utah	UT	\N	\N	\N
55067	55	19119	Langlade County	Wisconsin	WI	\N	\N	\N
13115	13	98604	Floyd County	Georgia	GA	\N	\N	\N
16019	16	122134	Bonneville County	Idaho	ID	\N	\N	\N
13181	13	8031	Lincoln County	Georgia	GA	\N	\N	\N
39117	39	35411	Morrow County	Ohio	OH	\N	\N	\N
37083	37	49479	Halifax County	North Carolina	NC	\N	\N	\N
55115	55	40786	Shawano County	Wisconsin	WI	\N	\N	\N
13105	13	19335	Elbert County	Georgia	GA	\N	\N	\N
18077	18	32110	Jefferson County	Indiana	IN	\N	\N	\N
21211	21	49611	Shelby County	Kentucky	KY	\N	\N	\N
30029	30	105851	Flathead County	Montana	MT	\N	\N	\N
27041	27	38328	Douglas County	Minnesota	MN	\N	\N	\N
53071	53	61292	Walla Walla County	Washington	WA	\N	\N	\N
05043	05	17977	Drew County	Arkansas	AR	\N	\N	\N
05033	05	63409	Crawford County	Arkansas	AR	\N	\N	\N
48077	48	10550	Clay County	Texas	TX	\N	\N	\N
30031	30	116806	Gallatin County	Montana	MT	\N	\N	\N
27001	27	15848	Aitkin County	Minnesota	MN	\N	\N	\N
06019	06	1000918	Fresno County	California	CA	\N	\N	\N
31113	31	747	Logan County	Nebraska	NE	\N	\N	\N
17101	17	15467	Lawrence County	Illinois	IL	\N	\N	\N
12125	12	15182	Union County	Florida	FL	\N	\N	\N
29213	29	56104	Taney County	Missouri	MO	\N	\N	\N
17023	17	15268	Clark County	Illinois	IL	\N	\N	\N
34029	34	614237	Ocean County	New Jersey	NJ	\N	\N	\N
29059	29	17219	Dallas County	Missouri	MO	\N	\N	\N
22115	22	47894	Vernon Parish	Louisiana	LA	\N	\N	\N
13277	13	40719	Tift County	Georgia	GA	\N	\N	\N
51790	51	25190	Staunton city	Virginia	VA	\N	\N	\N
30000	30	\N	Montana Unknown	Montana	MT	\N	\N	\N
08105	08	11296	Rio Grande County	Colorado	CO	\N	\N	\N
17003	17	5497	Alexander County	Illinois	IL	\N	\N	\N
16047	16	15618	Gooding County	Idaho	ID	\N	\N	\N
48503	48	17904	Young County	Texas	TX	\N	\N	\N
42119	42	44294	Union County	Pennsylvania	PA	\N	\N	\N
31011	31	5096	Boone County	Nebraska	NE	\N	\N	\N
36023	36	47173	Cortland County	New York	NY	\N	\N	\N
47017	47	27779	Carroll County	Tennessee	TN	\N	\N	\N
05029	05	21037	Conway County	Arkansas	AR	\N	\N	\N
27103	27	34482	Nicollet County	Minnesota	MN	\N	\N	\N
30003	30	13063	Big Horn County	Montana	MT	\N	\N	\N
13179	13	63004	Liberty County	Georgia	GA	\N	\N	\N
17095	17	49053	Knox County	Illinois	IL	\N	\N	\N
54005	54	21055	Boone County	West Virginia	WV	\N	\N	\N
17029	17	50383	Coles County	Illinois	IL	\N	\N	\N
54093	54	6816	Tucker County	West Virginia	WV	\N	\N	\N
48335	48	8202	Mitchell County	Texas	TX	\N	\N	\N
31131	31	15965	Otoe County	Nebraska	NE	\N	\N	\N
49031	49	1473	Piute County	Utah	UT	\N	\N	\N
26049	26	404794	Genesee County	Michigan	MI	\N	\N	\N
19025	19	9473	Calhoun County	Iowa	IA	\N	\N	\N
35049	35	151946	Santa Fe County	New Mexico	NM	\N	\N	\N
18039	18	206161	Elkhart County	Indiana	IN	\N	\N	\N
21157	21	31163	Marshall County	Kentucky	KY	\N	\N	\N
12001	12	271218	Alachua County	Florida	FL	\N	\N	\N
72037	72	\N	Ceiba Municipio	Puerto Rico	PR	\N	\N	\N
01123	01	40133	Tallapoosa County	Alabama	AL	\N	\N	\N
22005	22	128665	Ascension Parish	Louisiana	LA	\N	\N	\N
41049	41	11700	Morrow County	Oregon	OR	\N	\N	\N
48107	48	5567	Crosby County	Texas	TX	\N	\N	\N
20161	20	73202	Riley County	Kansas	KS	\N	\N	\N
51155	51	33935	Pulaski County	Virginia	VA	\N	\N	\N
17025	17	13079	Clay County	Illinois	IL	\N	\N	\N
48063	48	13060	Camp County	Texas	TX	\N	\N	\N
40057	40	2557	Harmon County	Oklahoma	OK	\N	\N	\N
32005	32	49088	Douglas County	Nevada	NV	\N	\N	\N
20205	20	8362	Wilson County	Kansas	KS	\N	\N	\N
38095	38	2108	Towner County	North Dakota	ND	\N	\N	\N
02130	02	13747	Ketchikan Gateway Borough	Alaska	AK	\N	\N	\N
08049	08	15794	Grand County	Colorado	CO	\N	\N	\N
30107	30	2157	Wheatland County	Montana	MT	\N	\N	\N
46115	46	6319	Spink County	South Dakota	SD	\N	\N	\N
48111	48	7273	Dallam County	Texas	TX	\N	\N	\N
31007	31	786	Banner County	Nebraska	NE	\N	\N	\N
13311	13	31094	White County	Georgia	GA	\N	\N	\N
51025	51	16037	Brunswick County	Virginia	VA	\N	\N	\N
48393	48	813	Roberts County	Texas	TX	\N	\N	\N
40073	40	15806	Kingfisher County	Oklahoma	OK	\N	\N	\N
37163	37	63382	Sampson County	North Carolina	NC	\N	\N	\N
20047	20	2750	Edwards County	Kansas	KS	\N	\N	\N
47029	47	36225	Cocke County	Tennessee	TN	\N	\N	\N
45005	45	8331	Allendale County	South Carolina	SC	\N	\N	\N
55081	55	46582	Monroe County	Wisconsin	WI	\N	\N	\N
39000	39	\N	Ohio Unknown	Ohio	OH	\N	\N	\N
17153	17	5201	Pulaski County	Illinois	IL	\N	\N	\N
29195	29	22858	Saline County	Missouri	MO	\N	\N	\N
28151	28	42837	Washington County	Mississippi	MS	\N	\N	\N
01055	01	102371	Etowah County	Alabama	AL	\N	\N	\N
23023	23	36044	Sagadahoc County	Maine	ME	\N	\N	\N
22109	22	109859	Terrebonne Parish	Louisiana	LA	\N	\N	\N
48007	48	23814	Aransas County	Texas	TX	\N	\N	\N
01047	01	36098	Dallas County	Alabama	AL	\N	\N	\N
30095	30	9888	Stillwater County	Montana	MT	\N	\N	\N
39039	39	37778	Defiance County	Ohio	OH	\N	\N	\N
56023	56	20253	Lincoln County	Wyoming	WY	\N	\N	\N
40075	40	8741	Kiowa County	Oklahoma	OK	\N	\N	\N
16087	16	10360	Washington County	Idaho	ID	\N	\N	\N
24029	24	19192	Kent County	Maryland	MD	\N	\N	\N
51139	51	23933	Page County	Virginia	VA	\N	\N	\N
42021	42	128672	Cambria County	Pennsylvania	PA	\N	\N	\N
48469	48	91936	Victoria County	Texas	TX	\N	\N	\N
55037	55	4298	Florence County	Wisconsin	WI	\N	\N	\N
47089	47	55307	Jefferson County	Tennessee	TN	\N	\N	\N
39135	39	40836	Preble County	Ohio	OH	\N	\N	\N
72033	72	\N	Cataño Municipio	Puerto Rico	PR	\N	\N	\N
30081	30	45002	Ravalli County	Montana	MT	\N	\N	\N
55055	55	85038	Jefferson County	Wisconsin	WI	\N	\N	\N
28119	28	6760	Quitman County	Mississippi	MS	\N	\N	\N
18087	18	40119	LaGrange County	Indiana	IN	\N	\N	\N
26029	26	26105	Charlevoix County	Michigan	MI	\N	\N	\N
26063	26	30653	Huron County	Michigan	MI	\N	\N	\N
72039	72	\N	Ciales Municipio	Puerto Rico	PR	\N	\N	\N
48099	48	76737	Coryell County	Texas	TX	\N	\N	\N
04025	04	240226	Yavapai County	Arizona	AZ	\N	\N	\N
13007	13	2971	Baker County	Georgia	GA	\N	\N	\N
40041	40	43136	Delaware County	Oklahoma	OK	\N	\N	\N
19151	19	6607	Pocahontas County	Iowa	IA	\N	\N	\N
04003	04	127450	Cochise County	Arizona	AZ	\N	\N	\N
31173	31	7220	Thurston County	Nebraska	NE	\N	\N	\N
22031	22	27650	De Soto Parish	Louisiana	LA	\N	\N	\N
20193	20	7702	Thomas County	Kansas	KS	\N	\N	\N
72119	72	\N	Río Grande Municipio	Puerto Rico	PR	\N	\N	\N
06003	06	1119	Alpine County	California	CA	\N	\N	\N
51119	51	10569	Middlesex County	Virginia	VA	\N	\N	\N
41007	41	40423	Clatsop County	Oregon	OR	\N	\N	\N
39107	39	41274	Mercer County	Ohio	OH	\N	\N	\N
28137	28	28539	Tate County	Mississippi	MS	\N	\N	\N
16041	16	14215	Franklin County	Idaho	ID	\N	\N	\N
72055	72	\N	Guánica Municipio	Puerto Rico	PR	\N	\N	\N
01129	01	15976	Washington County	Alabama	AL	\N	\N	\N
48227	48	36540	Howard County	Texas	TX	\N	\N	\N
13285	13	70214	Troup County	Georgia	GA	\N	\N	\N
51131	51	11673	Northampton County	Virginia	VA	\N	\N	\N
27127	27	15079	Redwood County	Minnesota	MN	\N	\N	\N
05021	05	14375	Clay County	Arkansas	AR	\N	\N	\N
45065	45	9430	McCormick County	South Carolina	SC	\N	\N	\N
42111	42	72916	Somerset County	Pennsylvania	PA	\N	\N	\N
31117	31	474	McPherson County	Nebraska	NE	\N	\N	\N
46075	46	938	Jones County	South Dakota	SD	\N	\N	\N
18099	18	46108	Marshall County	Indiana	IN	\N	\N	\N
31175	31	4103	Valley County	Nebraska	NE	\N	\N	\N
20197	20	6906	Wabaunsee County	Kansas	KS	\N	\N	\N
18137	18	28448	Ripley County	Indiana	IN	\N	\N	\N
40009	40	21468	Beckham County	Oklahoma	OK	\N	\N	\N
48053	48	49653	Burnet County	Texas	TX	\N	\N	\N
20135	20	2768	Ness County	Kansas	KS	\N	\N	\N
27125	27	4046	Red Lake County	Minnesota	MN	\N	\N	\N
53075	53	49500	Whitman County	Washington	WA	\N	\N	\N
26123	26	49348	Newaygo County	Michigan	MI	\N	\N	\N
49033	49	2452	Rich County	Utah	UT	\N	\N	\N
47039	47	11601	Decatur County	Tennessee	TN	\N	\N	\N
46091	46	4884	Marshall County	South Dakota	SD	\N	\N	\N
13251	13	14012	Screven County	Georgia	GA	\N	\N	\N
17047	17	6356	Edwards County	Illinois	IL	\N	\N	\N
45087	45	26991	Union County	South Carolina	SC	\N	\N	\N
29127	29	28423	Marion County	Missouri	MO	\N	\N	\N
54071	54	6932	Pendleton County	West Virginia	WV	\N	\N	\N
48285	48	20216	Lavaca County	Texas	TX	\N	\N	\N
47143	47	33443	Rhea County	Tennessee	TN	\N	\N	\N
30089	30	12157	Sanders County	Montana	MT	\N	\N	\N
40029	40	5587	Coal County	Oklahoma	OK	\N	\N	\N
19069	19	9971	Franklin County	Iowa	IA	\N	\N	\N
31005	31	466	Arthur County	Nebraska	NE	\N	\N	\N
48363	48	29320	Palo Pinto County	Texas	TX	\N	\N	\N
48061	48	424180	Cameron County	Texas	TX	\N	\N	\N
26119	26	9337	Montmorency County	Michigan	MI	\N	\N	\N
20195	20	2758	Trego County	Kansas	KS	\N	\N	\N
51678	51	7279	Lexington city	Virginia	VA	\N	\N	\N
18035	18	113454	Delaware County	Indiana	IN	\N	\N	\N
46097	46	2202	Miner County	South Dakota	SD	\N	\N	\N
42073	42	85083	Lawrence County	Pennsylvania	PA	\N	\N	\N
72141	72	\N	Utuado Municipio	Puerto Rico	PR	\N	\N	\N
51159	51	9071	Richmond County	Virginia	VA	\N	\N	\N
29211	29	6033	Sullivan County	Missouri	MO	\N	\N	\N
01133	01	23508	Winston County	Alabama	AL	\N	\N	\N
30041	30	16358	Hill County	Montana	MT	\N	\N	\N
31013	31	10696	Box Butte County	Nebraska	NE	\N	\N	\N
53003	53	22820	Asotin County	Washington	WA	\N	\N	\N
46025	46	3802	Clark County	South Dakota	SD	\N	\N	\N
47183	47	33334	Weakley County	Tennessee	TN	\N	\N	\N
12047	12	14521	Hamilton County	Florida	FL	\N	\N	\N
53013	53	4048	Columbia County	Washington	WA	\N	\N	\N
48329	48	177863	Midland County	Texas	TX	\N	\N	\N
13037	13	6231	Calhoun County	Georgia	GA	\N	\N	\N
39139	39	120891	Richland County	Ohio	OH	\N	\N	\N
02110	02	31849	Juneau City and Borough	Alaska	AK	\N	\N	\N
02180	02	9909	Nome Census Area	Alaska	AK	\N	\N	\N
72121	72	\N	Sabana Grande Municipio	Puerto Rico	PR	\N	\N	\N
29115	29	11830	Linn County	Missouri	MO	\N	\N	\N
48323	48	58378	Maverick County	Texas	TX	\N	\N	\N
49005	49	130004	Cache County	Utah	UT	\N	\N	\N
17075	17	26711	Iroquois County	Illinois	IL	\N	\N	\N
13207	13	28042	Monroe County	Georgia	GA	\N	\N	\N
55065	55	16646	Lafayette County	Wisconsin	WI	\N	\N	\N
18089	18	487536	Lake County	Indiana	IN	\N	\N	\N
48435	48	3738	Sutton County	Texas	TX	\N	\N	\N
37043	37	11505	Clay County	North Carolina	NC	\N	\N	\N
13243	13	6682	Randolph County	Georgia	GA	\N	\N	\N
28095	28	35123	Monroe County	Mississippi	MS	\N	\N	\N
46099	46	196659	Minnehaha County	South Dakota	SD	\N	\N	\N
48095	48	2827	Concho County	Texas	TX	\N	\N	\N
27071	27	12059	Koochiching County	Minnesota	MN	\N	\N	\N
51105	51	23238	Lee County	Virginia	VA	\N	\N	\N
13237	13	22520	Putnam County	Georgia	GA	\N	\N	\N
17005	17	16262	Bond County	Illinois	IL	\N	\N	\N
55135	55	50664	Waupaca County	Wisconsin	WI	\N	\N	\N
13175	13	47512	Laurens County	Georgia	GA	\N	\N	\N
36123	36	24780	Yates County	New York	NY	\N	\N	\N
40053	40	4372	Grant County	Oklahoma	OK	\N	\N	\N
47113	47	98360	Madison County	Tennessee	TN	\N	\N	\N
29087	29	4232	Holt County	Missouri	MO	\N	\N	\N
28063	28	6997	Jefferson County	Mississippi	MS	\N	\N	\N
46073	46	1985	Jerauld County	South Dakota	SD	\N	\N	\N
36105	36	75802	Sullivan County	New York	NY	\N	\N	\N
23025	23	50635	Somerset County	Maine	ME	\N	\N	\N
05129	05	7842	Searcy County	Arkansas	AR	\N	\N	\N
28101	28	20866	Newton County	Mississippi	MS	\N	\N	\N
28021	28	8911	Claiborne County	Mississippi	MS	\N	\N	\N
51067	51	56167	Franklin County	Virginia	VA	\N	\N	\N
04013	04	4579081	Maricopa County	Arizona	AZ	\N	\N	\N
30105	30	7359	Valley County	Montana	MT	\N	\N	\N
12049	12	26822	Hardee County	Florida	FL	\N	\N	\N
06097	06	489819	Sonoma County	California	CA	\N	\N	\N
53073	53	231016	Whatcom County	Washington	WA	\N	\N	\N
47111	47	24827	Macon County	Tennessee	TN	\N	\N	\N
38035	38	69481	Grand Forks County	North Dakota	ND	\N	\N	\N
08011	08	5356	Bent County	Colorado	CO	\N	\N	\N
20009	20	25658	Barton County	Kansas	KS	\N	\N	\N
01059	01	31507	Franklin County	Alabama	AL	\N	\N	\N
30077	30	6817	Powell County	Montana	MT	\N	\N	\N
05113	05	19707	Polk County	Arkansas	AR	\N	\N	\N
48489	48	21161	Willacy County	Texas	TX	\N	\N	\N
17137	17	33400	Morgan County	Illinois	IL	\N	\N	\N
04001	04	71875	Apache County	Arizona	AZ	\N	\N	\N
16033	16	852	Clark County	Idaho	ID	\N	\N	\N
31009	31	457	Blaine County	Nebraska	NE	\N	\N	\N
08019	08	9586	Clear Creek County	Colorado	CO	\N	\N	\N
39101	39	64820	Marion County	Ohio	OH	\N	\N	\N
72053	72	\N	Fajardo Municipio	Puerto Rico	PR	\N	\N	\N
38000	38	\N	North Dakota Unknown	North Dakota	ND	\N	\N	\N
51021	51	6239	Bland County	Virginia	VA	\N	\N	\N
08033	08	2096	Dolores County	Colorado	CO	\N	\N	\N
19197	19	12416	Wright County	Iowa	IA	\N	\N	\N
06035	06	30016	Lassen County	California	CA	\N	\N	\N
54095	54	8533	Tyler County	West Virginia	WV	\N	\N	\N
48119	48	5349	Delta County	Texas	TX	\N	\N	\N
48049	48	37633	Brown County	Texas	TX	\N	\N	\N
46065	46	17336	Hughes County	South Dakota	SD	\N	\N	\N
38017	38	183904	Cass County	North Dakota	ND	\N	\N	\N
27000	27	\N	Minnesota Unknown	Minnesota	MN	\N	\N	\N
21137	21	24466	Lincoln County	Kentucky	KY	\N	\N	\N
51163	51	22757	Rockbridge County	Virginia	VA	\N	\N	\N
38033	38	1737	Golden Valley County	North Dakota	ND	\N	\N	\N
26023	26	43424	Branch County	Michigan	MI	\N	\N	\N
13263	13	6143	Talbot County	Georgia	GA	\N	\N	\N
51069	51	91119	Frederick County	Virginia	VA	\N	\N	\N
18049	18	20018	Fulton County	Indiana	IN	\N	\N	\N
40089	40	32772	McCurtain County	Oklahoma	OK	\N	\N	\N
72087	72	\N	Loíza Municipio	Puerto Rico	PR	\N	\N	\N
12003	12	29566	Baker County	Florida	FL	\N	\N	\N
35011	35	1673	De Baca County	New Mexico	NM	\N	\N	\N
47129	47	21431	Morgan County	Tennessee	TN	\N	\N	\N
54003	54	122125	Berkeley County	West Virginia	WV	\N	\N	\N
05127	05	10164	Scott County	Arkansas	AR	\N	\N	\N
31037	31	10587	Colfax County	Nebraska	NE	\N	\N	\N
20199	20	1536	Wallace County	Kansas	KS	\N	\N	\N
28147	28	14294	Walthall County	Mississippi	MS	\N	\N	\N
06091	06	2920	Sierra County	California	CA	\N	\N	\N
13275	13	44372	Thomas County	Georgia	GA	\N	\N	\N
72105	72	\N	Naranjito Municipio	Puerto Rico	PR	\N	\N	\N
18173	18	63269	Warrick County	Indiana	IN	\N	\N	\N
18141	18	271484	St. Joseph County	Indiana	IN	\N	\N	\N
31033	31	9111	Cheyenne County	Nebraska	NE	\N	\N	\N
10005	10	241635	Sussex County	Delaware	DE	\N	\N	\N
20139	20	15770	Osage County	Kansas	KS	\N	\N	\N
27043	27	13601	Faribault County	Minnesota	MN	\N	\N	\N
48477	48	35771	Washington County	Texas	TX	\N	\N	\N
48081	48	3323	Coke County	Texas	TX	\N	\N	\N
27031	27	5417	Cook County	Minnesota	MN	\N	\N	\N
29069	29	28878	Dunklin County	Missouri	MO	\N	\N	\N
31107	31	8304	Knox County	Nebraska	NE	\N	\N	\N
23021	23	16996	Piscataquis County	Maine	ME	\N	\N	\N
25003	25	124571	Berkshire County	Massachusetts	MA	\N	\N	\N
12073	12	295460	Leon County	Florida	FL	\N	\N	\N
48155	48	1135	Foard County	Texas	TX	\N	\N	\N
31129	31	4134	Nuckolls County	Nebraska	NE	\N	\N	\N
38073	38	5173	Ransom County	North Dakota	ND	\N	\N	\N
46105	46	2832	Perkins County	South Dakota	SD	\N	\N	\N
18123	18	19154	Perry County	Indiana	IN	\N	\N	\N
41069	41	1387	Wheeler County	Oregon	OR	\N	\N	\N
30013	30	81346	Cascade County	Montana	MT	\N	\N	\N
13235	13	11191	Pulaski County	Georgia	GA	\N	\N	\N
40095	40	17114	Marshall County	Oklahoma	OK	\N	\N	\N
72043	72	\N	Coamo Municipio	Puerto Rico	PR	\N	\N	\N
48283	48	7500	La Salle County	Texas	TX	\N	\N	\N
53015	53	111371	Cowlitz County	Washington	WA	\N	\N	\N
48217	48	37006	Hill County	Texas	TX	\N	\N	\N
48425	48	9139	Somervell County	Texas	TX	\N	\N	\N
50023	50	58328	Washington County	Vermont	VT	\N	\N	\N
17067	17	17422	Hancock County	Illinois	IL	\N	\N	\N
47053	47	49159	Gibson County	Tennessee	TN	\N	\N	\N
48371	48	15718	Pecos County	Texas	TX	\N	\N	\N
55057	55	26908	Juneau County	Wisconsin	WI	\N	\N	\N
48249	48	40452	Jim Wells County	Texas	TX	\N	\N	\N
29093	29	10098	Iron County	Missouri	MO	\N	\N	\N
21129	21	7268	Lee County	Kentucky	KY	\N	\N	\N
12085	12	162088	Martin County	Florida	FL	\N	\N	\N
05019	05	22103	Clark County	Arkansas	AR	\N	\N	\N
28157	28	8351	Wilkinson County	Mississippi	MS	\N	\N	\N
37093	37	55830	Hoke County	North Carolina	NC	\N	\N	\N
05071	05	26513	Johnson County	Arkansas	AR	\N	\N	\N
36077	36	58701	Otsego County	New York	NY	\N	\N	\N
13313	13	103837	Whitfield County	Georgia	GA	\N	\N	\N
28061	28	16332	Jasper County	Mississippi	MS	\N	\N	\N
18101	18	10079	Martin County	Indiana	IN	\N	\N	\N
16043	16	13218	Fremont County	Idaho	ID	\N	\N	\N
30075	30	1681	Powder River County	Montana	MT	\N	\N	\N
46027	46	14246	Clay County	South Dakota	SD	\N	\N	\N
44000	44	\N	Rhode Island Unknown	Rhode Island	RI	\N	\N	\N
51181	51	6385	Surry County	Virginia	VA	\N	\N	\N
29159	29	42490	Pettis County	Missouri	MO	\N	\N	\N
15003	15	963826	Honolulu County	Hawaii	HI	\N	\N	\N
18007	18	8741	Benton County	Indiana	IN	\N	\N	\N
13269	13	8074	Taylor County	Georgia	GA	\N	\N	\N
08093	08	18955	Park County	Colorado	CO	\N	\N	\N
23009	23	55088	Hancock County	Maine	ME	\N	\N	\N
27049	27	46318	Goodhue County	Minnesota	MN	\N	\N	\N
08027	08	5183	Custer County	Colorado	CO	\N	\N	\N
53025	53	99377	Grant County	Washington	WA	\N	\N	\N
17041	17	19510	Douglas County	Illinois	IL	\N	\N	\N
31127	31	7044	Nemaha County	Nebraska	NE	\N	\N	\N
20023	20	2600	Cheyenne County	Kansas	KS	\N	\N	\N
19035	19	11190	Cherokee County	Iowa	IA	\N	\N	\N
20203	20	2074	Wichita County	Kansas	KS	\N	\N	\N
19045	19	46392	Clinton County	Iowa	IA	\N	\N	\N
20087	20	19032	Jefferson County	Kansas	KS	\N	\N	\N
13127	13	85568	Glynn County	Georgia	GA	\N	\N	\N
28055	28	1220	Issaquena County	Mississippi	MS	\N	\N	\N
20081	20	3923	Haskell County	Kansas	KS	\N	\N	\N
29029	29	46414	Camden County	Missouri	MO	\N	\N	\N
72117	72	\N	Rincón Municipio	Puerto Rico	PR	\N	\N	\N
36025	36	43938	Delaware County	New York	NY	\N	\N	\N
48207	48	5754	Haskell County	Texas	TX	\N	\N	\N
37185	37	19522	Warren County	North Carolina	NC	\N	\N	\N
18157	18	196115	Tippecanoe County	Indiana	IN	\N	\N	\N
20055	20	35917	Finney County	Kansas	KS	\N	\N	\N
31135	31	2867	Perkins County	Nebraska	NE	\N	\N	\N
16045	16	18703	Gem County	Idaho	ID	\N	\N	\N
42115	42	40006	Susquehanna County	Pennsylvania	PA	\N	\N	\N
20035	20	34628	Cowley County	Kansas	KS	\N	\N	\N
10000	10	\N	Delaware Unknown	Delaware	DE	\N	\N	\N
26103	26	65834	Marquette County	Michigan	MI	\N	\N	\N
51173	51	30090	Smyth County	Virginia	VA	\N	\N	\N
19189	19	10277	Winnebago County	Iowa	IA	\N	\N	\N
18009	18	11782	Blackford County	Indiana	IN	\N	\N	\N
32029	32	4207	Storey County	Nevada	NV	\N	\N	\N
48011	48	1869	Armstrong County	Texas	TX	\N	\N	\N
20115	20	11652	Marion County	Kansas	KS	\N	\N	\N
19017	19	25311	Bremer County	Iowa	IA	\N	\N	\N
18151	18	34831	Steuben County	Indiana	IN	\N	\N	\N
45051	45	365449	Horry County	South Carolina	SC	\N	\N	\N
12023	12	72654	Columbia County	Florida	FL	\N	\N	\N
32510	32	56034	Carson City	Nevada	NV	\N	\N	\N
47145	47	53841	Roane County	Tennessee	TN	\N	\N	\N
48123	48	20174	DeWitt County	Texas	TX	\N	\N	\N
39167	39	59652	Washington County	Ohio	OH	\N	\N	\N
29209	29	32465	Stone County	Missouri	MO	\N	\N	\N
25011	25	70267	Franklin County	Massachusetts	MA	\N	\N	\N
02230	02	1179	Skagway Municipality	Alaska	AK	\N	\N	\N
22077	22	21529	Pointe Coupee Parish	Louisiana	LA	\N	\N	\N
06115	06	80160	Yuba County	California	CA	\N	\N	\N
06059	06	3166857	Orange County	California	CA	\N	\N	\N
46047	46	6708	Fall River County	South Dakota	SD	\N	\N	\N
26011	26	14953	Arenac County	Michigan	MI	\N	\N	\N
29201	29	38288	Scott County	Missouri	MO	\N	\N	\N
49043	49	42499	Summit County	Utah	UT	\N	\N	\N
72007	72	\N	Aguas Buenas Municipio	Puerto Rico	PR	\N	\N	\N
53045	53	68224	Mason County	Washington	WA	\N	\N	\N
38097	38	7959	Traill County	North Dakota	ND	\N	\N	\N
54061	54	106819	Monongalia County	West Virginia	WV	\N	\N	\N
17191	17	16031	Wayne County	Illinois	IL	\N	\N	\N
72125	72	\N	San Germán Municipio	Puerto Rico	PR	\N	\N	\N
17161	17	140907	Rock Island County	Illinois	IL	\N	\N	\N
12061	12	162518	Indian River County	Florida	FL	\N	\N	\N
08077	08	155603	Mesa County	Colorado	CO	\N	\N	\N
31149	31	1377	Rock County	Nebraska	NE	\N	\N	\N
54089	54	12444	Summers County	West Virginia	WV	\N	\N	\N
54067	54	24340	Nicholas County	West Virginia	WV	\N	\N	\N
28159	28	17845	Winston County	Mississippi	MS	\N	\N	\N
21099	21	19013	Hart County	Kentucky	KY	\N	\N	\N
17065	17	8084	Hamilton County	Illinois	IL	\N	\N	\N
36035	36	52812	Fulton County	New York	NY	\N	\N	\N
54105	54	5705	Wirt County	West Virginia	WV	\N	\N	\N
26107	26	43907	Mecosta County	Michigan	MI	\N	\N	\N
27047	27	30364	Freeborn County	Minnesota	MN	\N	\N	\N
42061	42	44590	Huntingdon County	Pennsylvania	PA	\N	\N	\N
30033	30	1268	Garfield County	Montana	MT	\N	\N	\N
12099	12	1507600	Palm Beach County	Florida	FL	\N	\N	\N
46093	46	28588	Meade County	South Dakota	SD	\N	\N	\N
20071	20	1196	Greeley County	Kansas	KS	\N	\N	\N
27115	27	29359	Pine County	Minnesota	MN	\N	\N	\N
51157	51	7260	Rappahannock County	Virginia	VA	\N	\N	\N
21187	21	11017	Owen County	Kentucky	KY	\N	\N	\N
18047	18	22761	Franklin County	Indiana	IN	\N	\N	\N
47117	47	35016	Marshall County	Tennessee	TN	\N	\N	\N
51029	51	17168	Buckingham County	Virginia	VA	\N	\N	\N
72153	72	\N	Yauco Municipio	Puerto Rico	PR	\N	\N	\N
18163	18	182447	Vanderburgh County	Indiana	IN	\N	\N	\N
13187	13	34186	Lumpkin County	Georgia	GA	\N	\N	\N
38005	38	6762	Benson County	North Dakota	ND	\N	\N	\N
46043	46	2906	Douglas County	South Dakota	SD	\N	\N	\N
47101	47	12363	Lewis County	Tennessee	TN	\N	\N	\N
05107	05	17299	Phillips County	Arkansas	AR	\N	\N	\N
06039	06	157761	Madera County	California	CA	\N	\N	\N
26109	26	22608	Menominee County	Michigan	MI	\N	\N	\N
21027	21	20537	Breckinridge County	Kentucky	KY	\N	\N	\N
30019	30	1638	Daniels County	Montana	MT	\N	\N	\N
08123	08	333983	Weld County	Colorado	CO	\N	\N	\N
26061	26	35126	Houghton County	Michigan	MI	\N	\N	\N
28097	28	9661	Montgomery County	Mississippi	MS	\N	\N	\N
50005	50	29705	Caledonia County	Vermont	VT	\N	\N	\N
01063	01	7990	Greene County	Alabama	AL	\N	\N	\N
55071	55	78757	Manitowoc County	Wisconsin	WI	\N	\N	\N
45000	45	\N	South Carolina Unknown	South Carolina	SC	\N	\N	\N
33009	33	90691	Grafton County	New Hampshire	NH	\N	\N	\N
40139	40	19997	Texas County	Oklahoma	OK	\N	\N	\N
72133	72	\N	Santa Isabel Municipio	Puerto Rico	PR	\N	\N	\N
31057	31	1671	Dundy County	Nebraska	NE	\N	\N	\N
29109	29	38175	Lawrence County	Missouri	MO	\N	\N	\N
48235	48	1564	Irion County	Texas	TX	\N	\N	\N
39003	39	101980	Allen County	Ohio	OH	\N	\N	\N
02050	02	18437	Bethel Census Area	Alaska	AK	\N	\N	\N
20123	20	5879	Mitchell County	Kansas	KS	\N	\N	\N
31087	31	2773	Hitchcock County	Nebraska	NE	\N	\N	\N
27083	27	25271	Lyon County	Minnesota	MN	\N	\N	\N
42083	42	40333	McKean County	Pennsylvania	PA	\N	\N	\N
21065	21	14109	Estill County	Kentucky	KY	\N	\N	\N
26155	26	67738	Shiawassee County	Michigan	MI	\N	\N	\N
55101	55	195802	Racine County	Wisconsin	WI	\N	\N	\N
42033	42	78612	Clearfield County	Pennsylvania	PA	\N	\N	\N
18135	18	24191	Randolph County	Indiana	IN	\N	\N	\N
09011	09	264999	New London County	Connecticut	CT	\N	\N	\N
48133	48	18388	Eastland County	Texas	TX	\N	\N	\N
36021	36	59534	Columbia County	New York	NY	\N	\N	\N
19111	19	33480	Lee County	Iowa	IA	\N	\N	\N
26083	26	2119	Keweenaw County	Michigan	MI	\N	\N	\N
01083	01	102228	Limestone County	Alabama	AL	\N	\N	\N
31017	31	2981	Brown County	Nebraska	NE	\N	\N	\N
53041	53	82109	Lewis County	Washington	WA	\N	\N	\N
46067	46	7282	Hutchinson County	South Dakota	SD	\N	\N	\N
42031	42	38305	Clarion County	Pennsylvania	PA	\N	\N	\N
26015	26	62061	Barry County	Michigan	MI	\N	\N	\N
27095	27	26146	Mille Lacs County	Minnesota	MN	\N	\N	\N
19079	19	14716	Hamilton County	Iowa	IA	\N	\N	\N
29027	29	44887	Callaway County	Missouri	MO	\N	\N	\N
46083	46	63019	Lincoln County	South Dakota	SD	\N	\N	\N
08037	08	54929	Eagle County	Colorado	CO	\N	\N	\N
40065	40	24305	Jackson County	Oklahoma	OK	\N	\N	\N
28131	28	18360	Stone County	Mississippi	MS	\N	\N	\N
19157	19	18381	Poweshiek County	Iowa	IA	\N	\N	\N
45033	45	30367	Dillon County	South Carolina	SC	\N	\N	\N
29003	29	17586	Andrew County	Missouri	MO	\N	\N	\N
48161	48	19874	Freestone County	Texas	TX	\N	\N	\N
16051	16	30581	Jefferson County	Idaho	ID	\N	\N	\N
12065	12	14543	Jefferson County	Florida	FL	\N	\N	\N
12067	12	8482	Lafayette County	Florida	FL	\N	\N	\N
39121	39	14364	Noble County	Ohio	OH	\N	\N	\N
08121	08	4875	Washington County	Colorado	CO	\N	\N	\N
29125	29	8795	Maries County	Missouri	MO	\N	\N	\N
20107	20	9654	Linn County	Kansas	KS	\N	\N	\N
56005	56	46676	Campbell County	Wyoming	WY	\N	\N	\N
21199	21	65530	Pulaski County	Kentucky	KY	\N	\N	\N
18125	18	12378	Pike County	Indiana	IN	\N	\N	\N
19085	19	13928	Harrison County	Iowa	IA	\N	\N	\N
08021	08	8143	Conejos County	Colorado	CO	\N	\N	\N
20005	20	16015	Atchison County	Kansas	KS	\N	\N	\N
24037	24	114687	St. Mary's County	Maryland	MD	\N	\N	\N
17157	17	31351	Randolph County	Illinois	IL	\N	\N	\N
21133	21	21213	Letcher County	Kentucky	KY	\N	\N	\N
55077	55	15585	Marquette County	Wisconsin	WI	\N	\N	\N
40035	40	14194	Craig County	Oklahoma	OK	\N	\N	\N
27109	27	159298	Olmsted County	Minnesota	MN	\N	\N	\N
26075	26	156920	Jackson County	Michigan	MI	\N	\N	\N
06029	06	901362	Kern County	California	CA	\N	\N	\N
72115	72	\N	Quebradillas Municipio	Puerto Rico	PR	\N	\N	\N
56003	56	11575	Big Horn County	Wyoming	WY	\N	\N	\N
29121	29	15095	Macon County	Missouri	MO	\N	\N	\N
38021	38	4705	Dickey County	North Dakota	ND	\N	\N	\N
40101	40	67610	Muskogee County	Oklahoma	OK	\N	\N	\N
36003	36	45587	Allegany County	New York	NY	\N	\N	\N
01111	01	22920	Randolph County	Alabama	AL	\N	\N	\N
42093	42	18042	Montour County	Pennsylvania	PA	\N	\N	\N
19119	19	11756	Lyon County	Iowa	IA	\N	\N	\N
48449	48	32926	Titus County	Texas	TX	\N	\N	\N
54035	54	28453	Jackson County	West Virginia	WV	\N	\N	\N
48347	48	64753	Nacogdoches County	Texas	TX	\N	\N	\N
13299	13	35826	Ware County	Georgia	GA	\N	\N	\N
08087	08	28941	Morgan County	Colorado	CO	\N	\N	\N
54015	54	8341	Clay County	West Virginia	WV	\N	\N	\N
31171	31	739	Thomas County	Nebraska	NE	\N	\N	\N
39131	39	27695	Pike County	Ohio	OH	\N	\N	\N
21189	21	4331	Owsley County	Kentucky	KY	\N	\N	\N
06045	06	86061	Mendocino County	California	CA	\N	\N	\N
27121	27	11277	Pope County	Minnesota	MN	\N	\N	\N
13249	13	5196	Schley County	Georgia	GA	\N	\N	\N
06093	06	43245	Siskiyou County	California	CA	\N	\N	\N
38013	38	2118	Burke County	North Dakota	ND	\N	\N	\N
01095	01	96990	Marshall County	Alabama	AL	\N	\N	\N
39175	39	21711	Wyandot County	Ohio	OH	\N	\N	\N
02282	02	637	Yakutat City and Borough	Alaska	AK	\N	\N	\N
38065	38	1926	Oliver County	North Dakota	ND	\N	\N	\N
20117	20	9652	Marshall County	Kansas	KS	\N	\N	\N
31111	31	34347	Lincoln County	Nebraska	NE	\N	\N	\N
48073	48	52875	Cherokee County	Texas	TX	\N	\N	\N
31029	31	3840	Chase County	Nebraska	NE	\N	\N	\N
46007	46	3399	Bennett County	South Dakota	SD	\N	\N	\N
17033	17	18512	Crawford County	Illinois	IL	\N	\N	\N
39077	39	57979	Huron County	Ohio	OH	\N	\N	\N
37089	37	118445	Henderson County	North Carolina	NC	\N	\N	\N
32017	32	5159	Lincoln County	Nevada	NV	\N	\N	\N
53059	53	12107	Skamania County	Washington	WA	\N	\N	\N
51007	51	13014	Amelia County	Virginia	VA	\N	\N	\N
37149	37	21030	Polk County	North Carolina	NC	\N	\N	\N
06055	06	135965	Napa County	California	CA	\N	\N	\N
19031	19	18485	Cedar County	Iowa	IA	\N	\N	\N
49045	49	74512	Tooele County	Utah	UT	\N	\N	\N
55061	55	20386	Kewaunee County	Wisconsin	WI	\N	\N	\N
30047	30	30986	Lake County	Montana	MT	\N	\N	\N
17115	17	103015	Macon County	Illinois	IL	\N	\N	\N
29215	29	25112	Texas County	Missouri	MO	\N	\N	\N
46051	46	7000	Grant County	South Dakota	SD	\N	\N	\N
55025	55	552536	Dane County	Wisconsin	WI	\N	\N	\N
51111	51	12267	Lunenburg County	Virginia	VA	\N	\N	\N
08107	08	25560	Routt County	Colorado	CO	\N	\N	\N
40019	40	48353	Carter County	Oklahoma	OK	\N	\N	\N
01119	01	12225	Sumter County	Alabama	AL	\N	\N	\N
47023	47	17432	Chester County	Tennessee	TN	\N	\N	\N
13189	13	21162	McDuffie County	Georgia	GA	\N	\N	\N
28041	28	13477	Greene County	Mississippi	MS	\N	\N	\N
37181	37	44718	Vance County	North Carolina	NC	\N	\N	\N
20163	20	4827	Rooks County	Kansas	KS	\N	\N	\N
27035	27	65644	Crow Wing County	Minnesota	MN	\N	\N	\N
28153	28	20317	Wayne County	Mississippi	MS	\N	\N	\N
48097	48	41393	Cooke County	Texas	TX	\N	\N	\N
19061	19	97590	Dubuque County	Iowa	IA	\N	\N	\N
55005	55	45090	Barron County	Wisconsin	WI	\N	\N	\N
26127	26	26819	Oceana County	Michigan	MI	\N	\N	\N
01107	01	19793	Pickens County	Alabama	AL	\N	\N	\N
40067	40	5949	Jefferson County	Oklahoma	OK	\N	\N	\N
35031	35	70824	McKinley County	New Mexico	NM	\N	\N	\N
72059	72	\N	Guayanilla Municipio	Puerto Rico	PR	\N	\N	\N
46095	46	2089	Mellette County	South Dakota	SD	\N	\N	\N
54097	54	24230	Upshur County	West Virginia	WV	\N	\N	\N
48385	48	3411	Real County	Texas	TX	\N	\N	\N
02170	02	110213	Matanuska-Susitna Borough	Alaska	AK	\N	\N	\N
40127	40	10970	Pushmataha County	Oklahoma	OK	\N	\N	\N
31019	31	50114	Buffalo County	Nebraska	NE	\N	\N	\N
26117	26	63476	Montcalm County	Michigan	MI	\N	\N	\N
05063	05	37757	Independence County	Arkansas	AR	\N	\N	\N
12121	12	44851	Suwannee County	Florida	FL	\N	\N	\N
22059	22	15021	LaSalle Parish	Louisiana	LA	\N	\N	\N
55125	55	22356	Vilas County	Wisconsin	WI	\N	\N	\N
31155	31	21927	Saunders County	Nebraska	NE	\N	\N	\N
47161	47	13859	Stewart County	Tennessee	TN	\N	\N	\N
29129	29	3558	Mercer County	Missouri	MO	\N	\N	\N
13005	13	11036	Bacon County	Georgia	GA	\N	\N	\N
39151	39	369772	Stark County	Ohio	OH	\N	\N	\N
28079	28	22741	Leake County	Mississippi	MS	\N	\N	\N
28027	28	21564	Coahoma County	Mississippi	MS	\N	\N	\N
16000	16	\N	Idaho Unknown	Idaho	ID	\N	\N	\N
06095	06	446935	Solano County	California	CA	\N	\N	\N
13143	13	30383	Haralson County	Georgia	GA	\N	\N	\N
40055	40	5704	Greer County	Oklahoma	OK	\N	\N	\N
56029	56	29331	Park County	Wyoming	WY	\N	\N	\N
12033	12	322364	Escambia County	Florida	FL	\N	\N	\N
28081	28	85466	Lee County	Mississippi	MS	\N	\N	\N
25000	25	\N	Massachusetts Unknown	Massachusetts	MA	\N	\N	\N
26095	26	6126	Luce County	Michigan	MI	\N	\N	\N
27169	27	50485	Winona County	Minnesota	MN	\N	\N	\N
08017	08	1795	Cheyenne County	Colorado	CO	\N	\N	\N
30053	30	20343	Lincoln County	Montana	MT	\N	\N	\N
16069	16	40755	Nez Perce County	Idaho	ID	\N	\N	\N
17159	17	15507	Richland County	Illinois	IL	\N	\N	\N
37139	37	40372	Pasquotank County	North Carolina	NC	\N	\N	\N
20025	20	1963	Clark County	Kansas	KS	\N	\N	\N
49015	49	10147	Emery County	Utah	UT	\N	\N	\N
02016	02	5680	Aleutians West Census Area	Alaska	AK	\N	\N	\N
39067	39	15014	Harrison County	Ohio	OH	\N	\N	\N
33019	33	43267	Sullivan County	New Hampshire	NH	\N	\N	\N
48447	48	1487	Throckmorton County	Texas	TX	\N	\N	\N
17009	17	6546	Brown County	Illinois	IL	\N	\N	\N
47115	47	28924	Marion County	Tennessee	TN	\N	\N	\N
12107	12	74815	Putnam County	Florida	FL	\N	\N	\N
35033	35	4478	Mora County	New Mexico	NM	\N	\N	\N
05009	05	37625	Boone County	Arkansas	AR	\N	\N	\N
18000	18	\N	Indiana Unknown	Indiana	IN	\N	\N	\N
28125	28	4160	Sharkey County	Mississippi	MS	\N	\N	\N
40133	40	24248	Seminole County	Oklahoma	OK	\N	\N	\N
17069	17	3808	Hardin County	Illinois	IL	\N	\N	\N
08109	08	6938	Saguache County	Colorado	CO	\N	\N	\N
40121	40	43679	Pittsburg County	Oklahoma	OK	\N	\N	\N
34011	34	147008	Cumberland County	New Jersey	NJ	\N	\N	\N
46009	46	6848	Bon Homme County	South Dakota	SD	\N	\N	\N
20129	20	2538	Morton County	Kansas	KS	\N	\N	\N
29091	29	40262	Howell County	Missouri	MO	\N	\N	\N
48089	48	21610	Colorado County	Texas	TX	\N	\N	\N
51081	51	11280	Greensville County	Virginia	VA	\N	\N	\N
18169	18	30784	Wabash County	Indiana	IN	\N	\N	\N
56037	56	42673	Sweetwater County	Wyoming	WY	\N	\N	\N
27069	27	4214	Kittson County	Minnesota	MN	\N	\N	\N
26055	26	93592	Grand Traverse County	Michigan	MI	\N	\N	\N
28000	28	\N	Mississippi Unknown	Mississippi	MS	\N	\N	\N
24019	24	31853	Dorchester County	Maryland	MD	\N	\N	\N
28037	28	7657	Franklin County	Mississippi	MS	\N	\N	\N
37123	37	27238	Montgomery County	North Carolina	NC	\N	\N	\N
37105	37	62353	Lee County	North Carolina	NC	\N	\N	\N
01087	01	17895	Macon County	Alabama	AL	\N	\N	\N
21143	21	8133	Lyon County	Kentucky	KY	\N	\N	\N
20037	20	38730	Crawford County	Kansas	KS	\N	\N	\N
40033	40	5676	Cotton County	Oklahoma	OK	\N	\N	\N
13229	13	19522	Pierce County	Georgia	GA	\N	\N	\N
48443	48	702	Terrell County	Texas	TX	\N	\N	\N
22000	22	\N	Louisiana Unknown	Louisiana	LA	\N	\N	\N
39141	39	76420	Ross County	Ohio	OH	\N	\N	\N
46103	46	115926	Pennington County	South Dakota	SD	\N	\N	\N
42001	42	102742	Adams County	Pennsylvania	PA	\N	\N	\N
17173	17	21299	Shelby County	Illinois	IL	\N	\N	\N
42117	42	40381	Tioga County	Pennsylvania	PA	\N	\N	\N
41015	41	23305	Curry County	Oregon	OR	\N	\N	\N
08029	08	31067	Delta County	Colorado	CO	\N	\N	\N
28117	28	25013	Prentiss County	Mississippi	MS	\N	\N	\N
23003	23	66804	Aroostook County	Maine	ME	\N	\N	\N
72027	72	\N	Camuy Municipio	Puerto Rico	PR	\N	\N	\N
17109	17	29295	McDonough County	Illinois	IL	\N	\N	\N
55053	55	20630	Jackson County	Wisconsin	WI	\N	\N	\N
39075	39	44004	Holmes County	Ohio	OH	\N	\N	\N
05123	05	24682	St. Francis County	Arkansas	AR	\N	\N	\N
29301	29	\N	Missouri Unknown 3	Missouri	MO	\N	\N	\N
27131	27	67084	Rice County	Minnesota	MN	\N	\N	\N
05065	05	13613	Izard County	Arkansas	AR	\N	\N	\N
36019	36	79778	Clinton County	New York	NY	\N	\N	\N
17091	17	108594	Kankakee County	Illinois	IL	\N	\N	\N
45059	45	67883	Laurens County	South Carolina	SC	\N	\N	\N
51113	51	13312	Madison County	Virginia	VA	\N	\N	\N
31069	31	1847	Garden County	Nebraska	NE	\N	\N	\N
31077	31	2319	Greeley County	Nebraska	NE	\N	\N	\N
48191	48	2939	Hall County	Texas	TX	\N	\N	\N
28143	28	9392	Tunica County	Mississippi	MS	\N	\N	\N
17001	17	64783	Adams County	Illinois	IL	\N	\N	\N
12007	12	28593	Bradford County	Florida	FL	\N	\N	\N
47141	47	80929	Putnam County	Tennessee	TN	\N	\N	\N
49021	49	56814	Iron County	Utah	UT	\N	\N	\N
45029	45	37481	Colleton County	South Carolina	SC	\N	\N	\N
06107	06	468680	Tulare County	California	CA	\N	\N	\N
55095	55	43794	Polk County	Wisconsin	WI	\N	\N	\N
20001	20	12399	Allen County	Kansas	KS	\N	\N	\N
48043	48	9237	Brewster County	Texas	TX	\N	\N	\N
20097	20	2456	Kiowa County	Kansas	KS	\N	\N	\N
12093	12	42297	Okeechobee County	Florida	FL	\N	\N	\N
22039	22	33276	Evangeline Parish	Louisiana	LA	\N	\N	\N
48265	48	52869	Kerr County	Texas	TX	\N	\N	\N
48373	48	52995	Polk County	Texas	TX	\N	\N	\N
21055	21	8847	Crittenden County	Kentucky	KY	\N	\N	\N
55127	55	103953	Walworth County	Wisconsin	WI	\N	\N	\N
20017	20	2586	Chase County	Kansas	KS	\N	\N	\N
53053	53	913890	Pierce County	Washington	WA	\N	\N	\N
37091	37	23108	Hertford County	North Carolina	NC	\N	\N	\N
29137	29	8672	Monroe County	Missouri	MO	\N	\N	\N
28161	28	11982	Yalobusha County	Mississippi	MS	\N	\N	\N
29019	29	182991	Boone County	Missouri	MO	\N	\N	\N
01041	01	13681	Crenshaw County	Alabama	AL	\N	\N	\N
12009	12	608459	Brevard County	Florida	FL	\N	\N	\N
05015	05	28276	Carroll County	Arkansas	AR	\N	\N	\N
39149	39	48337	Shelby County	Ohio	OH	\N	\N	\N
24047	24	52403	Worcester County	Maryland	MD	\N	\N	\N
13199	13	21164	Meriwether County	Georgia	GA	\N	\N	\N
10003	10	561531	New Castle County	Delaware	DE	\N	\N	\N
19063	19	9095	Emmet County	Iowa	IA	\N	\N	\N
17021	17	32075	Christian County	Illinois	IL	\N	\N	\N
42087	42	46064	Mifflin County	Pennsylvania	PA	\N	\N	\N
18091	18	109663	LaPorte County	Indiana	IN	\N	\N	\N
12075	12	42214	Levy County	Florida	FL	\N	\N	\N
28163	28	26982	Yazoo County	Mississippi	MS	\N	\N	\N
46079	46	12488	Lake County	South Dakota	SD	\N	\N	\N
31047	31	23510	Dawson County	Nebraska	NE	\N	\N	\N
31083	31	3311	Harlan County	Nebraska	NE	\N	\N	\N
40015	40	28684	Caddo County	Oklahoma	OK	\N	\N	\N
24015	24	103419	Cecil County	Maryland	MD	\N	\N	\N
51197	51	28620	Wythe County	Virginia	VA	\N	\N	\N
05091	05	43177	Miller County	Arkansas	AR	\N	\N	\N
38031	38	3165	Foster County	North Dakota	ND	\N	\N	\N
38019	38	3713	Cavalier County	North Dakota	ND	\N	\N	\N
18093	18	45496	Lawrence County	Indiana	IN	\N	\N	\N
55121	55	29681	Trempealeau County	Wisconsin	WI	\N	\N	\N
40031	40	121099	Comanche County	Oklahoma	OK	\N	\N	\N
48023	48	3518	Baylor County	Texas	TX	\N	\N	\N
17139	17	14347	Moultrie County	Illinois	IL	\N	\N	\N
17195	17	54656	Whiteside County	Illinois	IL	\N	\N	\N
54075	54	8190	Pocahontas County	West Virginia	WV	\N	\N	\N
27107	27	6338	Norman County	Minnesota	MN	\N	\N	\N
19001	19	7059	Adair County	Iowa	IA	\N	\N	\N
27061	27	45268	Itasca County	Minnesota	MN	\N	\N	\N
42015	42	60221	Bradford County	Pennsylvania	PA	\N	\N	\N
72123	72	\N	Salinas Municipio	Puerto Rico	PR	\N	\N	\N
55029	55	27889	Door County	Wisconsin	WI	\N	\N	\N
72049	72	\N	Culebra Municipio	Puerto Rico	PR	\N	\N	\N
13031	13	80839	Bulloch County	Georgia	GA	\N	\N	\N
06037	06	9943046	Los Angeles County	California	CA	\N	\N	\N
31043	31	20070	Dakota County	Nebraska	NE	\N	\N	\N
37079	37	20928	Greene County	North Carolina	NC	\N	\N	\N
42039	42	83697	Crawford County	Pennsylvania	PA	\N	\N	\N
51660	51	53204	Harrisonburg city	Virginia	VA	\N	\N	\N
29033	29	8554	Carroll County	Missouri	MO	\N	\N	\N
29025	29	9051	Caldwell County	Missouri	MO	\N	\N	\N
22047	22	32070	Iberville Parish	Louisiana	LA	\N	\N	\N
08089	08	18201	Otero County	Colorado	CO	\N	\N	\N
21201	21	2136	Robertson County	Kentucky	KY	\N	\N	\N
26069	26	25140	Iosco County	Michigan	MI	\N	\N	\N
31067	31	21431	Gage County	Nebraska	NE	\N	\N	\N
29105	29	35895	Laclede County	Missouri	MO	\N	\N	\N
29021	29	86530	Buchanan County	Missouri	MO	\N	\N	\N
28065	28	10890	Jefferson Davis County	Mississippi	MS	\N	\N	\N
38027	38	2179	Eddy County	North Dakota	ND	\N	\N	\N
17187	17	16696	Warren County	Illinois	IL	\N	\N	\N
46049	46	2306	Faulk County	South Dakota	SD	\N	\N	\N
31121	31	7809	Merrick County	Nebraska	NE	\N	\N	\N
17127	17	13636	Massac County	Illinois	IL	\N	\N	\N
45013	45	195656	Beaufort County	South Carolina	SC	\N	\N	\N
45069	45	25581	Marlboro County	South Carolina	SC	\N	\N	\N
05011	05	10639	Bradley County	Arkansas	AR	\N	\N	\N
17073	17	48411	Henry County	Illinois	IL	\N	\N	\N
40107	40	11765	Okfuskee County	Oklahoma	OK	\N	\N	\N
48319	48	4344	Mason County	Texas	TX	\N	\N	\N
40001	40	21955	Adair County	Oklahoma	OK	\N	\N	\N
23001	23	108547	Androscoggin County	Maine	ME	\N	\N	\N
40059	40	3611	Harper County	Oklahoma	OK	\N	\N	\N
21223	21	8481	Trimble County	Kentucky	KY	\N	\N	\N
36087	36	326225	Rockland County	New York	NY	\N	\N	\N
29187	29	66485	St. Francois County	Missouri	MO	\N	\N	\N
20085	20	13171	Jackson County	Kansas	KS	\N	\N	\N
46127	46	16192	Union County	South Dakota	SD	\N	\N	\N
42085	42	108545	Mercer County	Pennsylvania	PA	\N	\N	\N
56009	56	13804	Converse County	Wyoming	WY	\N	\N	\N
55003	55	15415	Ashland County	Wisconsin	WI	\N	\N	\N
01067	01	17223	Henry County	Alabama	AL	\N	\N	\N
47051	47	42485	Franklin County	Tennessee	TN	\N	\N	\N
40005	40	13912	Atoka County	Oklahoma	OK	\N	\N	\N
45025	45	45606	Chesterfield County	South Carolina	SC	\N	\N	\N
12021	12	392973	Collier County	Florida	FL	\N	\N	\N
26143	26	23986	Roscommon County	Michigan	MI	\N	\N	\N
06007	06	212744	Butte County	California	CA	\N	\N	\N
42105	42	16453	Potter County	Pennsylvania	PA	\N	\N	\N
29009	29	35818	Barry County	Missouri	MO	\N	\N	\N
21217	21	25707	Taylor County	Kentucky	KY	\N	\N	\N
47005	47	16131	Benton County	Tennessee	TN	\N	\N	\N
29207	29	29001	Stoddard County	Missouri	MO	\N	\N	\N
28071	28	54408	Lafayette County	Mississippi	MS	\N	\N	\N
22003	22	25440	Allen Parish	Louisiana	LA	\N	\N	\N
17113	17	171256	McLean County	Illinois	IL	\N	\N	\N
27149	27	9765	Stevens County	Minnesota	MN	\N	\N	\N
18177	18	65778	Wayne County	Indiana	IN	\N	\N	\N
46087	46	5520	McCook County	South Dakota	SD	\N	\N	\N
19175	19	12157	Union County	Iowa	IA	\N	\N	\N
33001	33	61551	Belknap County	New Hampshire	NH	\N	\N	\N
34000	34	\N	New Jersey Unknown	New Jersey	NJ	\N	\N	\N
41027	41	23280	Hood River County	Oregon	OR	\N	\N	\N
28039	28	24425	George County	Mississippi	MS	\N	\N	\N
18071	18	44222	Jackson County	Indiana	IN	\N	\N	\N
21059	21	101978	Daviess County	Kentucky	KY	\N	\N	\N
54055	54	58258	Mercer County	West Virginia	WV	\N	\N	\N
31159	31	17186	Seward County	Nebraska	NE	\N	\N	\N
19055	19	16937	Delaware County	Iowa	IA	\N	\N	\N
40149	40	10830	Washita County	Oklahoma	OK	\N	\N	\N
28017	28	16951	Chickasaw County	Mississippi	MS	\N	\N	\N
04021	04	480828	Pinal County	Arizona	AZ	\N	\N	\N
27075	27	10639	Lake County	Minnesota	MN	\N	\N	\N
37039	37	29073	Cherokee County	North Carolina	NC	\N	\N	\N
19149	19	25219	Plymouth County	Iowa	IA	\N	\N	\N
49017	49	5050	Garfield County	Utah	UT	\N	\N	\N
46077	46	4987	Kingsbury County	South Dakota	SD	\N	\N	\N
22053	22	31208	Jefferson Davis Parish	Louisiana	LA	\N	\N	\N
38081	38	3913	Sargent County	North Dakota	ND	\N	\N	\N
20105	20	2986	Lincoln County	Kansas	KS	\N	\N	\N
41029	41	221844	Jackson County	Oregon	OR	\N	\N	\N
48451	48	120010	Tom Green County	Texas	TX	\N	\N	\N
21203	21	16750	Rockcastle County	Kentucky	KY	\N	\N	\N
08025	08	5696	Crowley County	Colorado	CO	\N	\N	\N
05095	05	6584	Monroe County	Arkansas	AR	\N	\N	\N
45011	45	20805	Barnwell County	South Carolina	SC	\N	\N	\N
19195	19	7359	Worth County	Iowa	IA	\N	\N	\N
47119	47	99590	Maury County	Tennessee	TN	\N	\N	\N
20159	20	9362	Rice County	Kansas	KS	\N	\N	\N
47153	47	15176	Sequatchie County	Tennessee	TN	\N	\N	\N
05027	05	23331	Columbia County	Arkansas	AR	\N	\N	\N
21179	21	46450	Nelson County	Kentucky	KY	\N	\N	\N
45053	45	31588	Jasper County	South Carolina	SC	\N	\N	\N
19147	19	8845	Palo Alto County	Iowa	IA	\N	\N	\N
38055	38	9416	McLean County	North Dakota	ND	\N	\N	\N
28013	28	14241	Calhoun County	Mississippi	MS	\N	\N	\N
19191	19	19862	Winneshiek County	Iowa	IA	\N	\N	\N
17125	17	13173	Mason County	Illinois	IL	\N	\N	\N
13183	13	20171	Long County	Georgia	GA	\N	\N	\N
49053	49	184913	Washington County	Utah	UT	\N	\N	\N
48421	48	3027	Sherman County	Texas	TX	\N	\N	\N
30007	30	6444	Broadwater County	Montana	MT	\N	\N	\N
27051	27	6026	Grant County	Minnesota	MN	\N	\N	\N
48301	48	181	Loving County	Texas	TX	\N	\N	\N
32015	32	5514	Lander County	Nevada	NV	\N	\N	\N
04023	04	46808	Santa Cruz County	Arizona	AZ	\N	\N	\N
55078	55	4546	Menominee County	Wisconsin	WI	\N	\N	\N
48461	48	3623	Upton County	Texas	TX	\N	\N	\N
13261	13	29282	Sumter County	Georgia	GA	\N	\N	\N
48197	48	4011	Hardeman County	Texas	TX	\N	\N	\N
49009	49	1026	Daggett County	Utah	UT	\N	\N	\N
22029	22	18914	Concordia Parish	Louisiana	LA	\N	\N	\N
19123	19	22370	Mahaska County	Iowa	IA	\N	\N	\N
19177	19	7069	Van Buren County	Iowa	IA	\N	\N	\N
01023	01	12418	Choctaw County	Alabama	AL	\N	\N	\N
17105	17	35414	Livingston County	Illinois	IL	\N	\N	\N
47007	47	15223	Bledsoe County	Tennessee	TN	\N	\N	\N
37199	37	18099	Yancey County	North Carolina	NC	\N	\N	\N
28001	28	30275	Adams County	Mississippi	MS	\N	\N	\N
02100	02	2614	Haines Borough	Alaska	AK	\N	\N	\N
09001	09	942426	Fairfield County	Connecticut	CT	\N	\N	\N
22123	22	10646	West Carroll Parish	Louisiana	LA	\N	\N	\N
19009	19	5481	Audubon County	Iowa	IA	\N	\N	\N
02185	02	9294	North Slope Borough	Alaska	AK	\N	\N	\N
48001	48	57805	Anderson County	Texas	TX	\N	\N	\N
72054	72	\N	Florida Municipio	Puerto Rico	PR	\N	\N	\N
01125	01	210758	Tuscaloosa County	Alabama	AL	\N	\N	\N
46102	46	14070	Oglala Lakota County	South Dakota	SD	\N	\N	\N
13209	13	9012	Montgomery County	Georgia	GA	\N	\N	\N
55103	55	17258	Richland County	Wisconsin	WI	\N	\N	\N
38007	38	890	Billings County	North Dakota	ND	\N	\N	\N
13213	13	40032	Murray County	Georgia	GA	\N	\N	\N
31179	31	9492	Wayne County	Nebraska	NE	\N	\N	\N
12111	12	337186	St. Lucie County	Florida	FL	\N	\N	\N
26003	26	9015	Alger County	Michigan	MI	\N	\N	\N
48331	48	24708	Milam County	Texas	TX	\N	\N	\N
54107	54	82938	Wood County	West Virginia	WV	\N	\N	\N
01027	01	13112	Clay County	Alabama	AL	\N	\N	\N
12063	12	46085	Jackson County	Florida	FL	\N	\N	\N
06043	06	17160	Mariposa County	California	CA	\N	\N	\N
40117	40	16381	Pawnee County	Oklahoma	OK	\N	\N	\N
38075	38	2283	Renville County	North Dakota	ND	\N	\N	\N
27133	27	9301	Rock County	Minnesota	MN	\N	\N	\N
28057	28	23261	Itawamba County	Mississippi	MS	\N	\N	\N
06109	06	54515	Tuolumne County	California	CA	\N	\N	\N
18067	18	82732	Howard County	Indiana	IN	\N	\N	\N
48431	48	1315	Sterling County	Texas	TX	\N	\N	\N
35053	35	16541	Socorro County	New Mexico	NM	\N	\N	\N
51193	51	18149	Westmoreland County	Virginia	VA	\N	\N	\N
05089	05	16790	Marion County	Arkansas	AR	\N	\N	\N
02060	02	788	Bristol Bay Borough	Alaska	AK	\N	\N	\N
30011	30	1235	Carter County	Montana	MT	\N	\N	\N
08063	08	7121	Kit Carson County	Colorado	CO	\N	\N	\N
05105	05	10327	Perry County	Arkansas	AR	\N	\N	\N
48033	48	706	Borden County	Texas	TX	\N	\N	\N
20061	20	32218	Geary County	Kansas	KS	\N	\N	\N
55039	55	102902	Fond du Lac County	Wisconsin	WI	\N	\N	\N
32019	32	58319	Lyon County	Nevada	NV	\N	\N	\N
29155	29	15600	Pemiscot County	Missouri	MO	\N	\N	\N
29185	29	9689	St. Clair County	Missouri	MO	\N	\N	\N
31105	31	3495	Kimball County	Nebraska	NE	\N	\N	\N
20167	20	6804	Russell County	Kansas	KS	\N	\N	\N
41013	41	25105	Crook County	Oregon	OR	\N	\N	\N
31145	31	10627	Red Willow County	Nebraska	NE	\N	\N	\N
78010	78	\N	 St. Croix Island	U.S. Virgin Islands	VI	\N	\N	\N
54073	54	7438	Pleasants County	West Virginia	WV	\N	\N	\N
47121	47	12532	Meigs County	Tennessee	TN	\N	\N	\N
\.


--
-- Data for Name: msa_meta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.msa_meta (msa_id, msa_name, msa_url_name, state_fips_code, state_name, state_postal_abbreviation, population) FROM stdin;
1280	Buffalo Area	BuffaloNiagara	36	New York	NY	1125637
9320	Youngstown/Warren	YoungstownWarren	39	Ohio	OH	523993
5720	Norfolk Area	NorfolkVA	51	Virginia	VA	1731907
4920	Memphis	Memphis	47	Tennessee	TN	1275446
1560	Chattanooga	Chattanooga	47	Tennessee	TN	525831
875	Bergen/Passaic	Bergen	34	New Jersey	NJ	1430776
840	Beaumont/Port Arthur Area	Beaumont	48	Texas	TX	391310
9000	Wheeling	Wheeling	39	Ohio	OH	137217
7920	Springfield, MO	Springfield_MO	29	Missouri	MO	425511
1040	Bay Area	BayArea	06	California	CA	6604007
4280	Lexington	Lexington	21	Kentucky	KY	614656
3760	Kansas City Area	KansasCity	29	Missouri	MO	2138265
6280	Pittsburgh	Pittsburgh	42	Pennsylvania	PA	2245084
5360	Nashville	Nashville	47	Tennessee	TN	1790228
240	Allentown Area	Allentown	42	Pennsylvania	PA	740775
3720	Kalamazoo/Battle Creek	Kalamazoo	26	Michigan	MI	475042
2120	Des Moines	DesMoines	19	Iowa	IA	643509
4400	Little Rock	Little Rock	05	Arkansas	AR	717788
380	Anchorage Area	Anchorage	02	Alaska	AK	287095
1010	Bismarck	Bismarck	38	North Dakota	ND	127715
4640	Lynchburg	Lynchburg	51	Virginia	VA	248343
1540	Charlottesville	Charlottesville	51	Virginia	VA	205155
8003	Springfield MA	Springfield_MA	25	Massachusetts	MA	625387
1520	Greater Charlotte Area	Charlotte	37	North Carolina	NC	2341251
600	Augusta/Aiken	AugustaAiken	13	Georgia	GA	562471
8320	Terre Haute	TerreHaute	18	Indiana	IN	148183
8840	Greater DC Area	DC	11	District of Columbia	DC	6250488
7600	Seattle Area	Seattle	53	Washington	WA	3190722
1050	New York City	NYC	36	New York	NY	8253213
40	Abilene Area	Abilene	48	Texas	TX	139200
8160	Syracuse	Syracuse	36	New York	NY	722067
3160	Greenville Area	Greenville	45	South Carolina	SC	1248343
1640	Cincinnati Area	Cincinnati	39	Ohio	OH	1809093
6160	Philadelphia	Philly	42	Pennsylvania	PA	5442956
4680	Macon	Macon	13	Georgia	GA	377687
3660	Johnson City/Kingsport/Bristol	JohnsonCity	47	Tennessee	TN	512723
1840	Columbus (OH)	Columbus_OH	39	Ohio	OH	1979204
7040	St. Louis	StLouis	17	Illinois	IL	2740028
1480	Charleston	Charleston	54	West Virginia	WV	232681
2080	Denver	Denver	08	Colorado	CO	2856906
5880	Oklahoma City	OklahomaCity	40	Oklahoma	OK	1407422
7560	Scranton	Scranton	42	Pennsylvania	PA	617370
4520	Louisville	Louisville	18	Indiana	IN	1179305
6640	Raleigh/Chapel Hill Area	RaleighChapelHill	37	North Carolina	NC	1972507
4040	Lansing Area	Lansing	26	Michigan	MI	480510
500	Athens Area	Athens	13	Georgia	GA	199376
3000	Grand Rapids Area	GrandRapids	26	Michigan	MI	1246153
3290	Hickory/Morganton/Lenoir	Hickory	37	North Carolina	NC	370266
120	Albany (GA) Area	AlbanyGA	13	Georgia	GA	116711
3480	Indianapolis Area	Indianapolis	18	Indiana	IN	2038438
8280	Tampa Area	Tampa	12	Florida	FL	3243963
9040	Wichita	Wichita	20	Kansas	KS	621190
1440	Greater Charleston Area	Charleston	45	South Carolina	SC	819705
3283	Greater Hartford Area	Hartford	09	Connecticut	CT	1201483
6840	Rochester	Rochester	36	New York	NY	1099700
460	Appleton	Appleton	55	Wisconsin	WI	410606
1080	Boise City	Boise	16	Idaho	ID	731452
560	Atlantic/Cape May	AtlanticMay	34	New Jersey	NJ	354491
1900	Cumberland	Cumberland	24	Maryland	MD	96779
5960	Orlando	Orlando	12	Florida	FL	2639374
4120	Las Vegas	Las Vegas	32	Nevada	NV	2581223
3600	Jacksonville	Jacksonville	12	Florida	FL	1558326
1680	Cleveland	Cleveland	39	Ohio	OH	2140320
1760	Columbia (SC)	Columbia	45	South Carolina	SC	722997
760	Baton Rouge	BatonRouge	22	Louisiana	LA	610258
6800	Roanoke	Roanoke	51	Virginia	VA	252540
5120	Minneapolis/St. Paul	MinneapolisStPaul	27	Minnesota	MN	3602590
440	Ann Arbor Area	AnnArbor	26	Michigan	MI	656616
640	Greater Austin	Austin	48	Texas	TX	2295303
220	Alexandria Area	Alexandria	22	Louisiana	LA	128567
720	Greater Baltimore	Baltimore	24	Maryland	MD	2800189
1600	Chicagoland Area	Chicago	17	Illinois	IL	8531104
320	Amarillo Area	Amarillo	48	Texas	TX	255903
2160	Detroit Area	Detroit	26	Michigan	MI	4262369
2000	Dayton Area	Dayton	39	Ohio	OH	942841
6760	Richmond/Petersburg	RichmondPetersburg	51	Virginia	VA	1254947
1000	Birmingham	Birmingham	01	Alabama	AL	1025388
5015	Middlesex Area	MiddlesexNJ	34	New Jersey	NJ	1276864
3360	Houston Area	Houston	48	Texas	TX	6398899
480	Asheville Area	Asheville	37	North Carolina	NC	285217
7160	Salt Lake City	SLT	49	Utah	UT	1787407
450	Anniston Area	Anniston	01	Alabama	AL	113469
5560	New Orleans	NewOrleans	22	Louisiana	LA	1272258
6960	Saginaw Area	Saginaw	26	Michigan	MI	375696
5240	Montgomery	Montgomery	01	Alabama	AL	362942
1660	Clarksville	Clarksville	47	Tennessee	TN	285729
80	Akron Area	Akron	39	Ohio	OH	701449
7680	Shreveport	Shreveport	22	Louisiana	LA	402697
7240	San Antonio	SanAntonio	48	Texas	TX	2414266
5080	Milwaukee Area	Milwaukee	55	Wisconsin	WI	1577676
4420	Longview/Marshall	Longview	48	Texas	TX	232781
6440	Portland	Portland	41	Oregon	OR	2498152
5640	Newark	Newark	34	New Jersey	NJ	2092608
1800	Columbus (GA)	Columbus_GA	13	Georgia	GA	301310
3880	Lafayette (LA)	Lafayette	22	Louisiana	LA	442830
1123	Greater Boston Area	Boston	25	Massachusetts	MA	6692923
200	Albuquerque Area	Albuquerque	35	New Mexico	NM	908144
8560	Tulsa	Tulsa	40	Oklahoma	OK	951796
7520	Savannah	Savannah	13	Georgia	GA	395983
160	Albany (NY) Area	AlbanyNY	36	New York	NY	927720
6120	Peoria/Pekin	PeoriaPekin	17	Illinois	IL	346520
820	Atlanta Area	Atlanta	13	Georgia	GA	5899202
1880	Corpus Christi	CorpusChristi	48	Texas	TX	430217
3840	Knoxville	Knoxville	47	Tennessee	TN	862259
1920	Greater Dallas	Dallas	48	Texas	TX	7770373
6880	Rockford	Rockford	17	Illinois	IL	384378
3240	Harrisburg Area	Harrisburg	42	Pennsylvania	PA	723606
960	Binghamton	Binghamton	36	New York	NY	237324
8080	Steubenville	Steubenville	54	West Virginia	WV	115184
3560	Jackson	Jackson	28	Mississippi	MS	490812
1303	Burlington	Burlington	50	Vermont	VT	221160
6483	Providence Area	ProvidenceRI	44	Rhode Island	RI	975289
920	Biloxi/Gulfport/Pascogoula	Biloxi	28	Mississippi	MS	400603
2760	Fort Wayne	FortWayne	18	Indiana	IN	560611
3400	Huntingon/Ashland	HuntingtonAshland	39	Ohio	OH	271115
3120	Greensboro Area	Greensboro	37	North Carolina	NC	1536155
5920	Omaha	Omaha	31	Nebraska	NE	903649
8400	Toledo	Toledo	39	Ohio	OH	601296
6920	Sacramento Area	Sacramento	06	California	CA	2155021
\.


--
-- Data for Name: state_meta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.state_meta (state_fips_code, state_abbr, state_name, population) FROM stdin;
01	AL	Alabama	4921532
02	AK	Alaska	731158
04	AZ	Arizona	7421401
05	AR	Arkansas	3030522
06	CA	California	39368078
08	CO	Colorado	5807719
09	CT	Connecticut	3557006
10	DE	Delaware	986809
11	DC	District of Columbia	712816
12	FL	Florida	21733312
13	GA	Georgia	10710017
15	HI	Hawaii	1407006
16	ID	Idaho	1826913
17	IL	Illinois	12587530
18	IN	Indiana	6754953
19	IA	Iowa	3163561
20	KS	Kansas	2913805
21	KY	Kentucky	4477251
22	LA	Louisiana	4645318
23	ME	Maine	1350141
24	MD	Maryland	6055802
25	MA	Massachusetts	6893574
26	MI	Michigan	9966555
27	MN	Minnesota	5657342
28	MS	Mississippi	2966786
29	MO	Missouri	6151548
30	MT	Montana	1080577
31	NE	Nebraska	1937552
32	NV	Nevada	3138259
33	NH	New Hampshire	1366275
34	NJ	New Jersey	8882371
35	NM	New Mexico	2106319
36	NY	New York	19336776
37	NC	North Carolina	10600823
38	ND	North Dakota	765309
39	OH	Ohio	11693217
40	OK	Oklahoma	3980783
41	OR	Oregon	4241507
42	PA	Pennsylvania	12783254
44	RI	Rhode Island	1057125
45	SC	South Carolina	5218040
46	SD	South Dakota	892717
47	TN	Tennessee	6886834
48	TX	Texas	29360759
49	UT	Utah	3249879
50	VT	Vermont	623347
51	VA	Virginia	8590563
53	WA	Washington	7693612
54	WV	West Virginia	1784787
55	WI	Wisconsin	5832655
56	WY	Wyoming	582328
68	ZZ	Unknown	\N
72	PR	Puerto Rico	\N
60	AS	American Samoa	\N
74	UM	U.S. Minor Outlying Islands	\N
69	MP	Northern Mariana Islands	\N
78	VI	U.S. Virgin Islands	\N
66	GU	Guam	\N
\.


--
-- PostgreSQL database dump complete
--

