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
    longitude double precision,
    latitude double precision,
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

COPY public.county_meta (county_fips_code, state_fips_code, longitude, latitude, population, county_name, state_name, state_abbr, msa_id, msa_name, msa_url_name) FROM stdin;
19155	19	-95.5449053	41.3401835	93328	Pottawattamie County	Iowa	IA	5920	Omaha	Omaha
19181	19	-93.5687512	41.3324459	52265	Warren County	Iowa	IA	2120	Des Moines	DesMoines
19049	19	-94.0407065	41.6853205	96963	Dallas County	Iowa	IA	2120	Des Moines	DesMoines
19153	19	-93.568971	41.6848158	494281	Polk County	Iowa	IA	2120	Des Moines	DesMoines
39013	39	-80.9677268	40.0176819	65932	Belmont County	Ohio	OH	9000	Wheeling	Wheeling
39129	39	-83.0528267	39.648947	58658	Pickaway County	Ohio	OH	1840	Columbus (OH)	Columbus_OH
39041	39	-83.0074622	40.2789411	213554	Delaware County	Ohio	OH	1840	Columbus (OH)	Columbus_OH
39089	39	-82.4834352	40.0915047	178100	Licking County	Ohio	OH	1840	Columbus (OH)	Columbus_OH
39049	39	-83.0090858	39.9698749	1324624	Franklin County	Ohio	OH	1840	Columbus (OH)	Columbus_OH
39097	39	-83.4008847	39.8966074	44559	Madison County	Ohio	OH	1840	Columbus (OH)	Columbus_OH
39045	39	-82.626685	39.747694	159709	Fairfield County	Ohio	OH	1840	Columbus (OH)	Columbus_OH
39087	39	-82.5171856	38.6038659	59091	Lawrence County	Ohio	OH	3400	Huntingon/Ashland	HuntingtonAshland
39153	39	-81.5349279	41.1218471	538866	Summit County	Ohio	OH	80	Akron Area	Akron
39133	39	-81.1969618	41.1689703	162583	Portage County	Ohio	OH	80	Akron Area	Akron
39061	39	-84.5441868	39.1969272	817985	Hamilton County	Ohio	OH	1640	Cincinnati Area	Cincinnati
39025	39	-84.1494847	39.0520537	207449	Clermont County	Ohio	OH	1640	Cincinnati Area	Cincinnati
39165	39	-84.1699063	39.4256516	238412	Warren County	Ohio	OH	1640	Cincinnati Area	Cincinnati
39015	39	-83.8667723	38.9313769	43414	Brown County	Ohio	OH	1640	Cincinnati Area	Cincinnati
39155	39	-80.7703998	41.3063744	196800	Trumbull County	Ohio	OH	9320	Youngstown/Warren	YoungstownWarren
39029	39	-80.778455	40.770073	101118	Columbiana County	Ohio	OH	9320	Youngstown/Warren	YoungstownWarren
39099	39	-80.7703956	41.0108798	226075	Mahoning County	Ohio	OH	9320	Youngstown/Warren	YoungstownWarren
39055	39	-81.1735054	41.4993217	93271	Geauga County	Ohio	OH	1680	Cleveland	Cleveland
39103	39	-81.8997641	41.1161743	180912	Medina County	Ohio	OH	1680	Cleveland	Cleveland
39007	39	-80.7455916	41.9066369	96513	Ashtabula County	Ohio	OH	1680	Cleveland	Cleveland
39085	39	-81.3926429	41.9241163	229569	Lake County	Ohio	OH	1680	Cleveland	Cleveland
39035	39	-81.7242168	41.7603919	1227883	Cuyahoga County	Ohio	OH	1680	Cleveland	Cleveland
39093	39	-82.179722	41.4388045	312172	Lorain County	Ohio	OH	1680	Cleveland	Cleveland
39081	39	-80.7635272	40.3993836	64939	Jefferson County	Ohio	OH	8080	Steubenville	Steubenville
39109	39	-84.2284135	40.0533257	107516	Miami County	Ohio	OH	2000	Dayton Area	Dayton
39023	39	-83.783676	39.9170315	133593	Clark County	Ohio	OH	2000	Dayton Area	Dayton
39113	39	-84.2905915	39.7537357	531610	Montgomery County	Ohio	OH	2000	Dayton Area	Dayton
39057	39	-83.8948943	39.6874785	170122	Greene County	Ohio	OH	2000	Dayton Area	Dayton
39095	39	-83.4689033	41.6823213	428294	Lucas County	Ohio	OH	8400	Toledo	Toledo
39051	39	-84.1242667	41.5972639	41889	Fulton County	Ohio	OH	8400	Toledo	Toledo
39173	39	-83.6226821	41.3601834	131113	Wood County	Ohio	OH	8400	Toledo	Toledo
49035	49	-111.9242397	40.6678828	1165517	Salt Lake County	Utah	UT	7160	Salt Lake City	SLT
49011	49	-112.2019434	41.0375594	359232	Davis County	Utah	UT	7160	Salt Lake City	SLT
49057	49	-111.876883	41.2703252	262658	Weber County	Utah	UT	7160	Salt Lake City	SLT
16001	16	-116.244376	43.4514767	494399	Ada County	Idaho	ID	1080	Boise City	Boise
16027	16	-116.709058	43.6257956	237053	Canyon County	Idaho	ID	1080	Boise City	Boise
48441	48	-99.8904299	32.2971255	139200	Taylor County	Texas	TX	40	Abilene Area	Abilene
48473	48	-95.9821493	30.0135901	57452	Waller County	Texas	TX	3360	Houston Area	Houston
48339	48	-95.50295	30.2988009	626351	Montgomery County	Texas	TX	3360	Houston Area	Houston
48291	48	-94.8440607	30.1585081	91547	Liberty County	Texas	TX	3360	Houston Area	Houston
48071	48	-94.6694454	29.6963741	45590	Chambers County	Texas	TX	3360	Houston Area	Houston
48157	48	-95.7710149	29.5266017	839706	Fort Bend County	Texas	TX	3360	Houston Area	Houston
48201	48	-95.3930371	29.857273	4738253	Harris County	Texas	TX	3360	Houston Area	Houston
48375	48	-101.893804	35.3986751	116004	Potter County	Texas	TX	320	Amarillo Area	Amarillo
48381	48	-101.8955472	34.962529	139899	Randall County	Texas	TX	320	Amarillo Area	Amarillo
48459	48	-94.9411837	32.7353495	42166	Upshur County	Texas	TX	4420	Longview/Marshall	Longview
48203	48	-94.3744344	32.5479914	66386	Harrison County	Texas	TX	4420	Longview/Marshall	Longview
48183	48	-94.8162759	32.4863971	124229	Gregg County	Texas	TX	4420	Longview/Marshall	Longview
48199	48	-94.3931782	30.3296483	58305	Hardin County	Texas	TX	840	Beaumont/Port Arthur Area	Beaumont
48245	48	-94.1493306	29.8539997	250127	Jefferson County	Texas	TX	840	Beaumont/Port Arthur Area	Beaumont
48361	48	-93.8940999	30.1223229	82878	Orange County	Texas	TX	840	Beaumont/Port Arthur Area	Beaumont
48091	48	-98.260544	29.8054913	164812	Comal County	Texas	TX	7240	San Antonio	SanAntonio
48029	48	-98.5201465	29.4486708	2026823	Bexar County	Texas	TX	7240	San Antonio	SanAntonio
48187	48	-97.946771	29.583532	170608	Guadalupe County	Texas	TX	7240	San Antonio	SanAntonio
48493	48	-98.0867336	29.173883	52023	Wilson County	Texas	TX	7240	San Antonio	SanAntonio
48409	48	-97.5171566	28.0117944	67069	San Patricio County	Texas	TX	1880	Corpus Christi	CorpusChristi
48355	48	-97.5162143	27.7400315	363148	Nueces County	Texas	TX	1880	Corpus Christi	CorpusChristi
48055	48	-97.628141	29.8323986	43979	Caldwell County	Texas	TX	640	Greater Austin	Austin
48491	48	-97.6050646	30.6490817	617855	Williamson County	Texas	TX	640	Greater Austin	Austin
48021	48	-97.3106392	30.1007718	91601	Bastrop County	Texas	TX	640	Greater Austin	Austin
48209	48	-98.0292673	30.0612247	241365	Hays County	Texas	TX	640	Greater Austin	Austin
48453	48	-97.6912697	30.2395128	1300503	Travis County	Texas	TX	640	Greater Austin	Austin
48257	48	-96.2883773	32.5989442	143198	Kaufman County	Texas	TX	1920	Greater Dallas	Dallas
48367	48	-97.8059049	32.7770964	148198	Parker County	Texas	TX	1920	Greater Dallas	Dallas
48221	48	-97.8316766	32.430149	63527	Hood County	Texas	TX	1920	Greater Dallas	Dallas
48251	48	-97.3649587	32.3798207	179575	Johnson County	Texas	TX	1920	Greater Dallas	Dallas
48231	48	-96.0842298	33.1233077	99807	Hunt County	Texas	TX	1920	Greater Dallas	Dallas
48121	48	-97.1211403	33.205132	919324	Denton County	Texas	TX	1920	Greater Dallas	Dallas
48113	48	-96.7784238	32.7669866	2635888	Dallas County	Texas	TX	1920	Greater Dallas	Dallas
48139	48	-96.7969403	32.3468783	191760	Ellis County	Texas	TX	1920	Greater Dallas	Dallas
48397	48	-96.4044017	32.8986766	109888	Rockwall County	Texas	TX	1920	Greater Dallas	Dallas
48439	48	-97.2912241	32.7721191	2123347	Tarrant County	Texas	TX	1920	Greater Dallas	Dallas
48213	48	-95.8534183	32.2116334	83792	Henderson County	Texas	TX	1920	Greater Dallas	Dallas
48085	48	-96.5794437	33.1945322	1072069	Collin County	Texas	TX	1920	Greater Dallas	Dallas
02020	02	-149.2843294	61.1742503	287095	Anchorage Municipality	Alaska	AK	380	Anchorage Area	Anchorage
20079	20	-97.4367065	38.0501436	34291	Harvey County	Kansas	KS	9040	Wichita	Wichita
20015	20	-96.8388402	37.7736487	66992	Butler County	Kansas	KS	9040	Wichita	Wichita
20173	20	-97.4610535	37.681045	519907	Sedgwick County	Kansas	KS	9040	Wichita	Wichita
20103	20	-95.038977	39.1895108	82246	Leavenworth County	Kansas	KS	3760	Kansas City Area	KansasCity
20091	20	-94.8223295	38.8839065	607220	Johnson County	Kansas	KS	3760	Kansas City Area	KansasCity
20121	20	-94.8329626	38.5667718	34334	Miami County	Kansas	KS	3760	Kansas City Area	KansasCity
20209	20	-94.7630866	39.1153842	165265	Wyandotte County	Kansas	KS	3760	Kansas City Area	KansasCity
32003	32	-115.013812	36.2142575	2315963	Clark County	Nevada	NV	4120	Las Vegas	Las Vegas
32023	32	-116.4590107	37.9658636	48054	Nye County	Nevada	NV	4120	Las Vegas	Las Vegas
41051	41	-122.4173625	45.5477107	815637	Multnomah County	Oregon	OR	6440	Portland	Portland
41067	41	-123.0976146	45.5535419	603514	Washington County	Oregon	OR	6440	Portland	Portland
41005	41	-122.1951274	45.1604934	421596	Clackamas County	Oregon	OR	6440	Portland	Portland
41009	41	-123.081079	45.941932	52876	Columbia County	Oregon	OR	6440	Portland	Portland
41071	41	-123.3163993	45.2478274	107664	Yamhill County	Oregon	OR	6440	Portland	Portland
01015	01	-85.8279089	33.7705162	113469	Calhoun County	Alabama	AL	450	Anniston Area	Anniston
01113	01	-85.1869798	32.2898113	58237	Russell County	Alabama	AL	1800	Columbus (GA)	Columbus_GA
01001	01	-86.6464395	32.5322367	56145	Autauga County	Alabama	AL	5240	Montgomery	Montgomery
01051	01	-86.1427347	32.597229	82158	Elmore County	Alabama	AL	5240	Montgomery	Montgomery
01101	01	-86.2044615	32.2028812	224639	Montgomery County	Alabama	AL	5240	Montgomery	Montgomery
01117	01	-86.6780894	33.2630428	221428	Shelby County	Alabama	AL	1000	Birmingham	Birmingham
01009	01	-86.56644	33.9773575	57879	Blount County	Alabama	AL	1000	Birmingham	Birmingham
01115	01	-86.3156631	33.7129627	90739	St. Clair County	Alabama	AL	1000	Birmingham	Birmingham
01073	01	-86.8965359	33.5534439	655342	Jefferson County	Alabama	AL	1000	Birmingham	Birmingham
04015	04	-113.7496891	35.717705	217206	Mohave County	Arizona	AZ	4120	Las Vegas	Las Vegas
12089	12	-81.7650867	30.6059629	91113	Nassau County	Florida	FL	3600	Jacksonville	Jacksonville
12031	12	-81.6481132	30.3352449	966728	Duval County	Florida	FL	3600	Jacksonville	Jacksonville
12109	12	-81.4000404	29.8904875	278715	St. Johns County	Florida	FL	3600	Jacksonville	Jacksonville
12019	12	-81.8650364	29.9865835	221770	Clay County	Florida	FL	3600	Jacksonville	Jacksonville
12095	12	-81.3232839	28.5143906	1404396	Orange County	Florida	FL	5960	Orlando	Orlando
12069	12	-81.7122822	28.7641128	375492	Lake County	Florida	FL	5960	Orlando	Orlando
12117	12	-81.1319894	28.6900918	474171	Seminole County	Florida	FL	5960	Orlando	Orlando
12097	12	-81.1393116	28.0590267	385315	Osceola County	Florida	FL	5960	Orlando	Orlando
12057	12	-82.3497186	27.9066072	1497957	Hillsborough County	Florida	FL	8280	Tampa Area	Tampa
12101	12	-82.4648324	28.3077107	570412	Pasco County	Florida	FL	8280	Tampa Area	Tampa
12053	12	-82.4662272	28.5730426	198792	Hernando County	Florida	FL	8280	Tampa Area	Tampa
12103	12	-82.7395188	27.9031078	976802	Pinellas County	Florida	FL	8280	Tampa Area	Tampa
13215	13	-84.874946	32.510197	196442	Muscogee County	Georgia	GA	1800	Columbus (GA)	Columbus_GA
13053	13	-84.7880206	32.3474454	10551	Chattahoochee County	Georgia	GA	1800	Columbus (GA)	Columbus_GA
13145	13	-84.912432	32.7315494	36080	Harris County	Georgia	GA	1800	Columbus (GA)	Columbus_GA
13295	13	-85.3054565	34.735802	70116	Walker County	Georgia	GA	1560	Chattanooga	Chattanooga
13047	13	-85.1393857	34.9002176	67996	Catoosa County	Georgia	GA	1560	Chattanooga	Chattanooga
13083	13	-85.5062006	34.8524237	16057	Dade County	Georgia	GA	1560	Chattanooga	Chattanooga
13013	13	-83.7123025	33.9920094	85588	Barrow County	Georgia	GA	820	Atlanta Area	Atlanta
13015	13	-84.8381879	34.2409175	109426	Bartow County	Georgia	GA	820	Atlanta Area	Atlanta
13063	13	-84.3555727	33.5426863	292646	Clayton County	Georgia	GA	820	Atlanta Area	Atlanta
13097	13	-84.7673139	33.7012421	147988	Douglas County	Georgia	GA	820	Atlanta Area	Atlanta
13089	13	-84.2263432	33.7706611	762009	DeKalb County	Georgia	GA	820	Atlanta Area	Atlanta
13151	13	-84.1540207	33.4529466	239139	Henry County	Georgia	GA	820	Atlanta Area	Atlanta
13067	13	-84.5741123	33.9399298	762944	Cobb County	Georgia	GA	820	Atlanta Area	Atlanta
13077	13	-84.7621381	33.3528965	150849	Coweta County	Georgia	GA	820	Atlanta Area	Atlanta
13247	13	-84.0263696	33.6520811	90939	Rockdale County	Georgia	GA	820	Atlanta Area	Atlanta
13255	13	-84.2849046	33.2623481	67414	Spalding County	Georgia	GA	820	Atlanta Area	Atlanta
13113	13	-84.4939407	33.4127172	115821	Fayette County	Georgia	GA	820	Atlanta Area	Atlanta
13121	13	-84.4681816	33.7900338	1077402	Fulton County	Georgia	GA	820	Atlanta Area	Atlanta
13057	13	-84.4750574	34.2443166	265274	Cherokee County	Georgia	GA	820	Atlanta Area	Atlanta
13117	13	-84.1274075	34.225143	250847	Forsyth County	Georgia	GA	820	Atlanta Area	Atlanta
13135	13	-84.023087	33.9591457	942627	Gwinnett County	Georgia	GA	820	Atlanta Area	Atlanta
13227	13	-84.4903508	34.4567464	33127	Pickens County	Georgia	GA	820	Atlanta Area	Atlanta
13045	13	-85.0805272	33.5822366	121633	Carroll County	Georgia	GA	820	Atlanta Area	Atlanta
13223	13	-84.8671693	33.9210299	173359	Paulding County	Georgia	GA	820	Atlanta Area	Atlanta
13217	13	-83.8551837	33.5440407	113295	Newton County	Georgia	GA	820	Atlanta Area	Atlanta
13297	13	-83.731829	33.7838866	96875	Walton County	Georgia	GA	820	Atlanta Area	Atlanta
13153	13	-83.6625217	32.4582875	160110	Houston County	Georgia	GA	4680	Macon	Macon
13021	13	-83.6941941	32.8088446	152737	Bibb County	Georgia	GA	4680	Macon	Macon
13289	13	-83.4258792	32.6658469	8103	Twiggs County	Georgia	GA	4680	Macon	Macon
13225	13	-83.8319779	32.5713241	27950	Peach County	Georgia	GA	4680	Macon	Macon
13169	13	-83.5621958	33.0216636	28787	Jones County	Georgia	GA	4680	Macon	Macon
13073	13	-82.2522957	33.5476313	160377	Columbia County	Georgia	GA	600	Augusta/Aiken	AugustaAiken
13245	13	-82.0749982	33.3614863	202079	Richmond County	Georgia	GA	600	Augusta/Aiken	AugustaAiken
13103	13	-81.343372	32.3616802	65765	Effingham County	Georgia	GA	7520	Savannah	Savannah
13029	13	-81.4385431	32.0179692	40755	Bryan County	Georgia	GA	7520	Savannah	Savannah
13051	13	-81.085184	31.9804037	289463	Chatham County	Georgia	GA	7520	Savannah	Savannah
13177	13	-84.1466814	31.8184185	30234	Lee County	Georgia	GA	120	Albany (GA) Area	AlbanyGA
13095	13	-84.20904	31.5325876	86477	Dougherty County	Georgia	GA	120	Albany (GA) Area	AlbanyGA
13195	13	-83.2037373	34.1285257	30457	Madison County	Georgia	GA	500	Athens Area	Athens
13059	13	-83.3671522	33.9521852	127795	Clarke County	Georgia	GA	500	Athens Area	Athens
13219	13	-83.4377284	33.8341247	41124	Oconee County	Georgia	GA	500	Athens Area	Athens
18115	18	-84.9642994	38.940527	5892	Ohio County	Indiana	IN	1640	Cincinnati Area	Cincinnati
18029	18	-84.9734976	39.14832	49824	Dearborn County	Indiana	IN	1640	Cincinnati Area	Cincinnati
18165	18	-87.4620713	39.8540452	15329	Vermillion County	Indiana	IN	8320	Terre Haute	TerreHaute
18167	18	-87.3903754	39.4291426	106608	Vigo County	Indiana	IN	8320	Terre Haute	TerreHaute
18021	18	-87.1158582	39.3939279	26246	Clay County	Indiana	IN	8320	Terre Haute	TerreHaute
18059	18	-85.7731503	39.8225286	79553	Hancock County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18011	18	-86.4690137	40.0508916	69347	Boone County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18057	18	-86.0217126	40.053507	344238	Hamilton County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18095	18	-85.7224543	40.166203	129681	Madison County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18063	18	-86.5099075	39.7689632	173251	Hendricks County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18097	18	-86.1357939	39.7829759	966183	Marion County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18109	18	-86.4474573	39.4826458	70707	Morgan County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18145	18	-85.7921742	39.5241345	44871	Shelby County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18081	18	-86.0942641	39.496092	160607	Johnson County	Indiana	IN	3480	Indianapolis Area	Indianapolis
18019	18	-85.7111221	38.4762174	119266	Clark County	Indiana	IN	4520	Louisville	Louisville
18043	18	-85.9118469	38.3180811	78936	Floyd County	Indiana	IN	4520	Louisville	Louisville
18061	18	-86.1037661	38.1864535	40682	Harrison County	Indiana	IN	4520	Louisville	Louisville
18143	18	-85.7518981	38.6794309	23788	Scott County	Indiana	IN	4520	Louisville	Louisville
18003	18	-85.0717907	41.0919086	382187	Allen County	Indiana	IN	2760	Fort Wayne	FortWayne
18183	18	-85.5018918	41.1364261	34378	Whitley County	Indiana	IN	2760	Fort Wayne	FortWayne
18179	18	-85.2129742	40.7352727	28142	Wells County	Indiana	IN	2760	Fort Wayne	FortWayne
18069	18	-85.4785975	40.8263938	36395	Huntington County	Indiana	IN	2760	Fort Wayne	FortWayne
18001	18	-84.9361303	40.7457327	35839	Adams County	Indiana	IN	2760	Fort Wayne	FortWayne
18033	18	-85.0001854	41.4011894	43670	DeKalb County	Indiana	IN	2760	Fort Wayne	FortWayne
50013	50	-73.300759	44.8017867	7169	Grand Isle County	Vermont	VT	1303	Burlington	Burlington
50011	50	-72.9094023	44.8589643	49685	Franklin County	Vermont	VT	1303	Burlington	Burlington
50007	50	-73.0694099	44.4633289	164306	Chittenden County	Vermont	VT	1303	Burlington	Burlington
05085	05	-91.894132	34.7551137	73921	Lonoke County	Arkansas	AR	4400	Little Rock	Little Rock
05045	05	-92.3369277	35.1465478	126919	Faulkner County	Arkansas	AR	4400	Little Rock	Little Rock
05119	05	-92.312996	34.7703106	392980	Pulaski County	Arkansas	AR	4400	Little Rock	Little Rock
05125	05	-92.674463	34.6485246	123968	Saline County	Arkansas	AR	4400	Little Rock	Little Rock
05035	05	-90.3153317	35.2118788	47616	Crittenden County	Arkansas	AR	4920	Memphis	Memphis
08059	08	-105.245462	39.5795106	583283	Jefferson County	Colorado	CO	2080	Denver	Denver
08005	08	-104.3317065	39.6445537	657452	Arapahoe County	Colorado	CO	2080	Denver	Denver
08001	08	-104.3318718	39.8743252	519883	Adams County	Colorado	CO	2080	Denver	Denver
08031	08	-104.8811054	39.7618502	735538	Denver County	Colorado	CO	2080	Denver	Denver
08035	08	-104.9259871	39.325414	360750	Douglas County	Colorado	CO	2080	Denver	Denver
17043	17	-88.0860389	41.8520577	917481	DuPage County	Illinois	IL	1600	Chicagoland Area	Chicago
17037	17	-88.768991	41.8946125	104491	DeKalb County	Illinois	IL	1600	Chicagoland Area	Chicago
17111	17	-88.452245	42.3242982	305888	McHenry County	Illinois	IL	1600	Chicagoland Area	Chicago
17031	17	-87.6454546	41.8942937	5108284	Cook County	Illinois	IL	1600	Chicagoland Area	Chicago
17097	17	-87.435976	42.326441	693593	Lake County	Illinois	IL	1600	Chicagoland Area	Chicago
17089	17	-88.4280395	41.9395938	531010	Kane County	Illinois	IL	1600	Chicagoland Area	Chicago
17063	17	-88.4010545	41.2924096	50993	Grundy County	Illinois	IL	1600	Chicagoland Area	Chicago
17197	17	-87.9784564	41.4484742	688726	Will County	Illinois	IL	1600	Chicagoland Area	Chicago
17093	17	-88.4306257	41.5881403	130638	Kendall County	Illinois	IL	1600	Chicagoland Area	Chicago
17119	17	-89.9002267	38.8271195	262635	Madison County	Illinois	IL	7040	St. Louis	StLouis
17083	17	-90.361385	39.0801945	21616	Jersey County	Illinois	IL	7040	St. Louis	StLouis
17027	17	-89.4262278	38.6062953	37398	Clinton County	Illinois	IL	7040	St. Louis	StLouis
17133	17	-90.1790777	38.2779831	34739	Monroe County	Illinois	IL	7040	St. Louis	StLouis
17163	17	-89.9285459	38.4701976	258046	St. Clair County	Illinois	IL	7040	St. Louis	StLouis
17201	17	-89.1612053	42.3373957	281295	Winnebago County	Illinois	IL	6880	Rockford	Rockford
17007	17	-88.8242951	42.3189831	52777	Boone County	Illinois	IL	6880	Rockford	Rockford
17141	17	-89.3201764	42.041884	50306	Ogle County	Illinois	IL	6880	Rockford	Rockford
17203	17	-89.2105871	40.789787	38091	Woodford County	Illinois	IL	6120	Peoria/Pekin	PeoriaPekin
17143	17	-89.7669933	40.7859722	177652	Peoria County	Illinois	IL	6120	Peoria/Pekin	PeoriaPekin
17179	17	-89.5162598	40.5080743	130777	Tazewell County	Illinois	IL	6120	Peoria/Pekin	PeoriaPekin
21089	21	-82.9338199	38.5635616	34865	Greenup County	Kentucky	KY	3400	Huntingon/Ashland	HuntingtonAshland
21019	21	-82.6814063	38.3600037	46516	Boyd County	Kentucky	KY	3400	Huntingon/Ashland	HuntingtonAshland
21015	21	-84.7363707	38.9589002	135396	Boone County	Kentucky	KY	1640	Cincinnati Area	Cincinnati
21191	21	-84.3519435	38.6962842	14586	Pendleton County	Kentucky	KY	1640	Cincinnati Area	Cincinnati
21077	21	-84.8621525	38.7601027	8779	Gallatin County	Kentucky	KY	1640	Cincinnati Area	Cincinnati
21037	21	-84.3795832	38.9469811	94020	Campbell County	Kentucky	KY	1640	Cincinnati Area	Cincinnati
21081	21	-84.6259245	38.649167	25387	Grant County	Kentucky	KY	1640	Cincinnati Area	Cincinnati
21117	21	-84.5334381	38.9305031	167949	Kenton County	Kentucky	KY	1640	Cincinnati Area	Cincinnati
21047	21	-87.4929864	36.8920592	71478	Christian County	Kentucky	KY	1660	Clarksville	Clarksville
21111	21	-85.6576243	38.1895321	767452	Jefferson County	Kentucky	KY	4520	Louisville	Louisville
21029	21	-85.7026357	37.9699446	82182	Bullitt County	Kentucky	KY	4520	Louisville	Louisville
21185	21	-85.4561516	38.4001274	66999	Oldham County	Kentucky	KY	4520	Louisville	Louisville
21239	21	-84.7488546	38.0431027	26765	Woodford County	Kentucky	KY	4280	Lexington	Lexington
21113	21	-84.5839603	37.8732908	54057	Jessamine County	Kentucky	KY	4280	Lexington	Lexington
21067	21	-84.4582743	38.0406751	324735	Fayette County	Kentucky	KY	4280	Lexington	Lexington
21017	21	-84.2098602	38.2025623	19901	Bourbon County	Kentucky	KY	4280	Lexington	Lexington
21209	21	-84.5783405	38.2857099	58470	Scott County	Kentucky	KY	4280	Lexington	Lexington
21151	21	-84.2783618	37.7255107	94265	Madison County	Kentucky	KY	4280	Lexington	Lexington
21049	21	-84.1451152	37.9703141	36463	Clark County	Kentucky	KY	4280	Lexington	Lexington
24001	24	-78.7031037	39.6123134	70057	Allegany County	Maryland	MD	1900	Cumberland	Cumberland
24021	24	-77.3976277	39.4702139	265161	Frederick County	Maryland	MD	8840	Greater DC Area	DC
24033	24	-76.84818	38.8292875	909612	Prince George's County	Maryland	MD	8840	Greater DC Area	DC
24017	24	-77.0154272	38.4728532	164436	Charles County	Maryland	MD	8840	Greater DC Area	DC
24031	24	-77.2030633	39.1373815	1051816	Montgomery County	Maryland	MD	8840	Greater DC Area	DC
24009	24	-76.5297621	38.5227191	93072	Calvert County	Maryland	MD	8840	Greater DC Area	DC
24510	24	-76.6104761	39.3000324	586131	Baltimore city	Maryland	MD	720	Greater Baltimore	Baltimore
24005	24	-76.6165693	39.4431666	826017	Baltimore County	Maryland	MD	720	Greater Baltimore	Baltimore
24027	24	-76.9244057	39.2522639	328200	Howard County	Maryland	MD	720	Greater Baltimore	Baltimore
24025	24	-76.2997894	39.5374292	256805	Harford County	Maryland	MD	720	Greater Baltimore	Baltimore
24013	24	-77.0153276	39.5633308	169092	Carroll County	Maryland	MD	720	Greater Baltimore	Baltimore
24035	24	-76.0824053	39.0406929	51167	Queen Anne's County	Maryland	MD	720	Greater Baltimore	Baltimore
24003	24	-76.5608941	38.9916174	582777	Anne Arundel County	Maryland	MD	720	Greater Baltimore	Baltimore
26017	26	-83.9787007	43.6997112	102387	Bay County	Michigan	MI	6960	Saginaw Area	Saginaw
26111	26	-84.3794144	43.6482031	83441	Midland County	Michigan	MI	6960	Saginaw Area	Saginaw
26145	26	-84.05541	43.3282667	189868	Saginaw County	Michigan	MI	6960	Saginaw Area	Saginaw
26147	26	-82.6689135	42.9288035	159293	St. Clair County	Michigan	MI	2160	Detroit Area	Detroit
26099	26	-82.9114562	42.6715526	870791	Macomb County	Michigan	MI	2160	Detroit Area	Detroit
26087	26	-83.2243247	43.0886327	87635	Lapeer County	Michigan	MI	2160	Detroit Area	Detroit
26163	26	-83.2619533	42.2846636	1740623	Wayne County	Michigan	MI	2160	Detroit Area	Detroit
26125	26	-83.3842103	42.6604518	1253459	Oakland County	Michigan	MI	2160	Detroit Area	Detroit
26115	26	-83.4871059	41.916097	150568	Monroe County	Michigan	MI	2160	Detroit Area	Detroit
26077	26	-85.5328544	42.2462657	265988	Kalamazoo County	Michigan	MI	3720	Kalamazoo/Battle Creek	Kalamazoo
26159	26	-86.3060762	42.2821497	75474	Van Buren County	Michigan	MI	3720	Kalamazoo/Battle Creek	Kalamazoo
26025	26	-85.0123853	42.2429896	133580	Calhoun County	Michigan	MI	3720	Kalamazoo/Battle Creek	Kalamazoo
26161	26	-83.8434233	42.2522168	366473	Washtenaw County	Michigan	MI	440	Ann Arbor Area	AnnArbor
26091	26	-84.0743563	41.8960225	97808	Lenawee County	Michigan	MI	440	Ann Arbor Area	AnnArbor
26093	26	-83.9117183	42.6025316	192335	Livingston County	Michigan	MI	440	Ann Arbor Area	AnnArbor
26139	26	-86.6549462	42.9424607	294635	Ottawa County	Michigan	MI	3000	Grand Rapids Area	GrandRapids
26005	26	-86.6347446	42.5957875	118927	Allegan County	Michigan	MI	3000	Grand Rapids Area	GrandRapids
26121	26	-86.751892	43.2892579	173883	Muskegon County	Michigan	MI	3000	Grand Rapids Area	GrandRapids
26081	26	-85.547446	43.0324971	658708	Kent County	Michigan	MI	3000	Grand Rapids Area	GrandRapids
26037	26	-84.5916949	42.950455	79753	Clinton County	Michigan	MI	4040	Lansing Area	Lansing
26065	26	-84.3738107	42.6035338	290609	Ingham County	Michigan	MI	4040	Lansing Area	Lansing
26045	26	-84.8464499	42.5895301	110148	Eaton County	Michigan	MI	4040	Lansing Area	Lansing
29219	29	-91.1593065	38.761902	36594	Warren County	Missouri	MO	7040	St. Louis	StLouis
29183	29	-90.6749153	38.7811023	406204	St. Charles County	Missouri	MO	7040	St. Louis	StLouis
29510	29	-90.2445816	38.6356988	297645	St. Louis city	Missouri	MO	7040	St. Louis	StLouis
29113	29	-90.9629165	39.0622547	60119	Lincoln County	Missouri	MO	7040	St. Louis	StLouis
29099	29	-90.5436807	38.2576296	226543	Jefferson County	Missouri	MO	7040	St. Louis	StLouis
29189	29	-90.4460731	38.6406881	994020	St. Louis County	Missouri	MO	7040	St. Louis	StLouis
29071	29	-91.072832	38.4130031	104469	Franklin County	Missouri	MO	7040	St. Louis	StLouis
29049	29	-94.3958028	39.6087233	20553	Clinton County	Missouri	MO	3760	Kansas City Area	KansasCity
29177	29	-93.9957462	39.3084005	22915	Ray County	Missouri	MO	3760	Kansas City Area	KansasCity
29165	29	-94.7614717	39.3786957	106532	Platte County	Missouri	MO	3760	Kansas City Area	KansasCity
29095	29	-94.3431655	39.0053359	705925	Jackson County	Missouri	MO	3760	Kansas City Area	KansasCity
29107	29	-93.8026388	39.0687048	33006	Lafayette County	Missouri	MO	3760	Kansas City Area	KansasCity
29047	29	-94.4215024	39.3155512	253463	Clay County	Missouri	MO	3760	Kansas City Area	KansasCity
29037	29	-94.3545467	38.6464737	106806	Cass County	Missouri	MO	3760	Kansas City Area	KansasCity
29077	29	-93.3406409	37.2581957	294997	Greene County	Missouri	MO	7920	Springfield, MO	Springfield_MO
29225	29	-92.8760795	37.2808043	39859	Webster County	Missouri	MO	7920	Springfield, MO	Springfield_MO
29043	29	-93.1876139	36.9697388	90655	Christian County	Missouri	MO	7920	Springfield, MO	Springfield_MO
31025	31	-96.1406086	40.9098778	26232	Cass County	Nebraska	NE	5920	Omaha	Omaha
31055	31	-96.1540664	41.2970908	574332	Douglas County	Nebraska	NE	5920	Omaha	Omaha
31153	31	-96.1091254	41.1150635	188856	Sarpy County	Nebraska	NE	5920	Omaha	Omaha
31177	31	-96.2245771	41.5339726	20901	Washington County	Nebraska	NE	5920	Omaha	Omaha
36029	36	-78.7781922	42.752759	917241	Erie County	New York	NY	1280	Buffalo Area	BuffaloNiagara
36063	36	-78.7921425	43.4567309	208396	Niagara County	New York	NY	1280	Buffalo Area	BuffaloNiagara
36081	36	-73.8380168	40.6585662	2225821	Queens County	New York	NY	1050	New York City	NYC
36047	36	-73.9506398	40.6350451	2538934	Kings County	New York	NY	1050	New York City	NYC
36085	36	-74.1398995	40.5612628	475327	Richmond County	New York	NY	1050	New York City	NYC
36005	36	-73.852939	40.8487111	1401142	Bronx County	New York	NY	1050	New York City	NYC
36061	36	-73.9701871	40.7766419	1611989	New York County	New York	NY	1050	New York City	NYC
36093	36	-74.0435592	42.8175516	155358	Schenectady County	New York	NY	160	Albany (NY) Area	AlbanyNY
36095	36	-74.4381718	42.591294	31132	Schoharie County	New York	NY	160	Albany (NY) Area	AlbanyNY
36083	36	-73.5138454	42.7104206	158108	Rensselaer County	New York	NY	160	Albany (NY) Area	AlbanyNY
36057	36	-74.4353575	42.9008912	49170	Montgomery County	New York	NY	160	Albany (NY) Area	AlbanyNY
36001	36	-73.9740095	42.5882401	303654	Albany County	New York	NY	160	Albany (NY) Area	AlbanyNY
36091	36	-73.8553872	43.1061353	230298	Saratoga County	New York	NY	160	Albany (NY) Area	AlbanyNY
36037	36	-78.1927784	43.0009096	56994	Genesee County	New York	NY	6840	Rochester	Rochester
36069	36	-77.3034967	42.8563575	110091	Ontario County	New York	NY	6840	Rochester	Rochester
36073	36	-78.2297258	43.5022867	39978	Orleans County	New York	NY	6840	Rochester	Rochester
36051	36	-77.7697795	42.7274845	62398	Livingston County	New York	NY	6840	Rochester	Rochester
36055	36	-77.6646584	43.4644839	740900	Monroe County	New York	NY	6840	Rochester	Rochester
36117	36	-77.0631637	43.4587577	89339	Wayne County	New York	NY	6840	Rochester	Rochester
36007	36	-75.8302833	42.1619773	189420	Broome County	New York	NY	960	Binghamton	Binghamton
36107	36	-76.2974556	42.1780565	47904	Tioga County	New York	NY	960	Binghamton	Binghamton
36011	36	-76.5745866	43.0085456	76029	Cayuga County	New York	NY	8160	Syracuse	Syracuse
36053	36	-75.6635749	42.9100255	70478	Madison County	New York	NY	8160	Syracuse	Syracuse
36067	36	-76.1961336	43.0065163	459214	Onondaga County	New York	NY	8160	Syracuse	Syracuse
36075	36	-76.2092618	43.4614431	116346	Oswego County	New York	NY	8160	Syracuse	Syracuse
40143	40	-95.9418132	36.1203177	657589	Tulsa County	Oklahoma	OK	8560	Tulsa	Tulsa
40131	40	-95.6013835	36.3777941	93155	Rogers County	Oklahoma	OK	8560	Tulsa	Tulsa
40145	40	-95.5140982	35.9634785	82925	Wagoner County	Oklahoma	OK	8560	Tulsa	Tulsa
40113	40	-96.408112	36.6242995	46642	Osage County	Oklahoma	OK	8560	Tulsa	Tulsa
40037	40	-96.3797931	35.9077324	71485	Creek County	Oklahoma	OK	8560	Tulsa	Tulsa
40125	40	-96.957007	35.2113928	72998	Pottawatomie County	Oklahoma	OK	5880	Oklahoma City	OklahomaCity
40087	40	-97.4498032	35.0164359	41348	McClain County	Oklahoma	OK	5880	Oklahoma City	OklahomaCity
40083	40	-97.4507644	35.9141514	48777	Logan County	Oklahoma	OK	5880	Oklahoma City	OklahomaCity
40027	40	-97.3230884	35.2063756	287066	Cleveland County	Oklahoma	OK	5880	Oklahoma City	OklahomaCity
40109	40	-97.4094007	35.5546109	804041	Oklahoma County	Oklahoma	OK	5880	Oklahoma City	OklahomaCity
40017	40	-97.9798891	35.5433544	153192	Canadian County	Oklahoma	OK	5880	Oklahoma City	OklahomaCity
51003	51	-78.5535056	38.0241841	110652	Albemarle County	Virginia	VA	1540	Charlottesville	Charlottesville
51079	51	-78.4701629	38.2979805	20131	Greene County	Virginia	VA	1540	Charlottesville	Charlottesville
51065	51	-78.2834938	37.830584	27422	Fluvanna County	Virginia	VA	1540	Charlottesville	Charlottesville
51540	51	-78.4853806	38.0376579	46950	Charlottesville city	Virginia	VA	1540	Charlottesville	Charlottesville
51680	51	-79.1954582	37.3990161	81561	Lynchburg city	Virginia	VA	4640	Lynchburg	Lynchburg
51009	51	-79.1546672	37.6293036	31667	Amherst County	Virginia	VA	4640	Lynchburg	Lynchburg
51019	51	-79.5272234	37.3122568	79811	Bedford County	Virginia	VA	4640	Lynchburg	Lynchburg
51031	51	-79.0954282	37.2101515	55304	Campbell County	Virginia	VA	4640	Lynchburg	Lynchburg
51169	51	-82.6136238	36.7127756	21629	Scott County	Virginia	VA	3660	Johnson City/Kingsport/Bristol	JohnsonCity
51191	51	-81.9503218	36.7478138	53695	Washington County	Virginia	VA	3660	Johnson City/Kingsport/Bristol	JohnsonCity
51520	51	-82.1575641	36.6169541	17329	Bristol city	Virginia	VA	3660	Johnson City/Kingsport/Bristol	JohnsonCity
51650	51	-76.2972931	37.0479606	135464	Hampton city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51199	51	-76.5616481	37.2190813	69199	York County	Virginia	VA	5720	Norfolk Area	NorfolkVA
51093	51	-76.7075688	36.9014184	37725	Isle of Wight County	Virginia	VA	5720	Norfolk Area	NorfolkVA
51830	51	-76.7081925	37.269481	15259	Williamsburg city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51800	51	-76.6347808	36.6971573	93913	Suffolk city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51095	51	-76.7778878	37.3248367	77612	James City County	Virginia	VA	5720	Norfolk Area	NorfolkVA
51073	51	-76.5235051	37.4035413	37459	Gloucester County	Virginia	VA	5720	Norfolk Area	NorfolkVA
51735	51	-76.3035337	37.1283599	12257	Poquoson city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51810	51	-76.0252078	36.7799845	451231	Virginia Beach city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51740	51	-76.3569725	36.8593388	95094	Portsmouth city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51550	51	-76.3017884	36.6793761	247011	Chesapeake city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51115	51	-76.2688078	37.4253479	8766	Mathews County	Virginia	VA	5720	Norfolk Area	NorfolkVA
51710	51	-76.2446413	36.9230149	242803	Norfolk city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51700	51	-76.5219802	37.0761357	179062	Newport News city	Virginia	VA	5720	Norfolk Area	NorfolkVA
51570	51	-77.3968043	37.2616846	17205	Colonial Heights city	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51087	51	-77.6519216	37.6312689	333766	Henrico County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51145	51	-77.9128553	37.5494041	30148	Powhatan County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51760	51	-77.4760085	37.531399	232226	Richmond city	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51075	51	-77.9176263	37.7188141	24431	Goochland County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51041	51	-77.5858474	37.3784338	358245	Chesterfield County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51085	51	-77.4913168	37.7602149	108262	Hanover County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51149	51	-77.2209931	37.1873255	38686	Prince George County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51036	51	-77.05417	37.3610537	6821	Charles City County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51127	51	-76.9993262	37.510158	23648	New Kent County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51730	51	-77.3923681	37.2047302	30446	Petersburg city	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51053	51	-77.6354922	37.0734984	28688	Dinwiddie County	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51670	51	-77.2989443	37.2910098	22375	Hopewell city	Virginia	VA	6760	Richmond/Petersburg	RichmondPetersburg
51600	51	-77.2990252	38.8531833	23429	Fairfax city	Virginia	VA	8840	Greater DC Area	DC
51510	51	-77.0836695	38.8192511	158726	Alexandria city	Virginia	VA	8840	Greater DC Area	DC
51685	51	-77.448767	38.7689451	18004	Manassas Park city	Virginia	VA	8840	Greater DC Area	DC
51059	51	-77.2732524	38.8295203	1150847	Fairfax County	Virginia	VA	8840	Greater DC Area	DC
51187	51	-78.207594	38.9082214	40475	Warren County	Virginia	VA	8840	Greater DC Area	DC
51013	51	-77.1007034	38.8783374	240119	Arlington County	Virginia	VA	8840	Greater DC Area	DC
51630	51	-77.4866583	38.2992718	29492	Fredericksburg city	Virginia	VA	8840	Greater DC Area	DC
51153	51	-77.4795791	38.7011187	475533	Prince William County	Virginia	VA	8840	Greater DC Area	DC
51107	51	-77.6388976	39.0812	422784	Loudoun County	Virginia	VA	8840	Greater DC Area	DC
51043	51	-77.9907479	39.1153068	14622	Clarke County	Virginia	VA	8840	Greater DC Area	DC
51179	51	-77.4513342	38.4132608	156748	Stafford County	Virginia	VA	8840	Greater DC Area	DC
51683	51	-77.4826328	38.7468077	40869	Manassas city	Virginia	VA	8840	Greater DC Area	DC
51061	51	-77.8215005	38.7440956	71361	Fauquier County	Virginia	VA	8840	Greater DC Area	DC
51610	51	-77.1756027	38.884722	14631	Falls Church city	Virginia	VA	8840	Greater DC Area	DC
51177	51	-77.6572264	38.1824314	138449	Spotsylvania County	Virginia	VA	8840	Greater DC Area	DC
51023	51	-79.7975457	37.5654822	33633	Botetourt County	Virginia	VA	6800	Roanoke	Roanoke
51161	51	-79.9439958	37.3435877	94509	Roanoke County	Virginia	VA	6800	Roanoke	Roanoke
51770	51	-79.9581739	37.278458	99058	Roanoke city	Virginia	VA	6800	Roanoke	Roanoke
51775	51	-80.0552407	37.2853329	25340	Salem city	Virginia	VA	6800	Roanoke	Roanoke
22079	22	-92.5359531	31.1932037	128567	Rapides Parish	Louisiana	LA	220	Alexandria Area	Alexandria
22015	22	-93.6265609	32.6984813	127275	Bossier Parish	Louisiana	LA	7680	Shreveport	Shreveport
22017	22	-93.8824228	32.5771951	237479	Caddo Parish	Louisiana	LA	7680	Shreveport	Shreveport
22119	22	-93.3398245	32.7321522	37943	Webster Parish	Louisiana	LA	7680	Shreveport	Shreveport
22001	22	-92.4110366	30.291497	61918	Acadia Parish	Louisiana	LA	3880	Lafayette (LA)	Lafayette
22099	22	-91.6114814	30.1214329	52954	St. Martin Parish	Louisiana	LA	3880	Lafayette (LA)	Lafayette
22097	22	-91.9892745	30.5834409	81440	St. Landry Parish	Louisiana	LA	3880	Lafayette (LA)	Lafayette
22055	22	-92.06417	30.2065065	246518	Lafayette Parish	Louisiana	LA	3880	Lafayette (LA)	Lafayette
22093	22	-90.7939562	30.0247772	20727	St. James Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22071	22	-89.9345018	30.0534195	389476	Orleans Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22075	22	-89.5760676	29.282447	23113	Plaquemines Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22095	22	-90.4909596	30.1440682	42516	St. John the Baptist Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22087	22	-89.2634941	29.9181102	47647	St. Bernard Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22089	22	-90.3578553	29.9057222	52987	St. Charles Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22103	22	-89.9519622	30.4100224	263446	St. Tammany Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22051	22	-90.081001	29.522281	432346	Jefferson Parish	Louisiana	LA	5560	New Orleans	NewOrleans
22121	22	-91.309808	30.4640516	26792	West Baton Rouge Parish	Louisiana	LA	760	Baton Rouge	BatonRouge
22063	22	-90.7274738	30.4404194	143737	Livingston Parish	Louisiana	LA	760	Baton Rouge	BatonRouge
22033	22	-91.093131	30.5439297	439729	East Baton Rouge Parish	Louisiana	LA	760	Baton Rouge	BatonRouge
27141	27	-93.76913	45.4531762	98811	Sherburne County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27053	27	-93.4752279	45.0061209	1268408	Hennepin County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27059	27	-93.2963388	45.5624313	41429	Isanti County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27171	27	-93.9663965	45.1750914	140249	Wright County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27037	27	-93.0624813	44.670893	431807	Dakota County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27139	27	-93.5337311	44.651805	150689	Scott County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27025	27	-92.9038486	45.5054439	56794	Chisago County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27003	27	-93.2427232	45.2741098	359921	Anoka County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27163	27	-92.890117	45.037929	265476	Washington County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27019	27	-93.8000913	44.8213196	106565	Carver County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
27123	27	-93.0999648	45.0152037	547903	Ramsey County	Minnesota	MN	5120	Minneapolis/St. Paul	MinneapolisStPaul
47173	47	-83.8360878	36.2841401	20187	Union County	Tennessee	TN	3840	Knoxville	Knoxville
47155	47	-83.5184957	35.7953454	99244	Sevier County	Tennessee	TN	3840	Knoxville	Knoxville
47009	47	-83.9229731	35.6881849	134751	Blount County	Tennessee	TN	3840	Knoxville	Knoxville
47093	47	-83.9377209	35.9927265	475609	Knox County	Tennessee	TN	3840	Knoxville	Knoxville
47001	47	-84.1954177	36.1167307	77558	Anderson County	Tennessee	TN	3840	Knoxville	Knoxville
47105	47	-84.3140848	35.7350854	54910	Loudon County	Tennessee	TN	3840	Knoxville	Knoxville
47065	47	-85.2018432	35.163472	371662	Hamilton County	Tennessee	TN	1560	Chattanooga	Chattanooga
47047	47	-89.4138027	35.1969933	41620	Fayette County	Tennessee	TN	4920	Memphis	Memphis
47167	47	-89.766803	35.5002588	61918	Tipton County	Tennessee	TN	4920	Memphis	Memphis
47157	47	-89.895397	35.1837942	936017	Shelby County	Tennessee	TN	4920	Memphis	Memphis
47163	47	-82.3013363	36.5096806	158755	Sullivan County	Tennessee	TN	3660	Johnson City/Kingsport/Bristol	JohnsonCity
47073	47	-82.931485	36.4520892	56775	Hawkins County	Tennessee	TN	3660	Johnson City/Kingsport/Bristol	JohnsonCity
47179	47	-82.4950374	36.2956649	130367	Washington County	Tennessee	TN	3660	Johnson City/Kingsport/Bristol	JohnsonCity
47171	47	-82.4182181	36.1001287	17755	Unicoi County	Tennessee	TN	3660	Johnson City/Kingsport/Bristol	JohnsonCity
47019	47	-82.1265932	36.2847441	56418	Carter County	Tennessee	TN	3660	Johnson City/Kingsport/Bristol	JohnsonCity
47125	47	-87.3808865	36.5003535	214251	Montgomery County	Tennessee	TN	1660	Clarksville	Clarksville
47037	47	-86.7847898	36.1691287	694176	Davidson County	Tennessee	TN	5360	Nashville	Nashville
47149	47	-86.4172127	35.8433688	339261	Rutherford County	Tennessee	TN	5360	Nashville	Nashville
47165	47	-86.4597975	36.473443	195561	Sumner County	Tennessee	TN	5360	Nashville	Nashville
47187	47	-86.8980679	35.8948075	245348	Williamson County	Tennessee	TN	5360	Nashville	Nashville
47021	47	-87.1008077	36.2551687	41101	Cheatham County	Tennessee	TN	5360	Nashville	Nashville
47147	47	-86.8693538	36.5275092	72275	Robertson County	Tennessee	TN	5360	Nashville	Nashville
47043	47	-87.3641546	36.1455325	54376	Dickson County	Tennessee	TN	5360	Nashville	Nashville
47189	47	-86.2912423	36.149527	148130	Wilson County	Tennessee	TN	5360	Nashville	Nashville
55093	55	-92.4262793	44.7253365	42700	Pierce County	Wisconsin	WI	5120	Minneapolis/St. Paul	MinneapolisStPaul
55109	55	-92.4472842	45.0289589	91838	St. Croix County	Wisconsin	WI	5120	Minneapolis/St. Paul	MinneapolisStPaul
55015	55	-88.2121322	44.0784104	50209	Calumet County	Wisconsin	WI	460	Appleton	Appleton
55087	55	-88.4649883	44.4182258	188766	Outagamie County	Wisconsin	WI	460	Appleton	Appleton
55139	55	-88.6681488	44.0857068	171631	Winnebago County	Wisconsin	WI	460	Appleton	Appleton
55079	55	-87.4815541	43.0176601	945016	Milwaukee County	Wisconsin	WI	5080	Milwaukee Area	Milwaukee
55089	55	-87.4993036	43.3607524	90043	Ozaukee County	Wisconsin	WI	5080	Milwaukee Area	Milwaukee
55133	55	-88.3042404	43.0183677	406172	Waukesha County	Wisconsin	WI	5080	Milwaukee Area	Milwaukee
55131	55	-88.2329166	43.391156	136445	Washington County	Wisconsin	WI	5080	Milwaukee Area	Milwaukee
06067	06	-121.3404408	38.4500161	1559146	Sacramento County	California	CA	6920	Sacramento Area	Sacramento
06017	06	-120.5342245	38.7856116	192925	El Dorado County	California	CA	6920	Sacramento Area	Sacramento
06061	06	-120.7227181	39.0620323	402950	Placer County	California	CA	6920	Sacramento Area	Sacramento
06075	06	-123.0322294	37.7272391	866606	San Francisco County	California	CA	1040	Bay Area	BayArea
06081	06	-122.3715457	37.4146725	758308	San Mateo County	California	CA	1040	Bay Area	BayArea
06013	06	-121.9515431	37.919479	1152333	Contra Costa County	California	CA	1040	Bay Area	BayArea
06001	06	-121.912488	37.6471385	1662323	Alameda County	California	CA	1040	Bay Area	BayArea
06041	06	-122.7459738	38.0518169	257332	Marin County	California	CA	1040	Bay Area	BayArea
06085	06	-121.6905097	37.2206954	1907105	Santa Clara County	California	CA	1040	Bay Area	BayArea
34013	34	-74.2462919	40.7874003	800501	Essex County	New Jersey	NJ	5640	Newark	Newark
34037	34	-74.6919141	41.1374609	140002	Sussex County	New Jersey	NJ	5640	Newark	Newark
34041	34	-75.0094978	40.8534914	105624	Warren County	New Jersey	NJ	5640	Newark	Newark
34039	34	-74.3086957	40.6598707	555394	Union County	New Jersey	NJ	5640	Newark	Newark
34027	34	-74.5472917	40.8588961	491087	Morris County	New Jersey	NJ	5640	Newark	Newark
34005	34	-74.6630063	39.8757858	446596	Burlington County	New Jersey	NJ	6160	Philadelphia	Philly
34015	34	-75.1456793	39.7228745	293245	Gloucester County	New Jersey	NJ	6160	Philadelphia	Philly
34007	34	-74.9612493	39.8024071	506809	Camden County	New Jersey	NJ	6160	Philadelphia	Philly
34033	34	-75.3573559	39.5738282	62451	Salem County	New Jersey	NJ	6160	Philadelphia	Philly
34001	34	-74.6337591	39.4693555	262945	Atlantic County	New Jersey	NJ	560	Atlantic/Cape May	AtlanticMay
34009	34	-74.8463541	39.0858411	91546	Cape May County	New Jersey	NJ	560	Atlantic/Cape May	AtlanticMay
34003	34	-74.0747272	40.9596985	930394	Bergen County	New Jersey	NJ	875	Bergen/Passaic	Bergen
34031	34	-74.29828	41.0378896	500382	Passaic County	New Jersey	NJ	875	Bergen/Passaic	Bergen
34023	34	-74.4074303	40.4396214	822736	Middlesex County	New Jersey	NJ	5015	Middlesex Area	MiddlesexNJ
34035	34	-74.6199378	40.5655273	329331	Somerset County	New Jersey	NJ	5015	Middlesex Area	MiddlesexNJ
34019	34	-74.9119695	40.5652832	124797	Hunterdon County	New Jersey	NJ	5015	Middlesex Area	MiddlesexNJ
35001	35	-106.6690805	35.053628	681666	Bernalillo County	New Mexico	NM	200	Albuquerque Area	Albuquerque
35043	35	-106.8831191	35.6850913	148904	Sandoval County	New Mexico	NM	200	Albuquerque Area	Albuquerque
35061	35	-106.8065821	34.7168404	77574	Valencia County	New Mexico	NM	200	Albuquerque Area	Albuquerque
53011	53	-122.4859533	45.7717295	496865	Clark County	Washington	WA	6440	Portland	Portland
53033	53	-121.833996	47.4905993	2274315	King County	Washington	WA	7600	Seattle Area	Seattle
53061	53	-121.936784	48.070464	830393	Snohomish County	Washington	WA	7600	Seattle Area	Seattle
53029	53	-122.6706492	48.1585538	86014	Island County	Washington	WA	7600	Seattle Area	Seattle
09003	09	-72.7329157	41.8060534	889226	Hartford County	Connecticut	CT	3283	Greater Hartford Area	Hartford
09013	09	-72.3409779	41.8580807	150600	Tolland County	Connecticut	CT	3283	Greater Hartford Area	Hartford
09007	09	-72.5227802	41.4330028	161657	Middlesex County	Connecticut	CT	3283	Greater Hartford Area	Hartford
28033	28	-89.99324	34.874266	188275	DeSoto County	Mississippi	MS	4920	Memphis	Memphis
28045	28	-89.4827905	30.3916415	48000	Hancock County	Mississippi	MS	920	Biloxi/Gulfport/Pascogoula	Biloxi
28047	28	-89.0833762	30.4165357	208801	Harrison County	Mississippi	MS	920	Biloxi/Gulfport/Pascogoula	Biloxi
28059	28	-88.6251005	30.4560045	143802	Jackson County	Mississippi	MS	920	Biloxi/Gulfport/Pascogoula	Biloxi
28089	28	-90.0341603	32.6343703	106871	Madison County	Mississippi	MS	3560	Jackson	Jackson
28049	28	-90.4660171	32.2677879	227966	Hinds County	Mississippi	MS	3560	Jackson	Jackson
28121	28	-89.946063	32.2671233	155975	Rankin County	Mississippi	MS	3560	Jackson	Jackson
38059	38	-101.2982647	46.7108188	31503	Morton County	North Dakota	ND	1010	Bismarck	Bismarck
38015	38	-100.4695326	46.9788291	96212	Burleigh County	North Dakota	ND	1010	Bismarck	Bismarck
42091	42	-75.3702011	40.2099992	833869	Montgomery County	Pennsylvania	PA	6160	Philadelphia	Philly
42017	42	-75.10706	40.3368872	627987	Bucks County	Pennsylvania	PA	6160	Philadelphia	Philly
42029	42	-75.749752	39.9740287	526759	Chester County	Pennsylvania	PA	6160	Philadelphia	Philly
42045	42	-75.3988178	39.9166853	566753	Delaware County	Pennsylvania	PA	6160	Philadelphia	Philly
42101	42	-75.1333459	40.0093755	1578487	Philadelphia County	Pennsylvania	PA	6160	Philadelphia	Philly
42125	42	-80.2521319	40.2000054	206803	Washington County	Pennsylvania	PA	6280	Pittsburgh	Pittsburgh
42007	42	-80.3507209	40.6841401	162575	Beaver County	Pennsylvania	PA	6280	Pittsburgh	Pittsburgh
42129	42	-79.4666879	40.3110682	347087	Westmoreland County	Pennsylvania	PA	6280	Pittsburgh	Pittsburgh
42019	42	-79.9189776	40.9138467	189135	Butler County	Pennsylvania	PA	6280	Pittsburgh	Pittsburgh
42051	42	-79.6401194	39.9189072	128126	Fayette County	Pennsylvania	PA	6280	Pittsburgh	Pittsburgh
42003	42	-79.9804515	40.4697574	1211358	Allegheny County	Pennsylvania	PA	6280	Pittsburgh	Pittsburgh
42079	42	-75.9760345	41.1727868	316982	Luzerne County	Pennsylvania	PA	7560	Scranton	Scranton
42037	42	-76.4042599	41.0455174	64842	Columbia County	Pennsylvania	PA	7560	Scranton	Scranton
42069	42	-75.6096661	41.4402841	208989	Lackawanna County	Pennsylvania	PA	7560	Scranton	Scranton
42131	42	-76.008731	41.5251726	26557	Wyoming County	Pennsylvania	PA	7560	Scranton	Scranton
42075	42	-76.4648185	40.3714482	141663	Lebanon County	Pennsylvania	PA	3240	Harrisburg Area	Harrisburg
42099	42	-77.2663284	40.3977795	46212	Perry County	Pennsylvania	PA	3240	Harrisburg Area	Harrisburg
42041	42	-77.2634419	40.1648047	255857	Cumberland County	Pennsylvania	PA	3240	Harrisburg Area	Harrisburg
42043	42	-76.7926343	40.4125646	279874	Dauphin County	Pennsylvania	PA	3240	Harrisburg Area	Harrisburg
42077	42	-75.5906269	40.6142409	370802	Lehigh County	Pennsylvania	PA	240	Allentown Area	Allentown
42095	42	-75.3074468	40.7527913	305892	Northampton County	Pennsylvania	PA	240	Allentown Area	Allentown
42025	42	-75.7050387	40.9183666	64081	Carbon County	Pennsylvania	PA	240	Allentown Area	Allentown
44001	44	-71.2866369	41.7068313	48350	Bristol County	Rhode Island	RI	6483	Providence Area	ProvidenceRI
44003	44	-71.5809243	41.6742448	164646	Kent County	Rhode Island	RI	6483	Providence Area	ProvidenceRI
44007	44	-71.5786246	41.8697678	636547	Providence County	Rhode Island	RI	6483	Providence Area	ProvidenceRI
44009	44	-71.6202819	41.396792	125746	Washington County	Rhode Island	RI	6483	Providence Area	ProvidenceRI
25013	25	-72.6356476	42.1361975	463986	Hampden County	Massachusetts	MA	8003	Springfield MA	Springfield_MA
25015	25	-72.6636936	42.3394593	161401	Hampshire County	Massachusetts	MA	8003	Springfield MA	Springfield_MA
25005	25	-71.088894	41.748588	566765	Bristol County	Massachusetts	MA	1123	Greater Boston Area	Boston
25009	25	-70.8649085	42.6427082	791263	Essex County	Massachusetts	MA	1123	Greater Boston Area	Boston
25027	25	-71.940282	42.3116934	829212	Worcester County	Massachusetts	MA	1123	Greater Boston Area	Boston
25021	25	-71.1811115	42.1717393	709409	Norfolk County	Massachusetts	MA	1123	Greater Boston Area	Boston
25025	25	-71.018253	42.3385513	801582	Suffolk County	Massachusetts	MA	1123	Greater Boston Area	Boston
25023	25	-70.7419417	41.9871959	523738	Plymouth County	Massachusetts	MA	1123	Greater Boston Area	Boston
25017	25	-71.3949161	42.4817182	1609379	Middlesex County	Massachusetts	MA	1123	Greater Boston Area	Boston
33017	33	-71.0355891	43.2932725	131533	Strafford County	New Hampshire	NH	1123	Greater Boston Area	Boston
33015	33	-71.0990801	42.9886636	311307	Rockingham County	New Hampshire	NH	1123	Greater Boston Area	Boston
33011	33	-71.7230554	42.9115317	418735	Hillsborough County	New Hampshire	NH	1123	Greater Boston Area	Boston
54069	54	-80.6207278	40.0989316	41182	Ohio County	West Virginia	WV	9000	Wheeling	Wheeling
54051	54	-80.6717944	39.8544259	30103	Marshall County	West Virginia	WV	9000	Wheeling	Wheeling
54099	54	-82.4226659	38.1436416	39054	Wayne County	West Virginia	WV	3400	Huntingon/Ashland	HuntingtonAshland
54011	54	-82.2433966	38.4195778	91589	Cabell County	West Virginia	WV	3400	Huntingon/Ashland	HuntingtonAshland
54057	54	-78.9566899	39.4047806	26722	Mineral County	West Virginia	WV	1900	Cumberland	Cumberland
54037	54	-77.86322	39.3073985	57486	Jefferson County	West Virginia	WV	8840	Greater DC Area	DC
54029	54	-80.5701643	40.5169584	28571	Hancock County	West Virginia	WV	8080	Steubenville	Steubenville
54009	54	-80.578691	40.2726454	21674	Brooke County	West Virginia	WV	8080	Steubenville	Steubenville
54079	54	-81.906109	38.5105128	56428	Putnam County	West Virginia	WV	1480	Charleston	Charleston
54039	54	-81.5235156	38.3280675	176253	Kanawha County	West Virginia	WV	1480	Charleston	Charleston
37151	37	-79.8062153	35.7099148	144557	Randolph County	North Carolina	NC	3120	Greensboro Area	Greensboro
37067	37	-80.2569608	36.1324661	383843	Forsyth County	North Carolina	NC	3120	Greensboro Area	Greensboro
37059	37	-80.5425524	35.9293554	43286	Davie County	North Carolina	NC	3120	Greensboro Area	Greensboro
37169	37	-80.2662145	36.3935052	45743	Stokes County	North Carolina	NC	3120	Greensboro Area	Greensboro
37001	37	-79.4005733	36.0439535	171346	Alamance County	North Carolina	NC	3120	Greensboro Area	Greensboro
37197	37	-80.6651641	36.1587653	37625	Yadkin County	North Carolina	NC	3120	Greensboro Area	Greensboro
37057	37	-80.207107	35.7951312	169234	Davidson County	North Carolina	NC	3120	Greensboro Area	Greensboro
37081	37	-79.7886652	36.079065	540521	Guilford County	North Carolina	NC	3120	Greensboro Area	Greensboro
37053	37	-75.9412242	36.3721739	29052	Currituck County	North Carolina	NC	5720	Norfolk Area	NorfolkVA
37003	37	-81.1774668	35.9209506	37441	Alexander County	North Carolina	NC	3290	Hickory/Morganton/Lenoir	Hickory
37023	37	-81.7061795	35.746182	90418	Burke County	North Carolina	NC	3290	Hickory/Morganton/Lenoir	Hickory
37027	37	-81.5125411	35.966395	82100	Caldwell County	North Carolina	NC	3290	Hickory/Morganton/Lenoir	Hickory
37035	37	-81.2149057	35.6618826	160307	Catawba County	North Carolina	NC	3290	Hickory/Morganton/Lenoir	Hickory
37115	37	-82.7126299	35.8642073	21740	Madison County	North Carolina	NC	480	Asheville Area	Asheville
37021	37	-82.5304234	35.6093706	263477	Buncombe County	North Carolina	NC	480	Asheville Area	Asheville
37109	37	-81.2268916	35.4884913	88097	Lincoln County	North Carolina	NC	1520	Greater Charlotte Area	Charlotte
37119	37	-80.8338317	35.2468623	1128945	Mecklenburg County	North Carolina	NC	1520	Greater Charlotte Area	Charlotte
37159	37	-80.5217214	35.6413551	142495	Rowan County	North Carolina	NC	1520	Greater Charlotte Area	Charlotte
37179	37	-80.5304264	34.9918204	244562	Union County	North Carolina	NC	1520	Greater Charlotte Area	Charlotte
37025	37	-80.5527284	35.3883455	221479	Cabarrus County	North Carolina	NC	1520	Greater Charlotte Area	Charlotte
37071	37	-81.1772556	35.2933443	226568	Gaston County	North Carolina	NC	1520	Greater Charlotte Area	Charlotte
37183	37	-78.650624	35.7898464	1132271	Wake County	North Carolina	NC	6640	Raleigh/Chapel Hill Area	RaleighChapelHill
37135	37	-79.120034	36.0625255	149077	Orange County	North Carolina	NC	6640	Raleigh/Chapel Hill Area	RaleighChapelHill
37069	37	-78.2830903	36.0882406	71859	Franklin County	North Carolina	NC	6640	Raleigh/Chapel Hill Area	RaleighChapelHill
37101	37	-78.3673482	35.5134188	216246	Johnston County	North Carolina	NC	6640	Raleigh/Chapel Hill Area	RaleighChapelHill
37063	37	-78.8781246	36.0338282	327306	Durham County	North Carolina	NC	6640	Raleigh/Chapel Hill Area	RaleighChapelHill
37037	37	-79.2514542	35.7049939	75748	Chatham County	North Carolina	NC	6640	Raleigh/Chapel Hill Area	RaleighChapelHill
45003	45	-81.632983	33.5500134	172895	Aiken County	South Carolina	SC	600	Augusta/Aiken	AugustaAiken
45037	45	-81.9682452	33.7764976	27120	Edgefield County	South Carolina	SC	600	Augusta/Aiken	AugustaAiken
45007	45	-82.6386029	34.521235	204353	Anderson County	South Carolina	SC	3160	Greenville Area	Greenville
45083	45	-81.9910522	34.9332708	326205	Spartanburg County	South Carolina	SC	3160	Greenville Area	Greenville
45045	45	-82.3720772	34.8926452	532486	Greenville County	South Carolina	SC	3160	Greenville Area	Greenville
45077	45	-82.7233774	34.8853677	127983	Pickens County	South Carolina	SC	3160	Greenville Area	Greenville
45021	45	-81.6076469	35.0497962	57316	Cherokee County	South Carolina	SC	3160	Greenville Area	Greenville
45019	45	-79.94248	32.8004582	417981	Charleston County	South Carolina	SC	1440	Greater Charleston Area	Charleston
45035	45	-80.4046966	33.0821859	165737	Dorchester County	South Carolina	SC	1440	Greater Charleston Area	Charleston
45015	45	-79.9536554	33.2077	235987	Berkeley County	South Carolina	SC	1440	Greater Charleston Area	Charleston
45079	45	-80.8980371	34.0290952	419051	Richland County	South Carolina	SC	1760	Columbia (SC)	Columbia
45063	45	-81.2662769	33.8994765	303946	Lexington County	South Carolina	SC	1760	Columbia (SC)	Columbia
45091	45	-81.1831873	34.9701875	289105	York County	South Carolina	SC	1520	Greater Charlotte Area	Charlotte
11001	11	-77.0165167	38.9042474	712816	District of Columbia	District of Columbia	DC	8840	Greater DC Area	DC
01127	01	-87.3010936	33.7915581	63143	Walker County	Alabama	AL	\N	\N	\N
48389	48	-103.712706	31.308366	15949	Reeves County	Texas	TX	\N	\N	\N
56017	56	-108.4350765	43.7202092	4425	Hot Springs County	Wyoming	WY	\N	\N	\N
72085	72	-65.871189	18.1871483	\N	Las Piedras Municipio	Puerto Rico	PR	\N	\N	\N
37147	37	-77.3727387	35.5924897	182924	Pitt County	North Carolina	NC	\N	\N	\N
05053	05	-92.4229794	34.2855683	18449	Grant County	Arkansas	AR	\N	\N	\N
47123	47	-84.249705	35.4478181	47177	Monroe County	Tennessee	TN	\N	\N	\N
36059	36	-73.5894144	40.7296118	1351334	Nassau County	New York	NY	\N	\N	\N
42057	42	-78.1226171	39.9107505	14501	Fulton County	Pennsylvania	PA	\N	\N	\N
20031	20	-95.7291373	38.2364502	8158	Coffey County	Kansas	KS	\N	\N	\N
40129	40	-99.7415716	35.7085544	3570	Roger Mills County	Oklahoma	OK	\N	\N	\N
23031	23	-70.6684248	43.4260188	209066	York County	Maine	ME	\N	\N	\N
12119	12	-82.0743472	28.7141008	139018	Sumter County	Florida	FL	\N	\N	\N
18045	18	-87.2348725	40.1212366	16511	Fountain County	Indiana	IN	\N	\N	\N
48343	48	-94.7312653	33.116466	12393	Morris County	Texas	TX	\N	\N	\N
05141	05	-92.5159757	35.5829532	16541	Van Buren County	Arkansas	AR	\N	\N	\N
47181	47	-87.8198433	35.2428473	16524	Wayne County	Tennessee	TN	\N	\N	\N
48153	48	-101.3032742	34.0737305	5672	Floyd County	Texas	TX	\N	\N	\N
28087	28	-88.4397227	33.4714237	58309	Lowndes County	Mississippi	MS	\N	\N	\N
19097	19	-90.5745819	42.1642256	19205	Jackson County	Iowa	IA	\N	\N	\N
17155	17	-89.2983474	41.1989613	5716	Putnam County	Illinois	IL	\N	\N	\N
45073	45	-83.0615395	34.7487656	80015	Oconee County	South Carolina	SC	\N	\N	\N
37143	37	-76.4032445	36.1808969	13667	Perquimans County	North Carolina	NC	\N	\N	\N
28035	28	-89.2594467	31.1885802	75009	Forrest County	Mississippi	MS	\N	\N	\N
31027	31	-97.2568696	42.6045604	8414	Cedar County	Nebraska	NE	\N	\N	\N
39059	39	-81.497875	40.0566648	38779	Guernsey County	Ohio	OH	\N	\N	\N
49007	49	-110.5884845	39.673284	20760	Carbon County	Utah	UT	\N	\N	\N
20053	20	-98.2053552	38.7008451	6034	Ellsworth County	Kansas	KS	\N	\N	\N
27113	27	-96.0377254	48.069247	13874	Pennington County	Minnesota	MN	\N	\N	\N
18131	18	-86.6925383	41.0452718	12388	Pulaski County	Indiana	IN	\N	\N	\N
28003	28	-88.5811091	34.8865689	36889	Alcorn County	Mississippi	MS	\N	\N	\N
50009	50	-71.7327362	44.7240209	6123	Essex County	Vermont	VT	\N	\N	\N
13253	13	-84.8676853	30.9339599	8060	Seminole County	Georgia	GA	\N	\N	\N
17181	17	-89.2446391	37.4856521	16498	Union County	Illinois	IL	\N	\N	\N
20095	20	-98.1445285	37.5529509	6974	Kingman County	Kansas	KS	\N	\N	\N
29199	29	-92.1428235	40.4476855	4871	Scotland County	Missouri	MO	\N	\N	\N
48125	48	-100.7876173	33.6153628	2140	Dickens County	Texas	TX	\N	\N	\N
37193	37	-81.1660949	36.2088833	68043	Wilkes County	North Carolina	NC	\N	\N	\N
27081	27	-96.2720323	44.4082382	5568	Lincoln County	Minnesota	MN	\N	\N	\N
48369	48	-102.7848533	34.5321628	9522	Parmer County	Texas	TX	\N	\N	\N
02063	02	\N	\N	6427	Chugach Census Area	Alaska	AK	\N	\N	\N
51035	51	-80.7278307	36.7319632	30074	Carroll County	Virginia	VA	\N	\N	\N
47033	47	-89.1324936	35.8187949	14180	Crockett County	Tennessee	TN	\N	\N	\N
29143	29	-89.6559485	36.5942608	16693	New Madrid County	Missouri	MO	\N	\N	\N
48275	48	-99.7303563	33.6118897	3683	Knox County	Texas	TX	\N	\N	\N
26089	26	-86.051574	45.1461816	21743	Leelanau County	Michigan	MI	\N	\N	\N
35051	35	-107.1881612	33.1194684	10867	Sierra County	New Mexico	NM	\N	\N	\N
48195	48	-101.3569304	36.2728469	5279	Hansford County	Texas	TX	\N	\N	\N
27079	27	-93.7301433	44.3734238	28741	Le Sueur County	Minnesota	MN	\N	\N	\N
72131	72	-66.9706926	18.3314222	\N	San Sebastián Municipio	Puerto Rico	PR	\N	\N	\N
37129	37	-77.8642088	34.183442	236613	New Hanover County	North Carolina	NC	\N	\N	\N
26013	26	-88.3618101	46.6958592	8164	Baraga County	Michigan	MI	\N	\N	\N
39143	39	-83.1427763	41.3553193	58351	Sandusky County	Ohio	OH	\N	\N	\N
48465	48	-101.1433237	29.8752853	49028	Val Verde County	Texas	TX	\N	\N	\N
48279	48	-102.3480182	34.0688615	12710	Lamb County	Texas	TX	\N	\N	\N
37041	37	-76.6027521	36.128979	13815	Chowan County	North Carolina	NC	\N	\N	\N
51109	51	-77.959795	37.9727041	38132	Louisa County	Virginia	VA	\N	\N	\N
51820	51	-78.9014197	38.0671571	22741	Waynesboro city	Virginia	VA	\N	\N	\N
21229	21	-85.1754162	37.7542085	12147	Washington County	Kentucky	KY	\N	\N	\N
27029	27	-95.371117	47.5758729	9017	Clearwater County	Minnesota	MN	\N	\N	\N
17061	17	-90.3876823	39.3554391	12702	Greene County	Illinois	IL	\N	\N	\N
51071	51	-80.698321	37.3180719	16663	Giles County	Virginia	VA	\N	\N	\N
72151	72	-65.8598713	18.0598584	\N	Yabucoa Municipio	Puerto Rico	PR	\N	\N	\N
20083	20	-99.8984067	38.0874927	1779	Hodgeman County	Kansas	KS	\N	\N	\N
72145	72	-66.3978832	18.4551279	\N	Vega Baja Municipio	Puerto Rico	PR	\N	\N	\N
20045	20	-95.2909475	38.8964168	122530	Douglas County	Kansas	KS	\N	\N	\N
20127	20	-96.6514482	38.688204	5559	Morris County	Kansas	KS	\N	\N	\N
55019	55	-90.6099532	44.7393462	34720	Clark County	Wisconsin	WI	\N	\N	\N
30025	30	-104.4057182	46.3181841	2826	Fallon County	Montana	MT	\N	\N	\N
55011	55	-91.761294	44.3856333	13033	Buffalo County	Wisconsin	WI	\N	\N	\N
41023	41	-119.0140572	44.4963261	7180	Grant County	Oregon	OR	\N	\N	\N
22023	22	-93.1649478	29.871812	7003	Cameron Parish	Louisiana	LA	\N	\N	\N
22013	22	-93.0411511	32.3409517	12983	Bienville Parish	Louisiana	LA	\N	\N	\N
13193	13	-84.0512306	32.3626859	12712	Macon County	Georgia	GA	\N	\N	\N
01003	01	-87.7460666	30.6592183	229287	Baldwin County	Alabama	AL	\N	\N	\N
20187	20	-101.7893829	37.5659319	1969	Stanton County	Kansas	KS	\N	\N	\N
72097	72	-67.8933331	18.1641255	\N	Mayagüez Municipio	Puerto Rico	PR	\N	\N	\N
38057	38	-101.8333279	47.3071473	8174	Mercer County	North Dakota	ND	\N	\N	\N
55035	55	-91.2864137	44.7263547	105260	Eau Claire County	Wisconsin	WI	\N	\N	\N
47077	47	-88.3876742	35.6539945	28076	Henderson County	Tennessee	TN	\N	\N	\N
29079	29	-93.5650538	40.1125409	9595	Grundy County	Missouri	MO	\N	\N	\N
23000	23	\N	\N	\N	Maine Unknown	Maine	ME	\N	\N	\N
48005	48	-94.6111337	31.2518963	86796	Angelina County	Texas	TX	\N	\N	\N
46061	46	-97.7968454	43.6806116	3489	Hanson County	South Dakota	SD	\N	\N	\N
48271	48	-100.4177003	29.3470865	3670	Kinney County	Texas	TX	\N	\N	\N
40043	40	-99.014385	35.9779598	4815	Dewey County	Oklahoma	OK	\N	\N	\N
48325	48	-99.1110845	29.3536614	52358	Medina County	Texas	TX	\N	\N	\N
08051	08	-107.0568798	38.6704993	17593	Gunnison County	Colorado	CO	\N	\N	\N
08000	08	\N	\N	\N	Colorado Unknown	Colorado	CO	\N	\N	\N
30045	30	-110.30532	47.032558	1994	Judith Basin County	Montana	MT	\N	\N	\N
53001	53	-118.5128614	47.0112378	20027	Adams County	Washington	WA	\N	\N	\N
19109	19	-94.213983	43.2124777	14680	Kossuth County	Iowa	IA	\N	\N	\N
19075	19	-92.7902437	42.4033387	12217	Grundy County	Iowa	IA	\N	\N	\N
23005	23	-70.3303753	43.8083479	298111	Cumberland County	Maine	ME	\N	\N	\N
48171	48	-98.9418512	30.3250913	26960	Gillespie County	Texas	TX	\N	\N	\N
40093	40	-98.5420147	36.3131189	7579	Major County	Oklahoma	OK	\N	\N	\N
12013	12	-85.1979155	30.3888013	14078	Calhoun County	Florida	FL	\N	\N	\N
48059	48	-99.372249	32.2931499	14110	Callahan County	Texas	TX	\N	\N	\N
46109	46	-96.9475513	45.6233973	10331	Roberts County	South Dakota	SD	\N	\N	\N
27147	27	-93.2204527	44.0152607	36596	Steele County	Minnesota	MN	\N	\N	\N
42027	42	-77.8478769	40.9091275	161496	Centre County	Pennsylvania	PA	\N	\N	\N
16013	16	-113.9553713	43.394192	23426	Blaine County	Idaho	ID	\N	\N	\N
13123	13	-84.4546244	34.6905055	31978	Gilmer County	Georgia	GA	\N	\N	\N
72045	72	-66.2194806	18.2250315	\N	Comerío Municipio	Puerto Rico	PR	\N	\N	\N
41019	41	-123.154476	43.2863277	111364	Douglas County	Oregon	OR	\N	\N	\N
49000	49	\N	\N	\N	Utah Unknown	Utah	UT	\N	\N	\N
19179	19	-92.4094658	41.0312751	34985	Wapello County	Iowa	IA	\N	\N	\N
13023	13	-83.3317174	32.4354034	12955	Bleckley County	Georgia	GA	\N	\N	\N
55117	55	-87.7315164	43.741232	115240	Sheboygan County	Wisconsin	WI	\N	\N	\N
21161	21	-83.8281251	38.5941366	17035	Mason County	Kentucky	KY	\N	\N	\N
08015	08	-106.3166833	38.7382234	20661	Chaffee County	Colorado	CO	\N	\N	\N
13003	13	-82.8781511	31.2968056	8393	Atkinson County	Georgia	GA	\N	\N	\N
02198	02	-133.1623885	55.6827733	6147	Prince of Wales-Hyder Census Area	Alaska	AK	\N	\N	\N
22085	22	-93.5595793	31.5604024	23803	Sabine Parish	Louisiana	LA	\N	\N	\N
55099	55	-90.3596497	45.6790725	13245	Price County	Wisconsin	WI	\N	\N	\N
20175	20	-100.8552566	37.1809599	21038	Seward County	Kansas	KS	\N	\N	\N
37011	37	-81.9202847	36.07209	17571	Avery County	North Carolina	NC	\N	\N	\N
18083	18	-87.4203544	38.688391	36522	Knox County	Indiana	IN	\N	\N	\N
05069	05	-91.929673	34.277239	65377	Jefferson County	Arkansas	AR	\N	\N	\N
30035	30	-112.9905023	48.7056706	13594	Glacier County	Montana	MT	\N	\N	\N
48051	48	-96.6220912	30.4934867	18514	Burleson County	Texas	TX	\N	\N	\N
13221	13	-83.0740805	33.8668062	15383	Oglethorpe County	Georgia	GA	\N	\N	\N
13273	13	-84.4394464	31.7771909	8523	Terrell County	Georgia	GA	\N	\N	\N
42011	42	-75.9268598	40.4139565	421017	Berks County	Pennsylvania	PA	\N	\N	\N
18013	18	-86.2301205	39.1951133	15112	Brown County	Indiana	IN	\N	\N	\N
38077	38	-96.9379599	46.2652192	16156	Richland County	North Dakota	ND	\N	\N	\N
36111	36	-74.2654582	41.9472124	177716	Ulster County	New York	NY	\N	\N	\N
16015	16	-115.7151105	43.9872749	8065	Boise County	Idaho	ID	\N	\N	\N
49055	49	-110.990877	38.2598402	2759	Wayne County	Utah	UT	\N	\N	\N
41061	41	-117.9991488	45.3040809	26551	Union County	Oregon	OR	\N	\N	\N
30101	30	-111.7334723	48.6451246	4686	Toole County	Montana	MT	\N	\N	\N
05137	05	-92.1404819	35.8570011	12674	Stone County	Arkansas	AR	\N	\N	\N
39123	39	-83.0126127	41.5454953	40253	Ottawa County	Ohio	OH	\N	\N	\N
27173	27	-95.862756	44.7157358	9580	Yellow Medicine County	Minnesota	MN	\N	\N	\N
05041	05	-91.2441034	33.8287519	11110	Desha County	Arkansas	AR	\N	\N	\N
22025	22	-91.846703	31.666517	9226	Catahoula Parish	Louisiana	LA	\N	\N	\N
39161	39	-84.5857751	40.8555203	28159	Van Wert County	Ohio	OH	\N	\N	\N
08111	08	-107.6702567	37.7810492	748	San Juan County	Colorado	CO	\N	\N	\N
51077	51	-81.215324	36.6522288	15493	Grayson County	Virginia	VA	\N	\N	\N
18105	18	-86.52331	39.1607286	148219	Monroe County	Indiana	IN	\N	\N	\N
48429	48	-98.8393443	32.7380521	9334	Stephens County	Texas	TX	\N	\N	\N
26001	26	-82.8340784	44.6825347	10505	Alcona County	Michigan	MI	\N	\N	\N
54077	54	-79.6688649	39.4690296	33380	Preston County	West Virginia	WV	\N	\N	\N
01039	01	-86.4487206	31.2439873	36930	Covington County	Alabama	AL	\N	\N	\N
35023	35	-108.7519293	31.8980519	4106	Hidalgo County	New Mexico	NM	\N	\N	\N
05061	05	-93.9909315	34.0830639	13109	Howard County	Arkansas	AR	\N	\N	\N
46031	46	-101.1796647	45.6856708	4031	Corson County	South Dakota	SD	\N	\N	\N
19021	19	-95.1414324	42.7415219	19772	Buena Vista County	Iowa	IA	\N	\N	\N
39027	39	-83.7956823	39.4302248	41921	Clinton County	Ohio	OH	\N	\N	\N
41031	41	-121.1786315	44.6451505	24856	Jefferson County	Oregon	OR	\N	\N	\N
26047	26	-84.9868217	45.5900944	33342	Emmet County	Michigan	MI	\N	\N	\N
53009	53	-123.8898599	48.1109034	78067	Clallam County	Washington	WA	\N	\N	\N
28023	28	-88.6879756	32.0453738	15299	Clarke County	Mississippi	MS	\N	\N	\N
48031	48	-98.399217	30.2664556	12269	Blanco County	Texas	TX	\N	\N	\N
05117	05	-91.5536205	34.8311162	7966	Prairie County	Arkansas	AR	\N	\N	\N
28015	28	-89.918887	33.4407948	9732	Carroll County	Mississippi	MS	\N	\N	\N
17015	17	-89.9241894	42.0709	14241	Carroll County	Illinois	IL	\N	\N	\N
12115	12	-82.3658351	27.1843855	443465	Sarasota County	Florida	FL	\N	\N	\N
12071	12	-81.8919943	26.5590348	790767	Lee County	Florida	FL	\N	\N	\N
29205	29	-92.0887194	39.7975309	5919	Shelby County	Missouri	MO	\N	\N	\N
02997	02	\N	\N	\N	Multicounty, Not Statewide Alaska	Alaska	AK	\N	\N	\N
27011	27	-96.4022263	45.4199252	4923	Big Stone County	Minnesota	MN	\N	\N	\N
31031	31	-101.0476532	42.571323	5781	Cherry County	Nebraska	NE	\N	\N	\N
06021	06	-122.4016998	39.6025462	28283	Glenn County	California	CA	\N	\N	\N
31003	31	-98.0580367	42.1832253	6264	Antelope County	Nebraska	NE	\N	\N	\N
20109	20	-101.1574016	38.9132702	2732	Logan County	Kansas	KS	\N	\N	\N
47091	47	-81.8612467	36.4532029	17849	Johnson County	Tennessee	TN	\N	\N	\N
29141	29	-92.8748346	38.4208062	20716	Morgan County	Missouri	MO	\N	\N	\N
16031	16	-113.6263276	42.282313	24277	Cassia County	Idaho	ID	\N	\N	\N
15005	15	-156.9740097	21.2187644	87	Kalawao County	Hawaii	HI	\N	\N	\N
48129	48	-100.8158457	34.9550364	3308	Donley County	Texas	TX	\N	\N	\N
37103	37	-77.3561946	35.0322677	9250	Jones County	North Carolina	NC	\N	\N	\N
51121	51	-80.3877913	37.1755344	98391	Montgomery County	Virginia	VA	\N	\N	\N
08081	08	-108.2171545	40.6108644	13144	Moffat County	Colorado	CO	\N	\N	\N
47109	47	-88.5637397	35.1753751	25696	McNairy County	Tennessee	TN	\N	\N	\N
20033	20	-99.2512929	37.1814417	1690	Comanche County	Kansas	KS	\N	\N	\N
21057	21	-85.3884841	36.7823717	6523	Cumberland County	Kentucky	KY	\N	\N	\N
18171	18	-87.3758466	40.3526584	8194	Warren County	Indiana	IN	\N	\N	\N
29031	29	-89.6856575	37.3841408	79512	Cape Girardeau County	Missouri	MO	\N	\N	\N
04012	04	-114.038806	33.7276104	21480	La Paz County	Arizona	AZ	\N	\N	\N
48205	48	-102.6100473	35.8402444	5443	Hartley County	Texas	TX	\N	\N	\N
72079	72	-67.0401109	17.9785111	\N	Lajas Municipio	Puerto Rico	PR	\N	\N	\N
21091	21	-86.7927612	37.8433252	8742	Hancock County	Kentucky	KY	\N	\N	\N
66000	66	\N	\N	\N	Guam Unknown	Guam	GU	\N	\N	\N
41035	41	-121.6461682	42.6837613	68739	Klamath County	Oregon	OR	\N	\N	\N
22113	22	-92.2915678	29.7897222	59378	Vermilion Parish	Louisiana	LA	\N	\N	\N
26113	26	-85.0854708	44.325424	15152	Missaukee County	Michigan	MI	\N	\N	\N
29000	29	\N	\N	\N	Missouri Unknown	Missouri	MO	\N	\N	\N
05037	05	-90.7639835	35.2856921	16142	Cross County	Arkansas	AR	\N	\N	\N
29075	29	-94.4053211	40.2081271	6484	Gentry County	Missouri	MO	\N	\N	\N
09015	09	-71.9907017	41.8249987	116540	Windham County	Connecticut	CT	\N	\N	\N
28091	28	-89.821712	31.2301672	24441	Marion County	Mississippi	MS	\N	\N	\N
20011	20	-94.8509284	37.8560997	14435	Bourbon County	Kansas	KS	\N	\N	\N
35025	35	-103.4132707	32.7956865	71830	Lea County	New Mexico	NM	\N	\N	\N
13011	13	-83.4984409	34.3519216	19352	Banks County	Georgia	GA	\N	\N	\N
28115	28	-89.0372387	34.2270808	32461	Pontotoc County	Mississippi	MS	\N	\N	\N
29123	29	-90.3434128	37.4744807	12113	Madison County	Missouri	MO	\N	\N	\N
35041	35	-103.4830039	34.0212068	18350	Roosevelt County	New Mexico	NM	\N	\N	\N
48035	48	-97.6376407	31.9008189	18603	Bosque County	Texas	TX	\N	\N	\N
30039	30	-113.4273564	46.3959554	3317	Granite County	Montana	MT	\N	\N	\N
48169	48	-101.3011341	33.183792	6222	Garza County	Texas	TX	\N	\N	\N
40105	40	-95.6133123	36.7896148	10076	Nowata County	Oklahoma	OK	\N	\N	\N
47177	47	-85.7773428	35.6782498	41605	Warren County	Tennessee	TN	\N	\N	\N
02261	02	-145.0231093	61.3498431	\N	Valdez-Cordova Census Area	Alaska	AK	\N	\N	\N
28111	28	-88.9887554	31.1693073	11862	Perry County	Mississippi	MS	\N	\N	\N
09009	09	-72.9002033	41.3497185	851948	New Haven County	Connecticut	CT	\N	\N	\N
35045	35	-108.3245778	36.5116245	123312	San Juan County	New Mexico	NM	\N	\N	\N
21177	21	-87.1340919	37.2138159	30457	Muhlenberg County	Kentucky	KY	\N	\N	\N
49037	49	-109.7915742	37.6026332	15278	San Juan County	Utah	UT	\N	\N	\N
29035	29	-90.9457051	36.9448579	5991	Carter County	Missouri	MO	\N	\N	\N
37107	37	-77.6355095	35.2400677	55720	Lenoir County	North Carolina	NC	\N	\N	\N
04005	04	-111.7737277	35.8296919	142481	Coconino County	Arizona	AZ	\N	\N	\N
20143	20	-97.6548025	39.1379632	5712	Ottawa County	Kansas	KS	\N	\N	\N
72035	72	-66.1516668	18.103624	\N	Cayey Municipio	Puerto Rico	PR	\N	\N	\N
40051	40	-97.8868902	35.0210581	55906	Grady County	Oklahoma	OK	\N	\N	\N
48233	48	-101.3627461	35.837047	20677	Hutchinson County	Texas	TX	\N	\N	\N
13099	13	-84.9067225	31.3241906	10037	Early County	Georgia	GA	\N	\N	\N
56045	56	-104.5700202	43.8462133	6743	Weston County	Wyoming	WY	\N	\N	\N
46017	46	-99.2039983	44.0443062	1956	Buffalo County	South Dakota	SD	\N	\N	\N
55119	55	-90.5048529	45.2116558	20318	Taylor County	Wisconsin	WI	\N	\N	\N
17145	17	-89.3685249	38.0843809	20664	Perry County	Illinois	IL	\N	\N	\N
27021	27	-94.3337048	46.9517447	29928	Cass County	Minnesota	MN	\N	\N	\N
06099	06	-121.0028311	37.5623162	550081	Stanislaus County	California	CA	\N	\N	\N
47013	47	-84.1592495	36.4015922	39837	Campbell County	Tennessee	TN	\N	\N	\N
48165	48	-102.6315614	32.7439423	21996	Gaines County	Texas	TX	\N	\N	\N
47135	47	-87.8693256	35.6637521	8099	Perry County	Tennessee	TN	\N	\N	\N
33007	33	-71.2894309	44.6525477	31174	Coos County	New Hampshire	NH	\N	\N	\N
40099	40	-97.0715567	34.4857664	13955	Murray County	Oklahoma	OK	\N	\N	\N
20201	20	-97.0956108	39.7767142	5427	Washington County	Kansas	KS	\N	\N	\N
19041	19	-95.1498753	43.0812244	15976	Clay County	Iowa	IA	\N	\N	\N
01049	01	-85.803992	34.460929	71658	DeKalb County	Alabama	AL	\N	\N	\N
26105	26	-86.7508138	43.9966363	29164	Mason County	Michigan	MI	\N	\N	\N
40061	40	-95.1095765	35.2322953	12652	Haskell County	Oklahoma	OK	\N	\N	\N
27015	27	-94.7336472	44.2465415	24846	Brown County	Minnesota	MN	\N	\N	\N
45057	45	-80.7036885	34.6868182	100926	Lancaster County	South Carolina	SC	\N	\N	\N
28113	28	-90.3977254	31.1775159	38997	Pike County	Mississippi	MS	\N	\N	\N
25019	25	-70.1419099	41.3058778	11376	Nantucket County	Massachusetts	MA	\N	\N	\N
13321	13	-83.8499598	31.5517733	19972	Worth County	Georgia	GA	\N	\N	\N
72051	72	-66.2619727	18.4743757	\N	Dorado Municipio	Puerto Rico	PR	\N	\N	\N
51089	51	-79.7592313	36.7814785	50309	Henry County	Virginia	VA	\N	\N	\N
13303	13	-82.7981123	32.9718435	20150	Washington County	Georgia	GA	\N	\N	\N
08069	08	-105.4867638	40.6580933	360428	Larimer County	Colorado	CO	\N	\N	\N
51037	51	-78.6585682	37.0090421	11820	Charlotte County	Virginia	VA	\N	\N	\N
51101	51	-77.0910539	37.7082604	17641	King William County	Virginia	VA	\N	\N	\N
17189	17	-89.4171873	38.3531405	13764	Washington County	Illinois	IL	\N	\N	\N
29135	29	-92.5836417	38.6330371	15585	Moniteau County	Missouri	MO	\N	\N	\N
33000	33	\N	\N	\N	New Hampshire Unknown	New Hampshire	NH	\N	\N	\N
48419	48	-94.1425794	31.7901394	24915	Shelby County	Texas	TX	\N	\N	\N
17183	17	-87.7267779	40.1867542	74855	Vermilion County	Illinois	IL	\N	\N	\N
26067	26	-85.073766	42.9446503	64553	Ionia County	Michigan	MI	\N	\N	\N
26085	26	-85.8113997	43.9951867	11587	Lake County	Michigan	MI	\N	\N	\N
21000	21	\N	\N	\N	Kentucky Unknown	Kentucky	KY	\N	\N	\N
72093	72	-66.9355468	18.1739559	\N	Maricao Municipio	Puerto Rico	PR	\N	\N	\N
72127	72	-66.0690807	18.4222485	\N	San Juan Municipio	Puerto Rico	PR	\N	\N	\N
21101	21	-87.5725767	37.7925421	44740	Henderson County	Kentucky	KY	\N	\N	\N
13283	13	-82.5708819	32.4095857	6822	Treutlen County	Georgia	GA	\N	\N	\N
22035	22	-91.2341409	32.7301699	6589	East Carroll Parish	Louisiana	LA	\N	\N	\N
51195	51	-82.6215601	36.9745607	37206	Wise County	Virginia	VA	\N	\N	\N
48037	48	-94.422393	33.4460648	93481	Bowie County	Texas	TX	\N	\N	\N
50000	50	\N	\N	\N	Vermont Unknown	Vermont	VT	\N	\N	\N
01045	01	-85.609476	31.4306536	48959	Dale County	Alabama	AL	\N	\N	\N
29041	29	-92.9616205	39.5179685	7360	Chariton County	Missouri	MO	\N	\N	\N
29055	29	-91.3139328	37.9665605	23739	Crawford County	Missouri	MO	\N	\N	\N
42081	42	-77.0552624	41.3438824	113209	Lycoming County	Pennsylvania	PA	\N	\N	\N
42063	42	-79.0875451	40.6514319	83664	Indiana County	Pennsylvania	PA	\N	\N	\N
31137	31	-99.4065568	40.5163647	9006	Phelps County	Nebraska	NE	\N	\N	\N
25001	25	-70.2118803	41.7990145	213164	Barnstable County	Massachusetts	MA	\N	\N	\N
06025	06	-115.3554001	33.0408143	180267	Imperial County	California	CA	\N	\N	\N
19065	19	-91.8403761	42.8641219	19258	Fayette County	Iowa	IA	\N	\N	\N
18065	18	-85.3973629	39.9295911	48033	Henry County	Indiana	IN	\N	\N	\N
72005	72	-67.1437616	18.4801911	\N	Aguadilla Municipio	Puerto Rico	PR	\N	\N	\N
26079	26	-85.0889915	44.6788808	18003	Kalkaska County	Michigan	MI	\N	\N	\N
46029	46	-97.1988375	44.9662852	28186	Codington County	South Dakota	SD	\N	\N	\N
46117	46	-100.7491628	44.4155468	3121	Stanley County	South Dakota	SD	\N	\N	\N
17011	17	-89.5283772	41.4013043	32303	Bureau County	Illinois	IL	\N	\N	\N
05049	05	-91.8196636	36.3836192	12381	Fulton County	Arkansas	AR	\N	\N	\N
30063	30	-113.8926911	47.0272632	121630	Missoula County	Montana	MT	\N	\N	\N
48105	48	-101.4042113	30.7175316	3513	Crockett County	Texas	TX	\N	\N	\N
13125	13	-82.6069126	33.2274908	2984	Glascock County	Georgia	GA	\N	\N	\N
01099	01	-87.3832656	31.5803324	20459	Monroe County	Alabama	AL	\N	\N	\N
72135	72	-66.2446686	18.3645557	\N	Toa Alta Municipio	Puerto Rico	PR	\N	\N	\N
05135	05	-91.4710689	36.1733989	17424	Sharp County	Arkansas	AR	\N	\N	\N
16085	16	-115.6180612	44.8559596	11792	Valley County	Idaho	ID	\N	\N	\N
26021	26	-86.7425435	41.7913818	153025	Berrien County	Michigan	MI	\N	\N	\N
36089	36	-75.074311	44.4881125	107185	St. Lawrence County	New York	NY	\N	\N	\N
72069	72	-65.7862286	18.1354025	\N	Humacao Municipio	Puerto Rico	PR	\N	\N	\N
17049	17	-88.5928488	39.0479445	34065	Effingham County	Illinois	IL	\N	\N	\N
17135	17	-89.4781407	39.2280681	28045	Montgomery County	Illinois	IL	\N	\N	\N
36031	36	-73.7784307	44.1096005	36891	Essex County	New York	NY	\N	\N	\N
12037	12	-84.7991742	29.8101756	12201	Franklin County	Florida	FL	\N	\N	\N
29039	29	-93.8500144	37.7336549	14322	Cedar County	Missouri	MO	\N	\N	\N
05017	05	-91.2971578	33.2671393	9924	Chicot County	Arkansas	AR	\N	\N	\N
46000	46	\N	\N	\N	South Dakota Unknown	South Dakota	SD	\N	\N	\N
48317	48	-101.9618363	32.3098298	5816	Martin County	Texas	TX	\N	\N	\N
72025	72	-66.0509643	18.2111085	\N	Caguas Municipio	Puerto Rico	PR	\N	\N	\N
06053	06	-121.3155723	36.240107	430906	Monterey County	California	CA	\N	\N	\N
13109	13	-81.890153	32.1530834	10638	Evans County	Georgia	GA	\N	\N	\N
29097	29	-94.3372594	37.2051967	121648	Jasper County	Missouri	MO	\N	\N	\N
42123	42	-79.2981823	41.8342984	38911	Warren County	Pennsylvania	PA	\N	\N	\N
54091	54	-80.0465539	39.3324778	16699	Taylor County	West Virginia	WV	\N	\N	\N
37113	37	-83.421901	35.1529593	35994	Macon County	North Carolina	NC	\N	\N	\N
72021	72	-66.1677473	18.3507217	\N	Bayamón Municipio	Puerto Rico	PR	\N	\N	\N
42013	42	-78.3095974	40.4986536	121007	Blair County	Pennsylvania	PA	\N	\N	\N
30005	30	-108.9676475	48.4282823	6568	Blaine County	Montana	MT	\N	\N	\N
55059	55	-87.4250046	42.5797034	169671	Kenosha County	Wisconsin	WI	\N	\N	\N
72149	72	-66.4722435	18.1307185	\N	Villalba Municipio	Puerto Rico	PR	\N	\N	\N
38053	38	-103.4032148	47.7424751	15242	McKenzie County	North Dakota	ND	\N	\N	\N
32007	32	-115.3514239	41.1411327	53006	Elko County	Nevada	NV	\N	\N	\N
35015	35	-104.3064338	32.4578347	58418	Eddy County	New Mexico	NM	\N	\N	\N
24045	24	-75.6320828	38.3673699	103990	Wicomico County	Maryland	MD	\N	\N	\N
51720	51	-82.625996	36.9315489	3985	Norton city	Virginia	VA	\N	\N	\N
46003	46	-98.5775872	43.7247191	2730	Aurora County	South Dakota	SD	\N	\N	\N
08067	08	-107.8397178	37.2873673	56564	La Plata County	Colorado	CO	\N	\N	\N
16035	16	-115.6535003	46.67257	8846	Clearwater County	Idaho	ID	\N	\N	\N
72107	72	-66.4368987	18.2187334	\N	Orocovis Municipio	Puerto Rico	PR	\N	\N	\N
19099	19	-93.0541468	41.6855513	37148	Jasper County	Iowa	IA	\N	\N	\N
06033	06	-122.7467569	39.0948019	64479	Lake County	California	CA	\N	\N	\N
22125	22	-91.4210081	30.872701	15465	West Feliciana Parish	Louisiana	LA	\N	\N	\N
55041	55	-88.7733265	45.6668806	8960	Forest County	Wisconsin	WI	\N	\N	\N
53055	53	-123.1037693	48.5071904	17492	San Juan County	Washington	WA	\N	\N	\N
38063	38	-98.2044278	47.9186666	2789	Nelson County	North Dakota	ND	\N	\N	\N
20065	20	-99.8798939	39.3549716	2389	Graham County	Kansas	KS	\N	\N	\N
36043	36	-75.011683	43.407489	60945	Herkimer County	New York	NY	\N	\N	\N
23007	23	-70.4149354	44.9767238	29986	Franklin County	Maine	ME	\N	\N	\N
38037	38	-101.6390494	46.3578269	2215	Grant County	North Dakota	ND	\N	\N	\N
13061	13	-84.9925826	31.6198309	2866	Clay County	Georgia	GA	\N	\N	\N
72109	72	-65.9866425	18.0003111	\N	Patillas Municipio	Puerto Rico	PR	\N	\N	\N
30111	30	-108.2766564	45.9369867	162990	Yellowstone County	Montana	MT	\N	\N	\N
19029	19	-94.9333023	41.3338235	12817	Cass County	Iowa	IA	\N	\N	\N
47099	47	-87.396546	35.2204764	44432	Lawrence County	Tennessee	TN	\N	\N	\N
08101	08	-104.4898924	38.1706581	169823	Pueblo County	Colorado	CO	\N	\N	\N
08043	08	-105.4249583	38.4551696	47867	Fremont County	Colorado	CO	\N	\N	\N
31063	31	-100.4066834	40.5309469	2587	Frontier County	Nebraska	NE	\N	\N	\N
36039	36	-74.1420253	42.2798211	47177	Greene County	New York	NY	\N	\N	\N
56043	56	-107.669052	43.8788305	7760	Washakie County	Wyoming	WY	\N	\N	\N
29051	29	-92.2800271	38.5032331	76191	Cole County	Missouri	MO	\N	\N	\N
13087	13	-84.5838902	30.8806431	26457	Decatur County	Georgia	GA	\N	\N	\N
22045	22	-91.9767838	30.0071265	68991	Iberia Parish	Louisiana	LA	\N	\N	\N
17057	17	-90.2022689	40.4652401	33690	Fulton County	Illinois	IL	\N	\N	\N
46069	46	-99.4727359	44.5371743	1281	Hyde County	South Dakota	SD	\N	\N	\N
35055	35	-105.6379865	36.5765287	32593	Taos County	New Mexico	NM	\N	\N	\N
17117	17	-89.9263301	39.2659138	44567	Macoupin County	Illinois	IL	\N	\N	\N
46039	46	-96.6902393	44.7562899	4346	Deuel County	South Dakota	SD	\N	\N	\N
19023	19	-92.780153	42.734757	14333	Butler County	Iowa	IA	\N	\N	\N
20111	20	-96.1616407	38.4554034	33045	Lyon County	Kansas	KS	\N	\N	\N
48173	48	-101.5214944	31.8680062	1439	Glasscock County	Texas	TX	\N	\N	\N
38011	38	-103.5059433	46.1101438	2986	Bowman County	North Dakota	ND	\N	\N	\N
56011	56	-104.5672975	44.5892657	7593	Crook County	Wyoming	WY	\N	\N	\N
48289	48	-95.9956219	31.3004926	17493	Leon County	Texas	TX	\N	\N	\N
48333	48	-98.5946231	31.4948885	4840	Mills County	Texas	TX	\N	\N	\N
17129	17	-89.7941326	40.0225693	12068	Menard County	Illinois	IL	\N	\N	\N
37121	37	-82.1635541	36.013102	14881	Mitchell County	North Carolina	NC	\N	\N	\N
31059	31	-97.5967053	40.5250399	5519	Fillmore County	Nebraska	NE	\N	\N	\N
19183	19	-91.7250523	41.3294012	21992	Washington County	Iowa	IA	\N	\N	\N
17199	17	-88.9300182	37.7303533	66415	Williamson County	Illinois	IL	\N	\N	\N
16025	16	-114.7721349	43.5025515	1130	Camas County	Idaho	ID	\N	\N	\N
45039	45	-81.1270007	34.3956685	22059	Fairfield County	South Carolina	SC	\N	\N	\N
01079	01	-87.3218651	34.529776	32857	Lawrence County	Alabama	AL	\N	\N	\N
19077	19	-94.5012723	41.6835728	10737	Guthrie County	Iowa	IA	\N	\N	\N
29119	29	-94.3439556	36.630218	22900	McDonald County	Missouri	MO	\N	\N	\N
42103	42	-75.0315143	41.3259485	56072	Pike County	Pennsylvania	PA	\N	\N	\N
29057	29	-93.854878	37.4323495	7568	Dade County	Missouri	MO	\N	\N	\N
20141	20	-98.7679416	39.3482608	3439	Osborne County	Kansas	KS	\N	\N	\N
19187	19	-94.1758309	42.4335786	35934	Webster County	Iowa	IA	\N	\N	\N
48079	48	-102.830449	33.6084401	2897	Cochran County	Texas	TX	\N	\N	\N
13027	13	-83.5819054	30.8229337	15357	Brooks County	Georgia	GA	\N	\N	\N
12015	12	-81.9412782	26.8689745	194711	Charlotte County	Florida	FL	\N	\N	\N
41055	41	-120.6785124	45.3992158	1801	Sherman County	Oregon	OR	\N	\N	\N
47041	47	-85.8335959	35.9822191	20837	DeKalb County	Tennessee	TN	\N	\N	\N
21159	21	-82.5066231	37.796774	11031	Martin County	Kentucky	KY	\N	\N	\N
47169	47	-86.1566909	36.3930297	11455	Trousdale County	Tennessee	TN	\N	\N	\N
54021	54	-80.8494132	38.9158671	7811	Gilmer County	West Virginia	WV	\N	\N	\N
37095	37	-76.1536867	35.4081567	4843	Hyde County	North Carolina	NC	\N	\N	\N
55049	55	-90.1336915	43.0010208	23640	Iowa County	Wisconsin	WI	\N	\N	\N
36103	36	-72.6922183	40.943554	1474273	Suffolk County	New York	NY	\N	\N	\N
16081	16	-111.2117653	43.7609939	12501	Teton County	Idaho	ID	\N	\N	\N
02013	02	-161.9974772	55.2450437	3401	Aleutians East Borough	Alaska	AK	\N	\N	\N
51840	51	-78.1763562	39.1738688	27700	Winchester city	Virginia	VA	\N	\N	\N
19089	19	-92.3219084	43.3653125	9176	Howard County	Iowa	IA	\N	\N	\N
19139	19	-91.1186992	41.483776	42394	Muscatine County	Iowa	IA	\N	\N	\N
49047	49	-109.5177482	40.1258872	35970	Uintah County	Utah	UT	\N	\N	\N
18121	18	-87.1969502	39.7742496	16871	Parke County	Indiana	IN	\N	\N	\N
55097	55	-89.4980699	44.4762457	71032	Portage County	Wisconsin	WI	\N	\N	\N
29007	29	-91.8434182	39.214481	24835	Audrain County	Missouri	MO	\N	\N	\N
27033	27	-95.1831523	44.0106386	11242	Cottonwood County	Minnesota	MN	\N	\N	\N
31101	31	-101.6444493	41.1942448	7983	Keith County	Nebraska	NE	\N	\N	\N
21153	21	-83.069721	37.698983	12017	Magoffin County	Kentucky	KY	\N	\N	\N
08047	08	-105.5288778	39.8611555	6235	Gilpin County	Colorado	CO	\N	\N	\N
20137	20	-99.8992352	39.7838666	5328	Norton County	Kansas	KS	\N	\N	\N
39005	39	-82.2701271	40.843273	53362	Ashland County	Ohio	OH	\N	\N	\N
23019	23	-68.666616	45.4092843	151655	Penobscot County	Maine	ME	\N	\N	\N
29139	29	-91.465427	38.9351835	11294	Montgomery County	Missouri	MO	\N	\N	\N
28007	28	-89.5886219	33.0904678	18004	Attala County	Mississippi	MS	\N	\N	\N
48109	48	-104.5269447	31.4459085	2149	Culberson County	Texas	TX	\N	\N	\N
20089	20	-98.2226184	39.7770021	2833	Jewell County	Kansas	KS	\N	\N	\N
12081	12	-82.3687669	27.4816825	411219	Manatee County	Florida	FL	\N	\N	\N
21181	21	-84.0262231	38.338031	7234	Nicholas County	Kentucky	KY	\N	\N	\N
38029	38	-100.2378424	46.2842552	3187	Emmons County	North Dakota	ND	\N	\N	\N
36071	36	-74.3062522	41.4024096	385234	Orange County	New York	NY	\N	\N	\N
31181	31	-98.4985897	40.1806461	3419	Webster County	Nebraska	NE	\N	\N	\N
13301	13	-82.6880123	33.4191691	5232	Warren County	Georgia	GA	\N	\N	\N
55007	55	-91.1772815	46.6341992	15242	Bayfield County	Wisconsin	WI	\N	\N	\N
36079	36	-73.7438608	41.4279067	98532	Putnam County	New York	NY	\N	\N	\N
27091	27	-94.5372525	43.6771181	19484	Martin County	Minnesota	MN	\N	\N	\N
35009	35	-103.3460546	34.5729841	48793	Curry County	New Mexico	NM	\N	\N	\N
06049	06	-120.7183704	41.5929185	8763	Modoc County	California	CA	\N	\N	\N
29053	29	-92.8123231	38.8453861	17102	Cooper County	Missouri	MO	\N	\N	\N
16063	16	-114.1538989	42.9861805	5358	Lincoln County	Idaho	ID	\N	\N	\N
41017	41	-121.2255751	43.9151181	201769	Deschutes County	Oregon	OR	\N	\N	\N
41033	41	-123.5716197	42.3869829	88053	Josephine County	Oregon	OR	\N	\N	\N
28127	28	-89.9177086	31.9025047	26629	Simpson County	Mississippi	MS	\N	\N	\N
31039	31	-96.7885168	41.9158651	8798	Cuming County	Nebraska	NE	\N	\N	\N
51640	51	-80.9143083	36.6656397	6296	Galax city	Virginia	VA	\N	\N	\N
47085	47	-87.7904526	36.0408218	18590	Humphreys County	Tennessee	TN	\N	\N	\N
29300	29	\N	\N	\N	Missouri Unknown 2	Missouri	MO	\N	\N	\N
46059	46	-99.0045751	44.5467133	3127	Hand County	South Dakota	SD	\N	\N	\N
54045	54	-81.940853	37.8305905	31688	Logan County	West Virginia	WV	\N	\N	\N
51011	51	-78.8109404	37.3707253	16043	Appomattox County	Virginia	VA	\N	\N	\N
47079	47	-88.3002878	36.325295	32056	Henry County	Tennessee	TN	\N	\N	\N
19103	19	-91.5905285	41.670668	153740	Johnson County	Iowa	IA	\N	\N	\N
21237	21	-83.4951095	37.7438929	7106	Wolfe County	Kentucky	KY	\N	\N	\N
49051	49	-111.1615683	40.3348838	35300	Wasatch County	Utah	UT	\N	\N	\N
28085	28	-90.4535663	31.5352155	33936	Lincoln County	Mississippi	MS	\N	\N	\N
47185	47	-85.4557854	35.9270486	27707	White County	Tennessee	TN	\N	\N	\N
37133	37	-77.4994691	34.7631087	203943	Onslow County	North Carolina	NC	\N	\N	\N
54025	54	-80.4505897	37.9244177	34319	Greenbrier County	West Virginia	WV	\N	\N	\N
01089	01	-86.5510802	34.7642377	379453	Madison County	Alabama	AL	\N	\N	\N
05133	05	-94.2432792	33.9948773	16702	Sevier County	Arkansas	AR	\N	\N	\N
51051	51	-82.3492199	37.1367011	14078	Dickenson County	Virginia	VA	\N	\N	\N
08057	08	-106.3292476	40.6634319	1389	Jackson County	Colorado	CO	\N	\N	\N
08079	08	-107.003236	37.5490672	773	Mineral County	Colorado	CO	\N	\N	\N
38079	38	-99.8404634	48.7682715	14165	Rolette County	North Dakota	ND	\N	\N	\N
20207	20	-95.7584691	37.8881929	3015	Woodson County	Kansas	KS	\N	\N	\N
47061	47	-85.7103793	35.3933855	13485	Grundy County	Tennessee	TN	\N	\N	\N
02122	02	-152.0526403	60.360766	59414	Kenai Peninsula Borough	Alaska	AK	\N	\N	\N
13049	13	-82.1396442	30.7799036	13430	Charlton County	Georgia	GA	\N	\N	\N
21175	21	-83.2589444	37.9229402	13142	Morgan County	Kentucky	KY	\N	\N	\N
30071	30	-107.9288973	48.2501432	3919	Phillips County	Montana	MT	\N	\N	\N
37117	37	-77.1196022	35.8473006	22178	Martin County	North Carolina	NC	\N	\N	\N
02195	02	-133.0085979	57.1124581	3296	Petersburg Borough	Alaska	AK	\N	\N	\N
29161	29	-91.7903492	37.8663263	44414	Phelps County	Missouri	MO	\N	\N	\N
01093	01	-87.881551	34.1382194	29703	Marion County	Alabama	AL	\N	\N	\N
26000	26	\N	\N	\N	Michigan Unknown	Michigan	MI	\N	\N	\N
37000	37	\N	\N	\N	North Carolina Unknown	North Carolina	NC	\N	\N	\N
13157	13	-83.5625568	34.1309052	76199	Jackson County	Georgia	GA	\N	\N	\N
21119	21	-82.9525461	37.3543684	14512	Knott County	Kentucky	KY	\N	\N	\N
54109	54	-81.5490317	37.6036601	20123	Wyoming County	West Virginia	WV	\N	\N	\N
22073	22	-92.1515814	32.480932	152439	Ouachita Parish	Louisiana	LA	\N	\N	\N
06031	06	-119.8155301	36.072478	152692	Kings County	California	CA	\N	\N	\N
13111	13	-84.3173308	34.8665427	26521	Fannin County	Georgia	GA	\N	\N	\N
42000	42	\N	\N	\N	Pennsylvania Unknown	Pennsylvania	PA	\N	\N	\N
48009	48	-98.6872669	33.6163054	8730	Archer County	Texas	TX	\N	\N	\N
35019	35	-104.7849677	34.8697822	4275	Guadalupe County	New Mexico	NM	\N	\N	\N
18027	18	-87.076943	38.6960898	33505	Daviess County	Indiana	IN	\N	\N	\N
01075	01	-88.0874309	33.7870852	13764	Lamar County	Alabama	AL	\N	\N	\N
37017	37	-78.5394885	34.5919375	32911	Bladen County	North Carolina	NC	\N	\N	\N
48387	48	-95.0484293	33.6196255	11995	Red River County	Texas	TX	\N	\N	\N
48311	48	-98.5788529	28.384922	721	McMullen County	Texas	TX	\N	\N	\N
20181	20	-101.719859	39.3513521	5777	Sherman County	Kansas	KS	\N	\N	\N
01007	01	-87.1271475	33.0158929	22136	Bibb County	Alabama	AL	\N	\N	\N
72013	72	-66.6749944	18.4340042	\N	Arecibo Municipio	Puerto Rico	PR	\N	\N	\N
21205	21	-83.4280787	38.2042659	24682	Rowan County	Kentucky	KY	\N	\N	\N
27065	27	-93.2977883	45.9477598	16416	Kanabec County	Minnesota	MN	\N	\N	\N
19053	19	-93.7845799	40.7363787	7769	Decatur County	Iowa	IA	\N	\N	\N
48377	48	-104.2616192	30.0058912	6508	Presidio County	Texas	TX	\N	\N	\N
28083	28	-90.2949343	33.5497896	27854	Leflore County	Mississippi	MS	\N	\N	\N
19135	19	-92.8696415	41.0288473	7770	Monroe County	Iowa	IA	\N	\N	\N
72057	72	-66.1374675	17.9739287	\N	Guayama Municipio	Puerto Rico	PR	\N	\N	\N
01043	01	-86.8692666	34.1319229	84515	Cullman County	Alabama	AL	\N	\N	\N
18127	18	-87.0713128	41.5099144	170980	Porter County	Indiana	IN	\N	\N	\N
29005	29	-95.4375546	40.431846	5096	Atchison County	Missouri	MO	\N	\N	\N
48259	48	-98.7092693	29.9435246	48523	Kendall County	Texas	TX	\N	\N	\N
21075	21	-89.1876586	36.5525115	5952	Fulton County	Kentucky	KY	\N	\N	\N
17079	17	-88.1507629	39.0048737	9465	Jasper County	Illinois	IL	\N	\N	\N
51133	51	-76.3796872	37.8569736	12069	Northumberland County	Virginia	VA	\N	\N	\N
06000	06	\N	\N	\N	California Unknown	California	CA	\N	\N	\N
48229	48	-105.3775489	31.4508678	4906	Hudspeth County	Texas	TX	\N	\N	\N
47045	47	-89.3983058	36.054196	36693	Dyer County	Tennessee	TN	\N	\N	\N
20051	20	-99.3173133	38.9145967	28671	Ellis County	Kansas	KS	\N	\N	\N
13267	13	-82.0592081	32.0437683	25365	Tattnall County	Georgia	GA	\N	\N	\N
48247	48	-98.7475708	27.0532308	5184	Jim Hogg County	Texas	TX	\N	\N	\N
42097	42	-76.709877	40.8515244	90258	Northumberland County	Pennsylvania	PA	\N	\N	\N
39083	39	-82.4223929	40.4036198	62423	Knox County	Ohio	OH	\N	\N	\N
37009	37	-81.4993343	36.4434687	27166	Ashe County	North Carolina	NC	\N	\N	\N
19047	19	-95.3890903	42.0431192	16834	Crawford County	Iowa	IA	\N	\N	\N
06071	06	-116.1811967	34.8572198	2189183	San Bernardino County	California	CA	\N	\N	\N
20069	20	-100.4517163	37.7445134	5954	Gray County	Kansas	KS	\N	\N	\N
51750	51	-80.5591473	37.1201194	18255	Radford city	Virginia	VA	\N	\N	\N
20059	20	-95.2789618	38.5580187	25703	Franklin County	Kansas	KS	\N	\N	\N
41025	41	-118.9871695	43.0644492	7373	Harney County	Oregon	OR	\N	\N	\N
17077	17	-89.3812119	37.7860959	56675	Jackson County	Illinois	IL	\N	\N	\N
29173	29	-91.5247867	39.5534554	10299	Ralls County	Missouri	MO	\N	\N	\N
48305	48	-101.8184933	33.1784124	6025	Lynn County	Texas	TX	\N	\N	\N
06009	06	-120.5614415	38.1838996	46308	Calaveras County	California	CA	\N	\N	\N
54007	54	-80.7316597	38.6993304	13702	Braxton County	West Virginia	WV	\N	\N	\N
12005	12	-85.6316798	30.2382176	171322	Bay County	Florida	FL	\N	\N	\N
28051	28	-90.0911968	33.1259415	16726	Holmes County	Mississippi	MS	\N	\N	\N
31123	31	-102.9905936	41.7322039	4625	Morrill County	Nebraska	NE	\N	\N	\N
37051	37	-78.8287187	35.0501921	336364	Cumberland County	North Carolina	NC	\N	\N	\N
48471	48	-95.5698246	30.7431631	72164	Walker County	Texas	TX	\N	\N	\N
37177	37	-76.1653454	35.8704196	3774	Tyrrell County	North Carolina	NC	\N	\N	\N
23017	23	-70.7344211	44.4944998	58132	Oxford County	Maine	ME	\N	\N	\N
19101	19	-91.9666345	41.0058877	18347	Jefferson County	Iowa	IA	\N	\N	\N
36115	36	-73.4394282	43.3123766	60606	Washington County	New York	NY	\N	\N	\N
27143	27	-94.2301232	44.5757343	14715	Sibley County	Minnesota	MN	\N	\N	\N
02090	02	-146.5481586	64.6760436	95651	Fairbanks North Star Borough	Alaska	AK	\N	\N	\N
33013	33	-71.6800412	43.2995786	152622	Merrimack County	New Hampshire	NH	\N	\N	\N
20013	20	-95.5699047	39.8259308	9482	Brown County	Kansas	KS	\N	\N	\N
27077	27	-94.9046335	48.7681003	3754	Lake of the Woods County	Minnesota	MN	\N	\N	\N
06011	06	-122.2375629	39.1777385	21558	Colusa County	California	CA	\N	\N	\N
48147	48	-96.1049882	33.5911611	35913	Fannin County	Texas	TX	\N	\N	\N
18041	18	-85.1850315	39.6396552	22892	Fayette County	Indiana	IN	\N	\N	\N
69110	69	145.7771923	15.1980954	\N	Saipan Municipality	Northern Mariana Islands	MP	\N	\N	\N
45085	45	-80.3823757	33.9161395	106360	Sumter County	South Carolina	SC	\N	\N	\N
48303	48	-101.8199438	33.6114688	314772	Lubbock County	Texas	TX	\N	\N	\N
47133	47	-85.2830756	36.3448504	22566	Overton County	Tennessee	TN	\N	\N	\N
36121	36	-78.2285667	42.7013627	39465	Wyoming County	New York	NY	\N	\N	\N
21213	21	-86.5817934	36.7409366	18635	Simpson County	Kentucky	KY	\N	\N	\N
12079	12	-83.4704159	30.4472325	18707	Madison County	Florida	FL	\N	\N	\N
21121	21	-83.8555508	36.8885003	31022	Knox County	Kentucky	KY	\N	\N	\N
38103	38	-99.6822135	47.5808513	3709	Wells County	North Dakota	ND	\N	\N	\N
06077	06	-121.272244	37.9349815	767967	San Joaquin County	California	CA	\N	\N	\N
27161	27	-93.5898443	44.0184598	18550	Waseca County	Minnesota	MN	\N	\N	\N
18155	18	-85.029681	38.8258545	10724	Switzerland County	Indiana	IN	\N	\N	\N
21085	21	-86.3440113	37.4585771	26480	Grayson County	Kentucky	KY	\N	\N	\N
48345	48	-100.7931519	34.0578993	1185	Motley County	Texas	TX	\N	\N	\N
27105	27	-95.7631323	43.6776863	21400	Nobles County	Minnesota	MN	\N	\N	\N
22101	22	-91.4638037	29.6293488	48330	St. Mary Parish	Louisiana	LA	\N	\N	\N
48041	48	-96.3023935	30.6567132	232555	Brazos County	Texas	TX	\N	\N	\N
41037	41	-120.3897896	42.7884009	7949	Lake County	Oregon	OR	\N	\N	\N
26031	26	-84.4954307	45.4760217	25365	Cheboygan County	Michigan	MI	\N	\N	\N
53017	53	-119.6946219	47.7417625	43560	Douglas County	Washington	WA	\N	\N	\N
13101	13	-82.8973758	30.7140081	4002	Echols County	Georgia	GA	\N	\N	\N
42071	42	-76.250198	40.0419921	546192	Lancaster County	Pennsylvania	PA	\N	\N	\N
47057	47	-83.5095458	36.2775091	23565	Grainger County	Tennessee	TN	\N	\N	\N
51005	51	-80.008669	37.7879048	14701	Alleghany County	Virginia	VA	\N	\N	\N
13019	13	-83.2278695	31.2886522	19408	Berrien County	Georgia	GA	\N	\N	\N
26141	26	-83.3840186	45.4895147	12665	Presque Isle County	Michigan	MI	\N	\N	\N
21193	21	-83.2177723	37.2412822	25456	Perry County	Kentucky	KY	\N	\N	\N
48263	48	-100.7697199	33.1847797	786	Kent County	Texas	TX	\N	\N	\N
54027	54	-78.6119886	39.3121395	23190	Hampshire County	West Virginia	WV	\N	\N	\N
22083	22	-91.7483534	32.413158	20014	Richland Parish	Louisiana	LA	\N	\N	\N
31089	31	-98.7847662	42.4592867	9956	Holt County	Nebraska	NE	\N	\N	\N
01017	01	-85.3940321	32.9155039	32865	Chambers County	Alabama	AL	\N	\N	\N
19000	19	\N	\N	\N	Iowa Unknown	Iowa	IA	\N	\N	\N
39047	39	-83.4618927	39.5552462	28579	Fayette County	Ohio	OH	\N	\N	\N
21105	21	-88.9720844	36.675896	4364	Hickman County	Kentucky	KY	\N	\N	\N
32027	32	-118.4094765	40.439639	6573	Pershing County	Nevada	NV	\N	\N	\N
05075	05	-91.1011529	36.0410983	16410	Lawrence County	Arkansas	AR	\N	\N	\N
37031	37	-76.5358602	34.8583428	69558	Carteret County	North Carolina	NC	\N	\N	\N
36097	36	-76.938603	42.4197755	17685	Schuyler County	New York	NY	\N	\N	\N
02998	02	\N	\N	\N	Out-of-State, Alaska	Alaska	AK	\N	\N	\N
05097	05	-93.664153	34.5456557	9006	Montgomery County	Arkansas	AR	\N	\N	\N
38093	38	-98.9561228	46.9722235	20498	Stutsman County	North Dakota	ND	\N	\N	\N
48485	48	-98.7080098	33.9882125	133205	Wichita County	Texas	TX	\N	\N	\N
37153	37	-79.7556946	35.004636	44332	Richmond County	North Carolina	NC	\N	\N	\N
16023	16	-113.1776308	43.685101	2646	Butte County	Idaho	ID	\N	\N	\N
28005	28	-90.7955421	31.2039333	12205	Amite County	Mississippi	MS	\N	\N	\N
72063	72	-65.9811768	18.2725815	\N	Gurabo Municipio	Puerto Rico	PR	\N	\N	\N
24023	24	-79.2746192	39.5472985	28852	Garrett County	Maryland	MD	\N	\N	\N
05087	05	-93.7240531	36.0125452	16644	Madison County	Arkansas	AR	\N	\N	\N
48487	48	-99.2424397	34.0849199	12552	Wilbarger County	Texas	TX	\N	\N	\N
51091	51	-79.5644718	38.3662431	2200	Highland County	Virginia	VA	\N	\N	\N
09000	09	\N	\N	\N	Connecticut Unknown	Connecticut	CT	\N	\N	\N
50027	50	-72.5988211	43.5726846	54988	Windsor County	Vermont	VT	\N	\N	\N
39017	39	-84.5657341	39.4397469	385648	Butler County	Ohio	OH	\N	\N	\N
55129	55	-91.7964217	45.8924885	15712	Washburn County	Wisconsin	WI	\N	\N	\N
30015	30	-110.4362004	47.8868343	5699	Chouteau County	Montana	MT	\N	\N	\N
05149	05	-93.4083032	34.9977133	21181	Yell County	Arkansas	AR	\N	\N	\N
39147	39	-83.1275469	41.1199923	54938	Seneca County	Ohio	OH	\N	\N	\N
31097	31	-96.2653668	40.3950099	5057	Johnson County	Nebraska	NE	\N	\N	\N
53051	53	-117.2321913	48.5438247	14144	Pend Oreille County	Washington	WA	\N	\N	\N
72029	72	-65.8851394	18.329872	\N	Canóvanas Municipio	Puerto Rico	PR	\N	\N	\N
55023	55	-90.9512302	43.24991	16021	Crawford County	Wisconsin	WI	\N	\N	\N
50003	50	-73.1114603	43.0353254	35338	Bennington County	Vermont	VT	\N	\N	\N
37029	37	-76.1624876	36.3423438	10984	Camden County	North Carolina	NC	\N	\N	\N
31065	31	-99.9096631	40.191865	4653	Furnas County	Nebraska	NE	\N	\N	\N
38047	38	-99.5045846	46.469278	1880	Logan County	North Dakota	ND	\N	\N	\N
54103	54	-80.6353994	39.59818	14904	Wetzel County	West Virginia	WV	\N	\N	\N
08103	08	-108.2007155	39.9726223	6342	Rio Blanco County	Colorado	CO	\N	\N	\N
20145	20	-99.2347717	38.1814768	6366	Pawnee County	Kansas	KS	\N	\N	\N
50025	50	-72.721955	42.9953348	42015	Windham County	Vermont	VT	\N	\N	\N
56019	56	-106.5885406	44.0440477	8588	Johnson County	Wyoming	WY	\N	\N	\N
56035	56	-109.9161701	42.7679284	9856	Sublette County	Wyoming	WY	\N	\N	\N
53019	53	-118.5335894	48.4732563	7759	Ferry County	Washington	WA	\N	\N	\N
37047	37	-78.6393077	34.2616017	54754	Columbus County	North Carolina	NC	\N	\N	\N
53023	53	-117.5367111	46.4294779	2290	Garfield County	Washington	WA	\N	\N	\N
05067	05	-91.2232051	35.5964674	16636	Jackson County	Arkansas	AR	\N	\N	\N
17055	17	-88.9263215	37.9918516	38060	Franklin County	Illinois	IL	\N	\N	\N
21141	21	-86.8812881	36.859607	27416	Logan County	Kentucky	KY	\N	\N	\N
05145	05	-91.7530339	35.2551175	78729	White County	Arkansas	AR	\N	\N	\N
48351	48	-93.73925	30.7867182	13414	Newton County	Texas	TX	\N	\N	\N
51047	51	-77.9564758	38.4859303	53569	Culpeper County	Virginia	VA	\N	\N	\N
49003	49	-113.126226	41.276061	57007	Box Elder County	Utah	UT	\N	\N	\N
48000	48	\N	\N	\N	Texas Unknown	Texas	TX	\N	\N	\N
48405	48	-94.1631796	31.3824492	8248	San Augustine County	Texas	TX	\N	\N	\N
30069	30	-108.2265753	47.1419168	500	Petroleum County	Montana	MT	\N	\N	\N
56027	56	-104.4683727	43.062159	2275	Niobrara County	Wyoming	WY	\N	\N	\N
31103	31	-99.7183514	42.8754803	759	Keya Paha County	Nebraska	NE	\N	\N	\N
51620	51	-76.9413956	36.6840142	7833	Franklin city	Virginia	VA	\N	\N	\N
22127	22	-92.6412694	31.9411871	13839	Winn Parish	Louisiana	LA	\N	\N	\N
26133	26	-85.3222825	43.9975523	23466	Osceola County	Michigan	MI	\N	\N	\N
29103	29	-92.1468345	40.1368559	3940	Knox County	Missouri	MO	\N	\N	\N
40119	40	-96.9752553	36.0792254	81755	Payne County	Oklahoma	OK	\N	\N	\N
13197	13	-84.5287354	32.3593118	8516	Marion County	Georgia	GA	\N	\N	\N
12000	12	\N	\N	\N	Florida Unknown	Florida	FL	\N	\N	\N
16055	16	-116.6959222	47.6759658	170628	Kootenai County	Idaho	ID	\N	\N	\N
18149	18	-86.6446359	41.2844785	23049	Starke County	Indiana	IN	\N	\N	\N
19037	19	-92.3172101	43.0597409	11834	Chickasaw County	Iowa	IA	\N	\N	\N
05003	05	-91.7722672	33.1908354	19339	Ashley County	Arkansas	AR	\N	\N	\N
37013	37	-76.8420144	35.4823128	47073	Beaufort County	North Carolina	NC	\N	\N	\N
21171	21	-85.713508	36.714077	10549	Monroe County	Kentucky	KY	\N	\N	\N
16029	16	-111.5442734	42.7860724	7123	Caribou County	Idaho	ID	\N	\N	\N
32033	32	-114.900605	39.4182344	9466	White Pine County	Nevada	NV	\N	\N	\N
48149	48	-96.9212309	29.8778861	25547	Fayette County	Texas	TX	\N	\N	\N
55001	55	-89.7672276	43.9737568	20498	Adams County	Wisconsin	WI	\N	\N	\N
18017	18	-86.3551685	40.7537986	37388	Cass County	Indiana	IN	\N	\N	\N
17169	17	-90.6134641	40.1569048	6738	Schuyler County	Illinois	IL	\N	\N	\N
13043	13	-82.0712656	32.4039497	10985	Candler County	Georgia	GA	\N	\N	\N
49025	49	-111.815329	37.2750892	7914	Kane County	Utah	UT	\N	\N	\N
01029	01	-85.5161261	33.6719637	14967	Cleburne County	Alabama	AL	\N	\N	\N
35047	35	-104.8035189	35.4768585	27144	San Miguel County	New Mexico	NM	\N	\N	\N
60000	60	\N	\N	\N	American Samoa Unknown	American Samoa	AS	\N	\N	\N
48219	48	-102.3433978	33.605932	22921	Hockley County	Texas	TX	\N	\N	\N
55141	55	-90.0388252	44.4614126	72560	Wood County	Wisconsin	WI	\N	\N	\N
45061	45	-80.2512086	34.1586401	16701	Lee County	South Carolina	SC	\N	\N	\N
22019	22	-93.3580154	30.2295588	203310	Calcasieu Parish	Louisiana	LA	\N	\N	\N
48479	48	-99.3407518	27.7607987	277681	Webb County	Texas	TX	\N	\N	\N
48349	48	-96.4769087	32.048448	50694	Navarro County	Texas	TX	\N	\N	\N
30051	30	-111.0369242	48.5596541	2369	Liberty County	Montana	MT	\N	\N	\N
37019	37	-78.2277653	34.0387542	149039	Brunswick County	North Carolina	NC	\N	\N	\N
16039	16	-115.471205	43.3946984	27448	Elmore County	Idaho	ID	\N	\N	\N
48287	48	-96.9768226	30.3214983	17397	Lee County	Texas	TX	\N	\N	\N
21233	21	-87.6847902	37.5194599	12923	Webster County	Kentucky	KY	\N	\N	\N
13307	13	-84.5538279	32.0466911	2595	Webster County	Georgia	GA	\N	\N	\N
24000	24	\N	\N	\N	Maryland Unknown	Maryland	MD	\N	\N	\N
38039	38	-98.2322863	47.4563342	2207	Griggs County	North Dakota	ND	\N	\N	\N
19083	19	-93.241669	42.3902079	16575	Hardin County	Iowa	IA	\N	\N	\N
21167	21	-84.8796946	37.8120852	21889	Mercer County	Kentucky	KY	\N	\N	\N
13259	13	-84.8349117	32.073225	6689	Stewart County	Georgia	GA	\N	\N	\N
29153	29	-92.4585492	36.6495904	9083	Ozark County	Missouri	MO	\N	\N	\N
48057	48	-96.5795739	28.4417191	21001	Calhoun County	Texas	TX	\N	\N	\N
30067	30	-110.5327601	45.4214291	16760	Park County	Montana	MT	\N	\N	\N
35005	35	-104.4698374	33.3616045	64711	Chaves County	New Mexico	NM	\N	\N	\N
28073	28	-89.5063691	31.1975865	64165	Lamar County	Mississippi	MS	\N	\N	\N
21079	21	-84.5458557	37.6301619	17719	Garrard County	Kentucky	KY	\N	\N	\N
39111	39	-81.0909834	39.7262526	13586	Monroe County	Ohio	OH	\N	\N	\N
26059	26	-84.6374794	41.9274606	45658	Hillsdale County	Michigan	MI	\N	\N	\N
21139	21	-88.3634261	37.2095174	9041	Livingston County	Kentucky	KY	\N	\N	\N
08097	08	-106.9161587	39.2175376	17894	Pitkin County	Colorado	CO	\N	\N	\N
17053	17	-88.2245882	40.5965386	12949	Ford County	Illinois	IL	\N	\N	\N
51580	51	-79.9854337	37.7810603	5639	Covington city	Virginia	VA	\N	\N	\N
21093	21	-85.9631827	37.6958356	111309	Hardin County	Kentucky	KY	\N	\N	\N
48093	48	-98.5496169	31.9516447	13750	Comanche County	Texas	TX	\N	\N	\N
05111	05	-90.6811037	35.5688702	23283	Poinsett County	Arkansas	AR	\N	\N	\N
51595	51	-77.5359753	36.696182	5257	Emporia city	Virginia	VA	\N	\N	\N
05103	05	-92.8784131	33.5911684	23167	Ouachita County	Arkansas	AR	\N	\N	\N
35035	35	-105.7513079	32.6155988	67967	Otero County	New Mexico	NM	\N	\N	\N
28011	28	-90.8841199	33.7991391	30142	Bolivar County	Mississippi	MS	\N	\N	\N
06005	06	-120.6538563	38.4435501	40083	Amador County	California	CA	\N	\N	\N
46019	46	-103.5014361	44.8962264	10538	Butte County	South Dakota	SD	\N	\N	\N
47097	47	-89.6277318	35.7629507	25451	Lauderdale County	Tennessee	TN	\N	\N	\N
48357	48	-100.8158636	36.2787442	9598	Ochiltree County	Texas	TX	\N	\N	\N
28133	28	-90.5950901	33.6055289	24740	Sunflower County	Mississippi	MS	\N	\N	\N
19087	19	-91.5472594	40.9848025	19697	Henry County	Iowa	IA	\N	\N	\N
50021	50	-73.0382023	43.5808577	57764	Rutland County	Vermont	VT	\N	\N	\N
21195	21	-82.410912	37.4860314	57057	Pike County	Kentucky	KY	\N	\N	\N
40081	40	-96.8813917	35.7031175	35045	Lincoln County	Oklahoma	OK	\N	\N	\N
48273	48	-97.6606203	27.4387348	30338	Kleberg County	Texas	TX	\N	\N	\N
48019	48	-99.2482849	29.756389	23861	Bandera County	Texas	TX	\N	\N	\N
53035	53	-122.6496339	47.6395948	272787	Kitsap County	Washington	WA	\N	\N	\N
17151	17	-88.5423737	37.4171687	4142	Pope County	Illinois	IL	\N	\N	\N
48117	48	-102.6075637	34.9407663	18277	Deaf Smith County	Texas	TX	\N	\N	\N
28149	28	-90.8523838	32.3560946	44841	Warren County	Mississippi	MS	\N	\N	\N
05081	05	-94.2297741	33.699497	12180	Little River County	Arkansas	AR	\N	\N	\N
05093	05	-90.0522072	35.7669437	40066	Mississippi County	Arkansas	AR	\N	\N	\N
22081	22	-93.3490504	32.1012125	8286	Red River Parish	Louisiana	LA	\N	\N	\N
45075	45	-80.8029131	33.436135	85343	Orangeburg County	South Carolina	SC	\N	\N	\N
19011	19	-92.05763	42.0925474	25414	Benton County	Iowa	IA	\N	\N	\N
28075	28	-88.6604487	32.4039981	73751	Lauderdale County	Mississippi	MS	\N	\N	\N
48499	48	-95.3821664	32.7835881	46291	Wood County	Texas	TX	\N	\N	\N
40141	40	-98.931701	34.3710852	7229	Tillman County	Oklahoma	OK	\N	\N	\N
48495	48	-103.0549246	31.8328615	7887	Winkler County	Texas	TX	\N	\N	\N
55021	55	-89.3304721	43.4718818	57668	Columbia County	Wisconsin	WI	\N	\N	\N
17147	17	-88.5923546	40.0090327	16355	Piatt County	Illinois	IL	\N	\N	\N
47159	47	-85.9419149	36.2566451	20285	Smith County	Tennessee	TN	\N	\N	\N
26007	26	-83.4265739	44.894954	28238	Alpena County	Michigan	MI	\N	\N	\N
13211	13	-83.4994346	33.5986956	19636	Morgan County	Georgia	GA	\N	\N	\N
51097	51	-76.9055814	37.7177719	6942	King and Queen County	Virginia	VA	\N	\N	\N
42047	42	-78.6539366	41.4273317	29607	Elk County	Pennsylvania	PA	\N	\N	\N
47059	47	-82.8475235	36.1794867	69571	Greene County	Tennessee	TN	\N	\N	\N
13085	13	-84.1732611	34.4426077	27113	Dawson County	Georgia	GA	\N	\N	\N
05073	05	-93.611514	33.2406294	6596	Lafayette County	Arkansas	AR	\N	\N	\N
17039	17	-88.9018526	40.1814993	15368	De Witt County	Illinois	IL	\N	\N	\N
18161	18	-84.9251523	39.6231109	7119	Union County	Indiana	IN	\N	\N	\N
18055	18	-87.0047712	39.0471466	32203	Greene County	Indiana	IN	\N	\N	\N
51167	51	-82.0959342	36.9334198	26647	Russell County	Virginia	VA	\N	\N	\N
13139	13	-83.8184997	34.3175689	206591	Hall County	Georgia	GA	\N	\N	\N
22007	22	-91.0524649	29.8988529	21621	Assumption Parish	Louisiana	LA	\N	\N	\N
12127	12	-81.161792	29.057769	561497	Volusia County	Florida	FL	\N	\N	\N
08041	08	-104.5274718	38.8273831	728310	El Paso County	Colorado	CO	\N	\N	\N
37161	37	-81.9195825	35.4027469	67076	Rutherford County	North Carolina	NC	\N	\N	\N
56031	56	-104.9539626	42.1315927	8578	Platte County	Wyoming	WY	\N	\N	\N
39019	39	-81.090787	40.5798841	26897	Carroll County	Ohio	OH	\N	\N	\N
29163	29	-91.1716071	39.3399592	17552	Pike County	Missouri	MO	\N	\N	\N
21011	21	-83.7376405	38.1522485	12481	Bath County	Kentucky	KY	\N	\N	\N
13000	13	\N	\N	\N	Georgia Unknown	Georgia	GA	\N	\N	\N
29083	29	-93.7926278	38.3864909	22076	Henry County	Missouri	MO	\N	\N	\N
05007	05	-94.2562984	36.3378189	288774	Benton County	Arkansas	AR	\N	\N	\N
41001	41	-117.6919334	44.7034268	16284	Baker County	Oregon	OR	\N	\N	\N
28099	28	-89.1192743	32.752518	28996	Neshoba County	Mississippi	MS	\N	\N	\N
13309	13	-82.7338492	32.105258	7751	Wheeler County	Georgia	GA	\N	\N	\N
08061	08	-102.7568494	38.387663	1458	Kiowa County	Colorado	CO	\N	\N	\N
47031	47	-86.0782018	35.4887654	57632	Coffee County	Tennessee	TN	\N	\N	\N
21031	21	-86.6824707	37.2070133	12703	Butler County	Kentucky	KY	\N	\N	\N
34025	34	-74.1524456	40.2870481	618381	Monmouth County	New Jersey	NJ	\N	\N	\N
31021	31	-96.3377462	41.8541794	6477	Burt County	Nebraska	NE	\N	\N	\N
38091	38	-97.71892	47.4510624	1890	Steele County	North Dakota	ND	\N	\N	\N
21051	21	-83.7154733	37.1642731	19631	Clay County	Kentucky	KY	\N	\N	\N
38023	38	-103.5093256	48.8147537	2277	Divide County	North Dakota	ND	\N	\N	\N
41065	41	-121.1650693	45.1645359	26403	Wasco County	Oregon	OR	\N	\N	\N
21115	21	-82.8301215	37.8477561	22002	Johnson County	Kentucky	KY	\N	\N	\N
06113	06	-121.9024413	38.6795955	219728	Yolo County	California	CA	\N	\N	\N
48399	48	-99.9827145	31.8451193	10401	Runnels County	Texas	TX	\N	\N	\N
29145	29	-94.335034	36.9083713	58451	Newton County	Missouri	MO	\N	\N	\N
26043	26	-87.8661227	46.0128246	25112	Dickinson County	Michigan	MI	\N	\N	\N
72061	72	-66.1140555	18.3443567	\N	Guaynabo Municipio	Puerto Rico	PR	\N	\N	\N
48239	48	-96.58908	28.9598019	14854	Jackson County	Texas	TX	\N	\N	\N
28155	28	-89.2839612	33.6120605	9676	Webster County	Mississippi	MS	\N	\N	\N
13149	13	-85.1378862	33.2913469	11973	Heard County	Georgia	GA	\N	\N	\N
08009	08	-102.5437412	37.3097802	3555	Baca County	Colorado	CO	\N	\N	\N
48433	48	-100.2538069	33.1795797	1348	Stonewall County	Texas	TX	\N	\N	\N
28025	28	-88.782468	33.65967	19352	Clay County	Mississippi	MS	\N	\N	\N
08083	08	-108.5957864	37.3380247	26408	Montezuma County	Colorado	CO	\N	\N	\N
48309	48	-97.2015108	31.5495958	259730	McLennan County	Texas	TX	\N	\N	\N
31115	31	-99.5098521	41.9031834	650	Loup County	Nebraska	NE	\N	\N	\N
27063	27	-95.1497314	43.671111	9768	Jackson County	Minnesota	MN	\N	\N	\N
72077	72	-65.9085417	18.2241334	\N	Juncos Municipio	Puerto Rico	PR	\N	\N	\N
45027	45	-80.2178886	33.6646821	33415	Clarendon County	South Carolina	SC	\N	\N	\N
29061	29	-93.970053	39.9628387	8283	Daviess County	Missouri	MO	\N	\N	\N
26101	26	-86.6029668	44.3503855	24738	Manistee County	Michigan	MI	\N	\N	\N
02164	02	-156.4134134	58.1085067	1493	Lake and Peninsula Borough	Alaska	AK	\N	\N	\N
48083	48	-99.3466223	31.9142052	8100	Coleman County	Texas	TX	\N	\N	\N
29085	29	-93.3229883	37.9369099	9586	Hickory County	Missouri	MO	\N	\N	\N
46085	46	-99.8419253	43.8948122	3797	Lyman County	South Dakota	SD	\N	\N	\N
39169	39	-81.8871942	40.8296612	115694	Wayne County	Ohio	OH	\N	\N	\N
36065	36	-75.4342824	43.2427273	227346	Oneida County	New York	NY	\N	\N	\N
46063	46	-103.4738711	45.5966105	1311	Harding County	South Dakota	SD	\N	\N	\N
19007	19	-92.873061	40.7442964	12430	Appanoose County	Iowa	IA	\N	\N	\N
39073	39	-82.4834473	39.4903424	28095	Hocking County	Ohio	OH	\N	\N	\N
12105	12	-81.6935337	27.9536488	744552	Polk County	Florida	FL	\N	\N	\N
19127	19	-92.9814523	42.041691	39495	Marshall County	Iowa	IA	\N	\N	\N
53021	53	-118.9069436	46.5345799	97075	Franklin County	Washington	WA	\N	\N	\N
40091	40	-95.6717865	35.3691078	19635	McIntosh County	Oklahoma	OK	\N	\N	\N
19137	19	-95.1577896	41.0217348	9935	Montgomery County	Iowa	IA	\N	\N	\N
13163	13	-82.4200036	33.0581756	15267	Jefferson County	Georgia	GA	\N	\N	\N
08125	08	-102.4216491	40.0007703	10047	Yuma County	Colorado	CO	\N	\N	\N
48103	48	-102.4877739	31.4227965	4765	Crane County	Texas	TX	\N	\N	\N
17121	17	-88.9203624	38.6482361	37045	Marion County	Illinois	IL	\N	\N	\N
33003	33	-71.2015596	43.8677742	49167	Carroll County	New Hampshire	NH	\N	\N	\N
30099	30	-112.2817249	47.8190352	6249	Teton County	Montana	MT	\N	\N	\N
27135	27	-95.8215042	48.7610683	15117	Roseau County	Minnesota	MN	\N	\N	\N
54053	54	-82.0290067	38.770914	26335	Mason County	West Virginia	WV	\N	\N	\N
47103	47	-86.5934033	35.1427838	34540	Lincoln County	Tennessee	TN	\N	\N	\N
47139	47	-84.5411124	35.1094371	16835	Polk County	Tennessee	TN	\N	\N	\N
17171	17	-90.4777707	39.6370016	4950	Scott County	Illinois	IL	\N	\N	\N
21043	21	-83.0487958	38.3095486	26542	Carter County	Kentucky	KY	\N	\N	\N
46013	46	-98.3521746	45.5892542	38738	Brown County	South Dakota	SD	\N	\N	\N
31075	31	-101.7559645	41.9139574	630	Grant County	Nebraska	NE	\N	\N	\N
49041	49	-111.8119299	38.7468245	21780	Sevier County	Utah	UT	\N	\N	\N
15000	15	\N	\N	\N	Hawaii Unknown	Hawaii	HI	\N	\N	\N
72003	72	-67.1837074	18.3756809	\N	Aguada Municipio	Puerto Rico	PR	\N	\N	\N
12027	12	-81.8062531	27.1905809	38520	DeSoto County	Florida	FL	\N	\N	\N
53065	53	-117.8544544	48.388727	46360	Stevens County	Washington	WA	\N	\N	\N
27101	27	-95.7615809	44.0155943	8155	Murray County	Minnesota	MN	\N	\N	\N
45031	45	-79.9621155	34.3321854	66509	Darlington County	South Carolina	SC	\N	\N	\N
12083	12	-82.0431004	29.2028047	373513	Marion County	Florida	FL	\N	\N	\N
51045	51	-80.2310507	37.4736031	5077	Craig County	Virginia	VA	\N	\N	\N
48047	48	-98.2152756	27.0349936	6964	Brooks County	Texas	TX	\N	\N	\N
21021	21	-84.8683523	37.6181043	30367	Boyle County	Kentucky	KY	\N	\N	\N
39105	39	-82.0283968	39.0898068	22678	Meigs County	Ohio	OH	\N	\N	\N
35013	35	-106.8349684	32.349919	221262	Doña Ana County	New Mexico	NM	\N	\N	\N
26053	26	-89.806863	46.461513	13842	Gogebic County	Michigan	MI	\N	\N	\N
28069	28	-88.6256306	32.7501361	9521	Kemper County	Mississippi	MS	\N	\N	\N
24039	24	-75.8533228	38.0744501	25453	Somerset County	Maryland	MD	\N	\N	\N
13071	13	-83.769773	31.1897075	45542	Colquitt County	Georgia	GA	\N	\N	\N
54065	54	-78.2573449	39.5550021	17873	Morgan County	West Virginia	WV	\N	\N	\N
48167	48	-94.8884558	29.233453	345089	Galveston County	Texas	TX	\N	\N	\N
19027	19	-94.8676471	42.039492	19914	Carroll County	Iowa	IA	\N	\N	\N
35017	35	-108.3815043	32.732087	27007	Grant County	New Mexico	NM	\N	\N	\N
39159	39	-83.3670416	40.2959008	60021	Union County	Ohio	OH	\N	\N	\N
54033	54	-80.3864982	39.279182	66870	Harrison County	West Virginia	WV	\N	\N	\N
27027	27	-96.4949007	46.8983772	64690	Clay County	Minnesota	MN	\N	\N	\N
29229	29	-92.479989	37.2676331	18325	Wright County	Missouri	MO	\N	\N	\N
49023	49	-112.790471	39.71412	12122	Juab County	Utah	UT	\N	\N	\N
42113	42	-76.5117166	41.4392848	5913	Sullivan County	Pennsylvania	PA	\N	\N	\N
37015	37	-76.9623641	36.0590432	18712	Bertie County	North Carolina	NC	\N	\N	\N
40085	40	-97.2450928	33.9578039	10230	Love County	Oklahoma	OK	\N	\N	\N
05051	05	-93.1469323	34.5788523	99789	Garland County	Arkansas	AR	\N	\N	\N
48025	48	-97.7425858	28.4160769	32513	Bee County	Texas	TX	\N	\N	\N
39069	39	-84.0688996	41.3315843	26904	Henry County	Ohio	OH	\N	\N	\N
30061	30	-115.0656272	47.1519417	4544	Mineral County	Montana	MT	\N	\N	\N
54049	54	-80.2434018	39.5058387	55962	Marion County	West Virginia	WV	\N	\N	\N
19129	19	-95.619101	41.0337028	14766	Mills County	Iowa	IA	\N	\N	\N
46057	46	-97.178598	44.6806187	6234	Hamlin County	South Dakota	SD	\N	\N	\N
18075	18	-85.0023313	40.434956	20416	Jay County	Indiana	IN	\N	\N	\N
36027	36	-73.7400411	41.7547699	293293	Dutchess County	New York	NY	\N	\N	\N
51117	51	-78.3689592	36.6872563	30679	Mecklenburg County	Virginia	VA	\N	\N	\N
26153	26	-86.197029	46.0211217	8104	Schoolcraft County	Michigan	MI	\N	\N	\N
51143	51	-79.3985019	36.8217206	59850	Pittsylvania County	Virginia	VA	\N	\N	\N
30055	30	-105.757222	47.6296277	1648	McCone County	Montana	MT	\N	\N	\N
55137	55	-89.2397862	44.1128231	24326	Waushara County	Wisconsin	WI	\N	\N	\N
56021	56	-104.660395	41.2928302	100595	Laramie County	Wyoming	WY	\N	\N	\N
13305	13	-81.9123763	31.5478449	30023	Wayne County	Georgia	GA	\N	\N	\N
36033	36	-74.31067	44.5943758	49965	Franklin County	New York	NY	\N	\N	\N
28093	28	-89.504231	34.7661897	35301	Marshall County	Mississippi	MS	\N	\N	\N
18181	18	-86.8642934	40.7509496	24165	White County	Indiana	IN	\N	\N	\N
27089	27	-96.357761	48.3627284	9321	Marshall County	Minnesota	MN	\N	\N	\N
30057	30	-111.9137914	45.3252895	8959	Madison County	Montana	MT	\N	\N	\N
26129	26	-84.1280728	44.3332801	20923	Ogemaw County	Michigan	MI	\N	\N	\N
78030	78	-64.9712508	18.326748	\N	St. Thomas Island	U.S. Virgin Islands	VI	\N	\N	\N
06089	06	-122.0435556	40.7605142	179027	Shasta County	California	CA	\N	\N	\N
29179	29	-90.9722821	37.3664637	6198	Reynolds County	Missouri	MO	\N	\N	\N
47175	47	-85.4584092	35.6992335	5947	Van Buren County	Tennessee	TN	\N	\N	\N
17149	17	-90.8890344	39.6251059	15239	Pike County	Illinois	IL	\N	\N	\N
13033	13	-82.0001638	33.0601805	22648	Burke County	Georgia	GA	\N	\N	\N
48321	48	-96.0015316	28.7747601	36725	Matagorda County	Texas	TX	\N	\N	\N
21219	21	-87.1836416	36.8403384	12448	Todd County	Kentucky	KY	\N	\N	\N
35028	35	-106.3079679	35.8700469	19462	Los Alamos County	New Mexico	NM	\N	\N	\N
54019	54	-81.0860508	38.0309328	42062	Fayette County	West Virginia	WV	\N	\N	\N
31001	31	-98.5000441	40.5206322	31321	Adams County	Nebraska	NE	\N	\N	\N
31061	31	-98.96208	40.1832031	2940	Franklin County	Nebraska	NE	\N	\N	\N
20057	20	-99.8847484	37.6884159	33094	Ford County	Kansas	KS	\N	\N	\N
32009	32	-117.6323824	37.7789658	886	Esmeralda County	Nevada	NV	\N	\N	\N
02188	02	-160.0210864	67.0050655	7644	Northwest Arctic Borough	Alaska	AK	\N	\N	\N
29089	29	-92.6959255	39.143365	10001	Howard County	Missouri	MO	\N	\N	\N
29131	29	-92.4298762	38.2166802	25791	Miller County	Missouri	MO	\N	\N	\N
21001	21	-85.2813796	37.1055589	19555	Adair County	Kentucky	KY	\N	\N	\N
26039	26	-84.6113432	44.6801748	13981	Crawford County	Michigan	MI	\N	\N	\N
28031	28	-89.5488968	31.633331	18518	Covington County	Mississippi	MS	\N	\N	\N
16021	16	-116.5246676	48.7731313	12656	Boundary County	Idaho	ID	\N	\N	\N
48299	48	-98.6846901	30.7075845	21958	Llano County	Texas	TX	\N	\N	\N
45047	45	-82.1278759	34.1557959	71074	Greenwood County	South Carolina	SC	\N	\N	\N
30091	30	-104.5339129	48.7055228	3261	Sheridan County	Montana	MT	\N	\N	\N
19185	19	-93.3326126	40.7399827	6415	Wayne County	Iowa	IA	\N	\N	\N
19171	19	-92.5294115	42.074848	16801	Tama County	Iowa	IA	\N	\N	\N
53037	53	-120.6767092	47.1244411	49204	Kittitas County	Washington	WA	\N	\N	\N
53063	53	-117.4033714	47.6203752	528225	Spokane County	Washington	WA	\N	\N	\N
48463	48	-99.768427	29.3503081	26742	Uvalde County	Texas	TX	\N	\N	\N
39171	39	-84.5843235	41.5649587	36565	Williams County	Ohio	OH	\N	\N	\N
55063	55	-91.1117584	43.9082222	118502	La Crosse County	Wisconsin	WI	\N	\N	\N
16065	16	-111.6569925	43.788614	40318	Madison County	Idaho	ID	\N	\N	\N
18103	18	-86.0442575	40.7728833	35328	Miami County	Indiana	IN	\N	\N	\N
72019	72	-66.3092822	18.2000184	\N	Barranquitas Municipio	Puerto Rico	PR	\N	\N	\N
40023	40	-95.5542077	34.0276453	14646	Choctaw County	Oklahoma	OK	\N	\N	\N
51147	51	-78.4329574	37.2248813	23006	Prince Edward County	Virginia	VA	\N	\N	\N
05083	05	-93.7209102	35.2186538	21410	Logan County	Arkansas	AR	\N	\N	\N
21071	21	-82.7397239	37.552456	34974	Floyd County	Kentucky	KY	\N	\N	\N
55033	55	-91.8976451	44.9477513	45452	Dunn County	Wisconsin	WI	\N	\N	\N
31015	31	-98.7730221	42.8944477	1860	Boyd County	Nebraska	NE	\N	\N	\N
31045	31	-103.1348721	42.7112144	8361	Dawes County	Nebraska	NE	\N	\N	\N
19141	19	-95.6256244	43.0837455	13679	O'Brien County	Iowa	IA	\N	\N	\N
54023	54	-79.195064	39.1059882	11510	Grant County	West Virginia	WV	\N	\N	\N
37165	37	-79.4773366	34.8400226	34637	Scotland County	North Carolina	NC	\N	\N	\N
20093	20	-101.3081363	37.9944614	3745	Kearny County	Kansas	KS	\N	\N	\N
39009	39	-82.0458439	39.3326037	65481	Athens County	Ohio	OH	\N	\N	\N
22011	22	-93.3402526	30.6450184	37881	Beauregard Parish	Louisiana	LA	\N	\N	\N
35006	35	-107.9926805	34.9282721	26354	Cibola County	New Mexico	NM	\N	\N	\N
48137	48	-100.3073732	29.9858774	1923	Edwards County	Texas	TX	\N	\N	\N
29203	29	-91.3913284	37.1524984	8203	Shannon County	Missouri	MO	\N	\N	\N
21045	21	-84.9282195	37.3219623	16066	Casey County	Kentucky	KY	\N	\N	\N
02275	02	-132.343978	56.317416	2510	Wrangell City and Borough	Alaska	AK	\N	\N	\N
22069	22	-93.0826114	31.7325509	37655	Natchitoches Parish	Louisiana	LA	\N	\N	\N
47137	47	-85.075741	36.5593638	5061	Pickett County	Tennessee	TN	\N	\N	\N
50019	50	-72.25163	44.8284417	26897	Orleans County	Vermont	VT	\N	\N	\N
19013	19	-92.3076003	42.4711317	130786	Black Hawk County	Iowa	IA	\N	\N	\N
54031	54	-78.8417292	39.0113612	13633	Hardy County	West Virginia	WV	\N	\N	\N
16073	16	-116.1896903	42.5728508	12133	Owyhee County	Idaho	ID	\N	\N	\N
42089	42	-75.3290651	41.0562401	170154	Monroe County	Pennsylvania	PA	\N	\N	\N
21197	21	-83.8313543	37.8099073	12218	Powell County	Kentucky	KY	\N	\N	\N
19125	19	-93.093849	41.3314552	33168	Marion County	Iowa	IA	\N	\N	\N
21109	21	-84.0205757	37.4034585	13340	Jackson County	Kentucky	KY	\N	\N	\N
31183	31	-98.5208533	41.9225747	790	Wheeler County	Nebraska	NE	\N	\N	\N
38067	38	-97.5454045	48.7668959	6658	Pembina County	North Dakota	ND	\N	\N	\N
23013	23	-69.0385145	44.0420446	39951	Knox County	Maine	ME	\N	\N	\N
21215	21	-85.3171741	38.0254107	19585	Spencer County	Kentucky	KY	\N	\N	\N
21003	21	-86.192458	36.7507703	21303	Allen County	Kentucky	KY	\N	\N	\N
08045	08	-107.9097802	39.5993517	60366	Garfield County	Colorado	CO	\N	\N	\N
42107	42	-76.2177878	40.703682	140709	Schuylkill County	Pennsylvania	PA	\N	\N	\N
01025	01	-87.8186244	31.6855211	23291	Clarke County	Alabama	AL	\N	\N	\N
29067	29	-92.5158918	36.9465168	13344	Douglas County	Missouri	MO	\N	\N	\N
41041	41	-123.9112121	44.6410607	50583	Lincoln County	Oregon	OR	\N	\N	\N
13315	13	-83.4382586	31.9627199	8502	Wilcox County	Georgia	GA	\N	\N	\N
30059	30	-110.9217396	46.5856996	1831	Meagher County	Montana	MT	\N	\N	\N
36041	36	-74.5024556	43.6578786	4345	Hamilton County	New York	NY	\N	\N	\N
17165	17	-88.5450236	37.7515083	23182	Saline County	Illinois	IL	\N	\N	\N
05099	05	-93.3050716	33.6666991	8099	Nevada County	Arkansas	AR	\N	\N	\N
53067	53	-122.8301524	46.9358216	294074	Thurston County	Washington	WA	\N	\N	\N
37085	37	-78.8716104	35.3686348	137058	Harnett County	North Carolina	NC	\N	\N	\N
37077	37	-78.6576338	36.299884	60486	Granville County	North Carolina	NC	\N	\N	\N
31073	31	-99.8232058	40.5090947	1986	Gosper County	Nebraska	NE	\N	\N	\N
48327	48	-99.8588613	30.8852677	2124	Menard County	Texas	TX	\N	\N	\N
13091	13	-83.1678658	32.164369	20452	Dodge County	Georgia	GA	\N	\N	\N
37111	37	-82.0480438	35.6822711	45782	McDowell County	North Carolina	NC	\N	\N	\N
18119	18	-86.8388453	39.3173394	20833	Owen County	Indiana	IN	\N	\N	\N
48127	48	-99.7658713	28.4235871	9925	Dimmit County	Texas	TX	\N	\N	\N
20169	20	-97.6514783	38.7918043	53926	Saline County	Kansas	KS	\N	\N	\N
46015	46	-99.092909	43.7298732	5254	Brule County	South Dakota	SD	\N	\N	\N
13265	13	-82.8752721	33.559319	1562	Taliaferro County	Georgia	GA	\N	\N	\N
51000	51	\N	\N	\N	Virginia Unknown	Virginia	VA	\N	\N	\N
72031	72	-65.9687781	18.3967757	\N	Carolina Municipio	Puerto Rico	PR	\N	\N	\N
47055	47	-87.035319	35.2027228	29530	Giles County	Tennessee	TN	\N	\N	\N
69000	69	\N	\N	\N	Northern Mariana Islands Unknown	Northern Mariana Islands	MP	\N	\N	\N
31000	31	\N	\N	\N	Nebraska Unknown	Nebraska	NE	\N	\N	\N
27137	27	-92.51457	47.578635	198538	St. Louis County	Minnesota	MN	\N	\N	\N
46137	46	-101.6608274	44.9897638	2656	Ziebach County	South Dakota	SD	\N	\N	\N
31165	31	-103.7321705	42.4706681	1200	Sioux County	Nebraska	NE	\N	\N	\N
41047	41	-122.5762602	44.9008984	349204	Marion County	Oregon	OR	\N	\N	\N
19059	19	-95.1960572	43.3896107	17549	Dickinson County	Iowa	IA	\N	\N	\N
37055	37	-75.7675364	35.6062688	37547	Dare County	North Carolina	NC	\N	\N	\N
48243	48	-104.191873	30.6253574	2220	Jeff Davis County	Texas	TX	\N	\N	\N
23011	23	-69.7657639	44.4170119	122955	Kennebec County	Maine	ME	\N	\N	\N
48505	48	-99.1826027	26.9969806	14172	Zapata County	Texas	TX	\N	\N	\N
37131	37	-77.3983518	36.4217739	19088	Northampton County	North Carolina	NC	\N	\N	\N
24041	24	-76.1784757	38.7483486	36972	Talbot County	Maryland	MD	\N	\N	\N
28123	28	-89.5334861	32.4119595	28061	Scott County	Mississippi	MS	\N	\N	\N
30103	30	-107.2857723	46.2294408	695	Treasure County	Montana	MT	\N	\N	\N
20183	20	-98.7854295	39.7846603	3544	Smith County	Kansas	KS	\N	\N	\N
26035	26	-84.8383253	43.9911368	30771	Clare County	Michigan	MI	\N	\N	\N
55017	55	-91.2835054	45.0690918	64737	Chippewa County	Wisconsin	WI	\N	\N	\N
39043	39	-82.5258973	41.5540061	73719	Erie County	Ohio	OH	\N	\N	\N
16049	16	-115.4673371	45.849644	16823	Idaho County	Idaho	ID	\N	\N	\N
19193	19	-96.0532956	42.3932198	103138	Woodbury County	Iowa	IA	\N	\N	\N
13239	13	-85.0047978	31.8629381	2271	Quitman County	Georgia	GA	\N	\N	\N
13131	13	-84.2450803	30.8759076	24491	Grady County	Georgia	GA	\N	\N	\N
29171	29	-93.0145314	40.4786055	4688	Putnam County	Missouri	MO	\N	\N	\N
26165	26	-85.5700462	44.3313751	33743	Wexford County	Michigan	MI	\N	\N	\N
13165	13	-81.9715244	32.7945631	8746	Jenkins County	Georgia	GA	\N	\N	\N
19033	19	-93.2509646	43.0749751	42103	Cerro Gordo County	Iowa	IA	\N	\N	\N
13171	13	-84.1466893	33.0744405	19261	Lamar County	Georgia	GA	\N	\N	\N
31163	31	-98.9728492	41.2187425	2986	Sherman County	Nebraska	NE	\N	\N	\N
30083	30	-104.5634082	47.785633	11043	Richland County	Montana	MT	\N	\N	\N
50017	50	-72.3696871	44.0033924	28837	Orange County	Vermont	VT	\N	\N	\N
21053	21	-85.1360977	36.7272577	10110	Clinton County	Kentucky	KY	\N	\N	\N
13055	13	-85.3452894	34.4741785	24843	Chattooga County	Georgia	GA	\N	\N	\N
04011	04	-109.2423231	33.2388723	9341	Greenlee County	Arizona	AZ	\N	\N	\N
05047	05	-93.8876647	35.5085579	17897	Franklin County	Arkansas	AR	\N	\N	\N
40111	40	-95.9659468	35.6435003	38234	Okmulgee County	Oklahoma	OK	\N	\N	\N
06101	06	-121.7039397	39.0361898	96385	Sutter County	California	CA	\N	\N	\N
27119	27	-96.4000265	47.7742536	30900	Polk County	Minnesota	MN	\N	\N	\N
48135	48	-102.5425068	31.8653008	167701	Ector County	Texas	TX	\N	\N	\N
45023	45	-81.1612488	34.6893424	32232	Chester County	South Carolina	SC	\N	\N	\N
20153	20	-101.0767378	39.7861975	2511	Rawlins County	Kansas	KS	\N	\N	\N
28135	28	-90.1722434	33.9545292	13707	Tallahatchie County	Mississippi	MS	\N	\N	\N
21073	21	-84.8687863	38.234919	51118	Franklin County	Kentucky	KY	\N	\N	\N
05131	05	-94.2749889	35.1969808	127590	Sebastian County	Arkansas	AR	\N	\N	\N
13093	13	-83.807167	32.1519954	13174	Dooly County	Georgia	GA	\N	\N	\N
19043	19	-91.3235764	42.8409849	17321	Clayton County	Iowa	IA	\N	\N	\N
28139	28	-88.9188185	34.7636183	21748	Tippah County	Mississippi	MS	\N	\N	\N
05005	05	-92.3299488	36.2802684	42242	Baxter County	Arkansas	AR	\N	\N	\N
12041	12	-82.7958011	29.7234556	18885	Gilchrist County	Florida	FL	\N	\N	\N
48457	48	-94.3756561	30.7692953	21591	Tyler County	Texas	TX	\N	\N	\N
20133	20	-95.3156822	37.5642832	15929	Neosho County	Kansas	KS	\N	\N	\N
29227	29	-94.4191982	40.4804994	1953	Worth County	Missouri	MO	\N	\N	\N
72071	72	-67.0141381	18.4838703	\N	Isabela Municipio	Puerto Rico	PR	\N	\N	\N
21123	21	-85.6968413	37.5444624	14431	Larue County	Kentucky	KY	\N	\N	\N
53057	53	-121.8157703	48.4932917	130789	Skagit County	Washington	WA	\N	\N	\N
19039	19	-93.7840961	41.0291908	9353	Clarke County	Iowa	IA	\N	\N	\N
37191	37	-78.0086695	35.3541896	123967	Wayne County	North Carolina	NC	\N	\N	\N
18113	18	-85.4172708	41.4046794	47832	Noble County	Indiana	IN	\N	\N	\N
21013	21	-83.680718	36.7289281	25482	Bell County	Kentucky	KY	\N	\N	\N
04000	04	\N	\N	\N	Arizona Unknown	Arizona	AZ	\N	\N	\N
04007	04	-110.8118696	33.7896177	54303	Gila County	Arizona	AZ	\N	\N	\N
31023	31	-97.1320395	41.2260724	7960	Butler County	Nebraska	NE	\N	\N	\N
30043	30	-112.0594284	46.1242317	12360	Jefferson County	Montana	MT	\N	\N	\N
01033	01	-87.8014569	34.703112	55411	Colbert County	Alabama	AL	\N	\N	\N
01103	01	-86.8464021	34.4544844	119883	Morgan County	Alabama	AL	\N	\N	\N
13287	13	-83.6203195	31.7248005	7882	Turner County	Georgia	GA	\N	\N	\N
42023	42	-78.1983225	41.4382909	4330	Cameron County	Pennsylvania	PA	\N	\N	\N
37087	37	-82.9813074	35.5588823	62972	Haywood County	North Carolina	NC	\N	\N	\N
48013	48	-98.535381	28.8914775	51724	Atascosa County	Texas	TX	\N	\N	\N
72101	72	-66.4205568	18.3190261	\N	Morovis Municipio	Puerto Rico	PR	\N	\N	\N
19117	19	-93.3314666	41.033344	8518	Lucas County	Iowa	IA	\N	\N	\N
51185	51	-81.5629237	37.1253949	40529	Tazewell County	Virginia	VA	\N	\N	\N
13147	13	-82.96329	34.3487328	26406	Hart County	Georgia	GA	\N	\N	\N
39079	39	-82.614142	39.0134773	32493	Jackson County	Ohio	OH	\N	\N	\N
21221	21	-87.8586515	36.8076808	14776	Trigg County	Kentucky	KY	\N	\N	\N
19159	19	-94.2442514	40.7353342	4801	Ringgold County	Iowa	IA	\N	\N	\N
38049	38	-100.6332668	48.2338417	5695	McHenry County	North Dakota	ND	\N	\N	\N
31167	31	-97.1771094	41.9050454	5880	Stanton County	Nebraska	NE	\N	\N	\N
49013	49	-110.4295838	40.2893927	19894	Duchesne County	Utah	UT	\N	\N	\N
26135	26	-84.1269054	44.6872574	8368	Oscoda County	Michigan	MI	\N	\N	\N
12011	12	-80.4766834	26.1935353	1958105	Broward County	Florida	FL	\N	\N	\N
48015	48	-96.2701696	29.8919013	29972	Austin County	Texas	TX	\N	\N	\N
05101	05	-93.2158984	35.9107423	7602	Newton County	Arkansas	AR	\N	\N	\N
35007	35	-104.6401105	36.6129638	11927	Colfax County	New Mexico	NM	\N	\N	\N
48507	48	-99.7598304	28.8646523	11840	Zavala County	Texas	TX	\N	\N	\N
32013	32	-118.1275915	41.4079136	16962	Humboldt County	Nevada	NV	\N	\N	\N
55083	55	-88.2065162	44.9965754	38383	Oconto County	Wisconsin	WI	\N	\N	\N
08099	08	-102.3921613	37.9581814	12106	Prowers County	Colorado	CO	\N	\N	\N
18037	18	-86.8733845	38.3733441	42542	Dubois County	Indiana	IN	\N	\N	\N
40153	40	-99.2736609	36.4256189	19812	Woodward County	Oklahoma	OK	\N	\N	\N
26027	26	-86.000142	41.9172431	51584	Cass County	Michigan	MI	\N	\N	\N
21061	21	-86.2180153	37.2275136	12235	Edmonson County	Kentucky	KY	\N	\N	\N
41057	41	-123.7592988	45.4558895	27442	Tillamook County	Oregon	OR	\N	\N	\N
28019	28	-89.2513319	33.3459638	8063	Choctaw County	Mississippi	MS	\N	\N	\N
37137	37	-76.6652684	35.1475747	12715	Pamlico County	North Carolina	NC	\N	\N	\N
06073	06	-116.7761174	33.0236041	3332427	San Diego County	California	CA	\N	\N	\N
18159	18	-86.0562066	40.3102294	15227	Tipton County	Indiana	IN	\N	\N	\N
32000	32	\N	\N	\N	Nevada Unknown	Nevada	NV	\N	\N	\N
27117	27	-96.2570147	44.0153614	9121	Pipestone County	Minnesota	MN	\N	\N	\N
17081	17	-88.92421	38.3007796	37235	Jefferson County	Illinois	IL	\N	\N	\N
27017	27	-92.6710435	46.6038184	35769	Carlton County	Minnesota	MN	\N	\N	\N
16079	16	-115.8850916	47.3476935	12911	Shoshone County	Idaho	ID	\N	\N	\N
26051	26	-84.3898162	43.9897504	25424	Gladwin County	Michigan	MI	\N	\N	\N
31125	31	-97.9914083	41.4023855	3532	Nance County	Nebraska	NE	\N	\N	\N
39053	39	-82.3017463	38.8170456	29802	Gallia County	Ohio	OH	\N	\N	\N
72023	72	-67.2098839	18.0088725	\N	Cabo Rojo Municipio	Puerto Rico	PR	\N	\N	\N
37155	37	-79.1008811	34.6392096	129999	Robeson County	North Carolina	NC	\N	\N	\N
13079	13	-83.9791874	32.7094283	12231	Crawford County	Georgia	GA	\N	\N	\N
72139	72	-66.0037874	18.3353871	\N	Trujillo Alto Municipio	Puerto Rico	PR	\N	\N	\N
55047	55	-88.9703796	43.7802469	18908	Green Lake County	Wisconsin	WI	\N	\N	\N
29197	29	-92.5190156	40.4693611	4534	Schuyler County	Missouri	MO	\N	\N	\N
08119	08	-105.1873651	38.8699759	25529	Teller County	Colorado	CO	\N	\N	\N
48383	48	-101.5143954	31.3751911	3833	Reagan County	Texas	TX	\N	\N	\N
48403	48	-93.8519129	31.3432997	10507	Sabine County	Texas	TX	\N	\N	\N
27129	27	-94.9556169	44.7236969	14403	Renville County	Minnesota	MN	\N	\N	\N
30037	30	-109.1745855	46.3806243	827	Golden Valley County	Montana	MT	\N	\N	\N
06047	06	-120.7228019	37.1948063	279252	Merced County	California	CA	\N	\N	\N
29011	29	-94.3440893	37.5007989	11592	Barton County	Missouri	MO	\N	\N	\N
28067	28	-89.1685317	31.6166011	67993	Jones County	Mississippi	MS	\N	\N	\N
13279	13	-82.3306257	32.1178118	26973	Toombs County	Georgia	GA	\N	\N	\N
19003	19	-94.6969059	41.0216555	3588	Adams County	Iowa	IA	\N	\N	\N
35039	35	-106.6939829	36.5096687	38521	Rio Arriba County	New Mexico	NM	\N	\N	\N
16009	16	-116.6335414	47.2184513	9430	Benewah County	Idaho	ID	\N	\N	\N
40003	40	-98.3234449	36.7297032	5718	Alfalfa County	Oklahoma	OK	\N	\N	\N
01091	01	-87.791091	32.2475911	18733	Marengo County	Alabama	AL	\N	\N	\N
48413	48	-100.5272161	30.8962331	2761	Schleicher County	Texas	TX	\N	\N	\N
19167	19	-96.1780098	43.082646	35043	Sioux County	Iowa	IA	\N	\N	\N
31049	31	-102.332609	41.1119026	1793	Deuel County	Nebraska	NE	\N	\N	\N
47035	47	-84.9947614	35.9523984	61603	Cumberland County	Tennessee	TN	\N	\N	\N
46123	46	-99.8762186	43.3497292	5377	Tripp County	South Dakota	SD	\N	\N	\N
47011	47	-84.8594137	35.1539144	109071	Bradley County	Tennessee	TN	\N	\N	\N
48215	48	-98.18099	26.3963839	875200	Hidalgo County	Texas	TX	\N	\N	\N
22049	22	-92.5616997	32.3042901	15574	Jackson Parish	Louisiana	LA	\N	\N	\N
48353	48	-100.4181078	32.3123379	14835	Nolan County	Texas	TX	\N	\N	\N
46111	46	-98.0917093	44.0189419	2322	Sanborn County	South Dakota	SD	\N	\N	\N
31071	31	-98.951231	41.9068675	1956	Garfield County	Nebraska	NE	\N	\N	\N
29217	29	-94.3415972	37.8501957	20388	Vernon County	Missouri	MO	\N	\N	\N
02105	02	-136.3207314	58.2534617	2141	Hoonah-Angoon Census Area	Alaska	AK	\N	\N	\N
27039	27	-92.8693529	44.0207056	20987	Dodge County	Minnesota	MN	\N	\N	\N
29175	29	-92.4929595	39.4392486	24409	Randolph County	Missouri	MO	\N	\N	\N
06023	06	-123.9261757	40.7066554	134977	Humboldt County	California	CA	\N	\N	\N
30009	30	-109.0285543	45.2244683	10921	Carbon County	Montana	MT	\N	\N	\N
18005	18	-85.8979988	39.205843	84447	Bartholomew County	Indiana	IN	\N	\N	\N
20191	20	-97.4933519	37.2366617	22578	Sumner County	Kansas	KS	\N	\N	\N
72000	72	\N	\N	\N	Puerto Rico Unknown	Puerto Rico	PR	\N	\N	\N
42049	42	-80.0963858	42.1179519	268426	Erie County	Pennsylvania	PA	\N	\N	\N
51103	51	-76.4126628	37.7048433	10618	Lancaster County	Virginia	VA	\N	\N	\N
20019	20	-96.2453962	37.1542592	3230	Chautauqua County	Kansas	KS	\N	\N	\N
48277	48	-95.5703477	33.6672628	49905	Lamar County	Texas	TX	\N	\N	\N
40021	40	-94.9967964	35.9043668	49019	Cherokee County	Oklahoma	OK	\N	\N	\N
24011	24	-75.831662	38.8715306	33492	Caroline County	Maryland	MD	\N	\N	\N
17019	17	-88.1969749	40.1389845	209192	Champaign County	Illinois	IL	\N	\N	\N
01053	01	-87.1684097	31.1222867	36281	Escambia County	Alabama	AL	\N	\N	\N
18133	18	-86.8533729	39.6655479	37469	Putnam County	Indiana	IN	\N	\N	\N
42055	42	-77.7245208	39.9267722	155637	Franklin County	Pennsylvania	PA	\N	\N	\N
01037	01	-86.2434818	32.9314453	10650	Coosa County	Alabama	AL	\N	\N	\N
32011	32	-116.2722082	39.9777878	2065	Eureka County	Nevada	NV	\N	\N	\N
01071	01	-85.9800556	34.764114	51582	Jackson County	Alabama	AL	\N	\N	\N
48069	48	-102.2587856	34.5336207	7396	Castro County	Texas	TX	\N	\N	\N
72137	72	-66.1931933	18.45691	\N	Toa Baja Municipio	Puerto Rico	PR	\N	\N	\N
37195	37	-77.9215978	35.7003569	81979	Wilson County	North Carolina	NC	\N	\N	\N
13069	13	-82.8449401	31.5492452	43218	Coffee County	Georgia	GA	\N	\N	\N
38061	38	-102.3648952	48.2100726	10502	Mountrail County	North Dakota	ND	\N	\N	\N
20063	20	-100.4873598	38.9172385	2621	Gove County	Kansas	KS	\N	\N	\N
17103	17	-89.2993616	41.7474465	33647	Lee County	Illinois	IL	\N	\N	\N
51137	51	-78.0096224	38.250193	37695	Orange County	Virginia	VA	\N	\N	\N
05013	05	-92.513879	33.5604604	5113	Calhoun County	Arkansas	AR	\N	\N	\N
27073	27	-96.176836	44.9998559	6527	Lac qui Parle County	Minnesota	MN	\N	\N	\N
27013	27	-94.0640122	44.0337104	68241	Blue Earth County	Minnesota	MN	\N	\N	\N
53000	53	\N	\N	\N	Washington Unknown	Washington	WA	\N	\N	\N
17059	17	-88.2279642	37.7686768	4793	Gallatin County	Illinois	IL	\N	\N	\N
01085	01	-86.6505859	32.147888	9641	Lowndes County	Alabama	AL	\N	\N	\N
40049	40	-97.312723	34.7093497	27691	Garvin County	Oklahoma	OK	\N	\N	\N
18025	18	-86.4408711	38.2894327	10629	Crawford County	Indiana	IN	\N	\N	\N
08014	08	-105.0507868	39.9535933	72236	Broomfield County	Colorado	CO	\N	\N	\N
19019	19	-91.8386658	42.4703284	21287	Buchanan County	Iowa	IA	\N	\N	\N
13185	13	-83.2689952	30.833145	118268	Lowndes County	Georgia	GA	\N	\N	\N
08013	08	-105.3976911	40.0949699	327171	Boulder County	Colorado	CO	\N	\N	\N
20125	20	-95.7424028	37.1895369	31502	Montgomery County	Kansas	KS	\N	\N	\N
55069	55	-89.7423088	45.3384167	27566	Lincoln County	Wisconsin	WI	\N	\N	\N
72081	72	-66.8696454	18.2771024	\N	Lares Municipio	Puerto Rico	PR	\N	\N	\N
51033	51	-77.3523482	38.0303193	30860	Caroline County	Virginia	VA	\N	\N	\N
51141	51	-80.286413	36.6671385	17493	Patrick County	Virginia	VA	\N	\N	\N
19161	19	-95.1052244	42.3875259	9603	Sac County	Iowa	IA	\N	\N	\N
17131	17	-90.7417698	41.2056046	15225	Mercer County	Illinois	IL	\N	\N	\N
53047	53	-119.7422347	48.5484533	42620	Okanogan County	Washington	WA	\N	\N	\N
46035	46	-98.1558683	43.6804393	19812	Davison County	South Dakota	SD	\N	\N	\N
17123	17	-89.3423714	41.0311192	11309	Marshall County	Illinois	IL	\N	\N	\N
51165	51	-78.8853213	38.5075848	82346	Rockingham County	Virginia	VA	\N	\N	\N
19121	19	-94.0151842	41.3306216	16521	Madison County	Iowa	IA	\N	\N	\N
12113	12	-87.01289	30.7012689	189139	Santa Rosa County	Florida	FL	\N	\N	\N
12017	12	-82.5248099	28.8436402	153010	Citrus County	Florida	FL	\N	\N	\N
30093	30	-112.6600714	45.8962319	35180	Silver Bow County	Montana	MT	\N	\N	\N
16003	16	-116.4616241	44.877004	4447	Adams County	Idaho	ID	\N	\N	\N
48101	48	-100.2764416	34.0919063	1363	Cottle County	Texas	TX	\N	\N	\N
40013	40	-96.2641365	33.9640035	48998	Bryan County	Oklahoma	OK	\N	\N	\N
48131	48	-98.4973933	27.6811232	11058	Duval County	Texas	TX	\N	\N	\N
29001	29	-92.6035922	40.1906655	25399	Adair County	Missouri	MO	\N	\N	\N
29017	29	-90.0246452	37.3184272	12111	Bollinger County	Missouri	MO	\N	\N	\N
01121	01	-86.1759302	33.3693135	79985	Talladega County	Alabama	AL	\N	\N	\N
06079	06	-120.4475445	35.3852242	282249	San Luis Obispo County	California	CA	\N	\N	\N
46033	46	-103.46225	43.6849428	9017	Custer County	South Dakota	SD	\N	\N	\N
48159	48	-95.2190662	33.1758457	10821	Franklin County	Texas	TX	\N	\N	\N
41059	41	-118.7338795	45.5911997	77752	Umatilla County	Oregon	OR	\N	\N	\N
72091	72	-66.4928837	18.444646	\N	Manatí Municipio	Puerto Rico	PR	\N	\N	\N
28105	28	-88.8761514	33.4223134	49789	Oktibbeha County	Mississippi	MS	\N	\N	\N
38099	38	-97.7222304	48.3769789	10437	Walsh County	North Dakota	ND	\N	\N	\N
40071	40	-97.1438616	36.8148851	43274	Kay County	Oklahoma	OK	\N	\N	\N
28029	28	-90.4487578	31.8669151	27933	Copiah County	Mississippi	MS	\N	\N	\N
21007	21	-89.0103673	37.0513234	7769	Ballard County	Kentucky	KY	\N	\N	\N
41053	41	-123.3986729	44.9003752	87744	Polk County	Oregon	OR	\N	\N	\N
22117	22	-90.0462534	30.8521435	45773	Washington Parish	Louisiana	LA	\N	\N	\N
45001	45	-82.4540577	34.229041	24404	Abbeville County	South Carolina	SC	\N	\N	\N
36099	36	-76.827088	42.7822943	33991	Seneca County	New York	NY	\N	\N	\N
35027	35	-105.4498055	33.7408411	19939	Lincoln County	New Mexico	NM	\N	\N	\N
35003	35	-108.3919284	33.9016208	3623	Catron County	New Mexico	NM	\N	\N	\N
26009	26	-85.175639	45.0054553	23449	Antrim County	Michigan	MI	\N	\N	\N
05147	05	-91.2445353	35.1927768	6264	Woodruff County	Arkansas	AR	\N	\N	\N
46125	46	-97.1501851	43.3086698	8368	Turner County	South Dakota	SD	\N	\N	\N
13293	13	-84.2922831	32.8818367	26527	Upson County	Georgia	GA	\N	\N	\N
42053	42	-79.249705	41.513304	6965	Forest County	Pennsylvania	PA	\N	\N	\N
26157	26	-83.436618	43.4879024	52289	Tuscola County	Michigan	MI	\N	\N	\N
30087	30	-106.6667462	46.1732331	8836	Rosebud County	Montana	MT	\N	\N	\N
54101	54	-80.4490515	38.483459	8058	Webster County	West Virginia	WV	\N	\N	\N
13317	13	-82.7479211	33.7790312	9694	Wilkes County	Georgia	GA	\N	\N	\N
48293	48	-96.593623	31.5475427	23340	Limestone County	Texas	TX	\N	\N	\N
12086	12	-80.4970989	25.6105799	2707303	Miami-Dade County	Florida	FL	\N	\N	\N
30021	30	-104.8982713	47.2661301	8555	Dawson County	Montana	MT	\N	\N	\N
20179	20	-100.4412278	39.3505465	2520	Sheridan County	Kansas	KS	\N	\N	\N
39145	39	-82.998675	38.8148886	74347	Scioto County	Ohio	OH	\N	\N	\N
26057	26	-84.60469	43.2923259	40283	Gratiot County	Michigan	MI	\N	\N	\N
21087	21	-85.5784829	37.2753816	10995	Green County	Kentucky	KY	\N	\N	\N
01021	01	-86.7266071	32.8540514	44397	Chilton County	Alabama	AL	\N	\N	\N
02240	02	-143.2186282	63.8649972	6957	Southeast Fairbanks Census Area	Alaska	AK	\N	\N	\N
46135	46	-97.3883614	43.006603	22742	Yankton County	South Dakota	SD	\N	\N	\N
49027	49	-113.133092	38.9567436	13327	Millard County	Utah	UT	\N	\N	\N
72113	72	-66.6066625	18.0017167	\N	Ponce Municipio	Puerto Rico	PR	\N	\N	\N
13035	13	-83.9582206	33.2903551	25426	Butts County	Georgia	GA	\N	\N	\N
48475	48	-103.1051127	31.5130687	12097	Ward County	Texas	TX	\N	\N	\N
05039	05	-92.6539989	33.9678233	6802	Dallas County	Arkansas	AR	\N	\N	\N
37127	37	-77.9875546	35.9659447	94859	Nash County	North Carolina	NC	\N	\N	\N
72083	72	-66.9775799	18.2275938	\N	Las Marías Municipio	Puerto Rico	PR	\N	\N	\N
12133	12	-85.6627968	30.6022166	25932	Washington County	Florida	FL	\N	\N	\N
19071	19	-95.5991816	40.7425902	6729	Fremont County	Iowa	IA	\N	\N	\N
27157	27	-92.2333405	44.289693	21642	Wabasha County	Minnesota	MN	\N	\N	\N
22041	22	-91.6723711	32.1390764	19723	Franklin Parish	Louisiana	LA	\N	\N	\N
19107	19	-92.1677213	41.3311823	10085	Keokuk County	Iowa	IA	\N	\N	\N
13039	13	-81.6420193	30.913358	55388	Camden County	Georgia	GA	\N	\N	\N
40000	40	\N	\N	\N	Oklahoma Unknown	Oklahoma	OK	\N	\N	\N
13257	13	-83.2902156	34.5529139	26107	Stephens County	Georgia	GA	\N	\N	\N
42133	42	-76.7288887	39.9217514	450448	York County	Pennsylvania	PA	\N	\N	\N
02290	02	-151.5778496	65.3757271	5077	Yukon-Koyukuk Census Area	Alaska	AK	\N	\N	\N
46107	46	-99.9620034	45.0527131	2163	Potter County	South Dakota	SD	\N	\N	\N
19169	19	-93.4660934	42.0375379	98237	Story County	Iowa	IA	\N	\N	\N
47087	47	-85.6741278	36.3542499	11864	Jackson County	Tennessee	TN	\N	\N	\N
31161	31	-102.3682795	42.5122888	5150	Sheridan County	Nebraska	NE	\N	\N	\N
28053	28	-90.5234209	33.1309962	7827	Humphreys County	Mississippi	MS	\N	\N	\N
29133	29	-89.2959286	36.826264	12691	Mississippi County	Missouri	MO	\N	\N	\N
49019	49	-109.5734502	38.9743261	9796	Grand County	Utah	UT	\N	\N	\N
40025	40	-102.5176984	36.7483904	2145	Cimarron County	Oklahoma	OK	\N	\N	\N
27155	27	-96.4748315	45.7699352	3218	Traverse County	Minnesota	MN	\N	\N	\N
20049	20	-96.2446421	37.4560259	2507	Elk County	Kansas	KS	\N	\N	\N
05077	05	-90.7797172	34.7795048	8513	Lee County	Arkansas	AR	\N	\N	\N
01061	01	-85.8210224	31.0923822	26411	Geneva County	Alabama	AL	\N	\N	\N
18079	18	-85.628103	38.9962289	27515	Jennings County	Indiana	IN	\N	\N	\N
28103	28	-88.5660044	33.1065082	10236	Noxubee County	Mississippi	MS	\N	\N	\N
19115	19	-91.2569936	41.2182111	11011	Louisa County	Iowa	IA	\N	\N	\N
02220	02	-135.3673965	57.1932044	8405	Sitka City and Borough	Alaska	AK	\N	\N	\N
78020	78	-64.735261	18.3304347	\N	St. John Island	U.S. Virgin Islands	VI	\N	\N	\N
42005	42	-79.4641285	40.8123805	64162	Armstrong County	Pennsylvania	PA	\N	\N	\N
37045	37	-81.5571145	35.3346302	99035	Cleveland County	North Carolina	NC	\N	\N	\N
48115	48	-101.9487714	32.742528	12974	Dawson County	Texas	TX	\N	\N	\N
17085	17	-90.2114705	42.3623905	21239	Jo Daviess County	Illinois	IL	\N	\N	\N
36017	36	-75.6022407	42.4780238	46730	Chenango County	New York	NY	\N	\N	\N
26131	26	-89.5004631	47.2166022	5656	Ontonagon County	Michigan	MI	\N	\N	\N
12091	12	-86.5941872	30.665851	212820	Okaloosa County	Florida	FL	\N	\N	\N
20177	20	-95.755664	39.0418053	175999	Shawnee County	Kansas	KS	\N	\N	\N
17017	17	-90.2457045	39.9692024	11925	Cass County	Illinois	IL	\N	\N	\N
20147	20	-99.3421498	39.7845058	5181	Phillips County	Kansas	KS	\N	\N	\N
13119	13	-83.2275325	34.3752657	23504	Franklin County	Georgia	GA	\N	\N	\N
51171	51	-78.5739867	38.856204	43905	Shenandoah County	Virginia	VA	\N	\N	\N
16007	16	-111.3275168	42.2858922	6143	Bear Lake County	Idaho	ID	\N	\N	\N
55075	55	-87.991198	45.3468989	40262	Marinette County	Wisconsin	WI	\N	\N	\N
18117	18	-86.489257	38.5473812	19651	Orange County	Indiana	IN	\N	\N	\N
21095	21	-83.2214968	36.8592233	25566	Harlan County	Kentucky	KY	\N	\N	\N
19005	19	-91.382751	43.2749637	13642	Allamakee County	Iowa	IA	\N	\N	\N
46129	46	-100.0278563	45.4276046	5336	Walworth County	South Dakota	SD	\N	\N	\N
16037	16	-114.2522675	44.273351	4249	Custer County	Idaho	ID	\N	\N	\N
17051	17	-89.0179232	39.0011246	21264	Fayette County	Illinois	IL	\N	\N	\N
48341	48	-101.8905018	35.8356759	20654	Moore County	Texas	TX	\N	\N	\N
31185	31	-97.5967418	40.8730557	13511	York County	Nebraska	NE	\N	\N	\N
13001	13	-82.2901025	31.739712	18325	Appling County	Georgia	GA	\N	\N	\N
38009	38	-100.8312572	48.7944116	6287	Bottineau County	North Dakota	ND	\N	\N	\N
16011	16	-112.3992058	43.2163568	47202	Bingham County	Idaho	ID	\N	\N	\N
46055	46	-101.5954424	44.282881	1861	Haakon County	South Dakota	SD	\N	\N	\N
30085	30	-104.9951698	48.2827471	10964	Roosevelt County	Montana	MT	\N	\N	\N
28109	28	-89.5869043	30.7747929	55876	Pearl River County	Mississippi	MS	\N	\N	\N
40151	40	-98.863649	36.7269843	8687	Woods County	Oklahoma	OK	\N	\N	\N
53031	53	-123.5270572	47.8057075	32700	Jefferson County	Washington	WA	\N	\N	\N
20077	20	-98.0665901	37.188184	5336	Harper County	Kansas	KS	\N	\N	\N
41043	41	-122.5372084	44.4888982	131054	Linn County	Oregon	OR	\N	\N	\N
18023	18	-86.4775665	40.305944	32206	Clinton County	Indiana	IN	\N	\N	\N
19163	19	-90.6222889	41.6420791	173216	Scott County	Iowa	IA	\N	\N	\N
49049	49	-111.6685082	40.1204248	651059	Utah County	Utah	UT	\N	\N	\N
37175	37	-82.816666	35.2101025	34498	Transylvania County	North Carolina	NC	\N	\N	\N
41003	41	-123.4246641	44.4938816	93239	Benton County	Oregon	OR	\N	\N	\N
55085	55	-89.5345333	45.7161762	35751	Oneida County	Wisconsin	WI	\N	\N	\N
27097	27	-94.2666194	46.0204839	33187	Morrison County	Minnesota	MN	\N	\N	\N
45017	45	-80.7803468	33.6747804	14554	Calhoun County	South Carolina	SC	\N	\N	\N
47083	47	-87.7055983	36.2857824	8292	Houston County	Tennessee	TN	\N	\N	\N
48151	48	-100.4031198	32.7404728	3784	Fisher County	Texas	TX	\N	\N	\N
27111	27	-95.7145815	46.4057273	58741	Otter Tail County	Minnesota	MN	\N	\N	\N
40007	40	-100.4830555	36.7483343	5207	Beaver County	Oklahoma	OK	\N	\N	\N
12077	12	-84.8685805	30.2598494	8364	Liberty County	Florida	FL	\N	\N	\N
08003	08	-105.7880414	37.5684423	16180	Alamosa County	Colorado	CO	\N	\N	\N
40137	40	-97.8556068	34.4813609	43100	Stephens County	Oklahoma	OK	\N	\N	\N
48255	48	-97.8522048	28.9089957	15562	Karnes County	Texas	TX	\N	\N	\N
20149	20	-96.3371126	39.3821868	24722	Pottawatomie County	Kansas	KS	\N	\N	\N
45043	45	-79.2963325	33.4175309	63353	Georgetown County	South Carolina	SC	\N	\N	\N
12059	12	-85.8159385	30.8620072	19594	Holmes County	Florida	FL	\N	\N	\N
31079	31	-98.5026645	40.8660265	61028	Hall County	Nebraska	NE	\N	\N	\N
29015	29	-93.2879421	38.3010358	19627	Benton County	Missouri	MO	\N	\N	\N
48065	48	-101.3553558	35.4054961	5854	Carson County	Texas	TX	\N	\N	\N
54059	54	-82.1589891	37.7211608	22951	Mingo County	West Virginia	WV	\N	\N	\N
20029	20	-97.6413898	39.4873286	8642	Cloud County	Kansas	KS	\N	\N	\N
72011	72	-67.1312824	18.2869054	\N	Añasco Municipio	Puerto Rico	PR	\N	\N	\N
19131	19	-92.7844663	43.3485643	10647	Mitchell County	Iowa	IA	\N	\N	\N
50015	50	-72.6389224	44.6037037	25341	Lamoille County	Vermont	VT	\N	\N	\N
16083	16	-114.6656386	42.352309	88411	Twin Falls County	Idaho	ID	\N	\N	\N
27165	27	-94.613798	43.9781089	10792	Watonwan County	Minnesota	MN	\N	\N	\N
48445	48	-102.339284	33.171229	12183	Terry County	Texas	TX	\N	\N	\N
48455	48	-95.1516869	31.096675	14883	Trinity County	Texas	TX	\N	\N	\N
51175	51	-77.1038135	36.7200678	17636	Southampton County	Virginia	VA	\N	\N	\N
13319	13	-83.1755122	32.8042663	8812	Wilkinson County	Georgia	GA	\N	\N	\N
39137	39	-84.1298791	41.0245334	33654	Putnam County	Ohio	OH	\N	\N	\N
21131	21	-83.3886172	37.0878462	9637	Leslie County	Kentucky	KY	\N	\N	\N
01035	01	-86.9887221	31.4309257	11851	Conecuh County	Alabama	AL	\N	\N	\N
20041	20	-97.1579434	38.8677353	18266	Dickinson County	Kansas	KS	\N	\N	\N
01013	01	-86.6819689	31.751667	19504	Butler County	Alabama	AL	\N	\N	\N
31139	31	-97.6109917	42.2714129	7184	Pierce County	Nebraska	NE	\N	\N	\N
05109	05	-93.6586589	34.1581907	10643	Pike County	Arkansas	AR	\N	\N	\N
20157	20	-97.650883	39.8289061	4536	Republic County	Kansas	KS	\N	\N	\N
01081	01	-85.3530477	32.6040644	166831	Lee County	Alabama	AL	\N	\N	\N
24043	24	-77.8146709	39.6036207	151146	Washington County	Maryland	MD	\N	\N	\N
29149	29	-91.4018272	36.6853104	10411	Oregon County	Missouri	MO	\N	\N	\N
08039	08	-104.1140759	39.3151572	27313	Elbert County	Colorado	CO	\N	\N	\N
30079	30	-105.5039937	46.8123837	1067	Prairie County	Montana	MT	\N	\N	\N
22111	22	-92.3756501	32.8293486	22170	Union Parish	Louisiana	LA	\N	\N	\N
12131	12	-86.1766139	30.6312106	76648	Walton County	Florida	FL	\N	\N	\N
48379	48	-95.79544	32.8705795	12552	Rains County	Texas	TX	\N	\N	\N
36119	36	-73.7457526	41.1526862	965802	Westchester County	New York	NY	\N	\N	\N
31041	31	-99.7268662	41.3938927	10626	Custer County	Nebraska	NE	\N	\N	\N
21097	21	-84.3341313	38.4445776	18920	Harrison County	Kentucky	KY	\N	\N	\N
19081	19	-93.7436965	43.0754105	10507	Hancock County	Iowa	IA	\N	\N	\N
40077	40	-95.2722625	34.8751365	10132	Latimer County	Oklahoma	OK	\N	\N	\N
72095	72	-65.8964028	17.9997862	\N	Maunabo Municipio	Puerto Rico	PR	\N	\N	\N
20189	20	-101.3172684	37.2017002	5388	Stevens County	Kansas	KS	\N	\N	\N
06027	06	-117.4039269	36.561977	18046	Inyo County	California	CA	\N	\N	\N
26019	26	-86.4943263	44.6486211	17852	Benzie County	Michigan	MI	\N	\N	\N
40047	40	-97.7884503	36.3780539	60869	Garfield County	Oklahoma	OK	\N	\N	\N
55073	55	-89.757823	44.8980363	135593	Marathon County	Wisconsin	WI	\N	\N	\N
32001	32	-118.2641661	39.5377097	25363	Churchill County	Nevada	NV	\N	\N	\N
37141	37	-77.8881063	34.5125561	64671	Pender County	North Carolina	NC	\N	\N	\N
18085	18	-85.8615754	41.2442928	78988	Kosciusko County	Indiana	IN	\N	\N	\N
17107	17	-89.3653086	40.1292768	28383	Logan County	Illinois	IL	\N	\N	\N
27167	27	-96.476657	46.3623354	6161	Wilkin County	Minnesota	MN	\N	\N	\N
16067	16	-113.6398404	42.8572114	21216	Minidoka County	Idaho	ID	\N	\N	\N
29223	29	-90.4539307	37.1110737	12769	Wayne County	Missouri	MO	\N	\N	\N
22009	22	-91.9832748	31.088503	39966	Avoyelles Parish	Louisiana	LA	\N	\N	\N
26149	26	-85.5228703	41.9114878	60848	St. Joseph County	Michigan	MI	\N	\N	\N
30097	30	-109.944796	45.8112917	3684	Sweet Grass County	Montana	MT	\N	\N	\N
29045	29	-91.729472	40.4072747	6830	Clark County	Missouri	MO	\N	\N	\N
48075	48	-100.2081658	34.5246235	7143	Childress County	Texas	TX	\N	\N	\N
31169	31	-97.5962626	40.1738446	4887	Thayer County	Nebraska	NE	\N	\N	\N
12045	12	-85.2565366	29.9072571	13534	Gulf County	Florida	FL	\N	\N	\N
21103	21	-85.1196472	38.4513829	16067	Henry County	Kentucky	KY	\N	\N	\N
29023	29	-90.40313	36.7151802	42178	Butler County	Missouri	MO	\N	\N	\N
72099	72	-67.0795736	18.3776374	\N	Moca Municipio	Puerto Rico	PR	\N	\N	\N
42009	42	-78.4947466	39.9986336	47817	Bedford County	Pennsylvania	PA	\N	\N	\N
20151	20	-98.7401199	37.6475943	9127	Pratt County	Kansas	KS	\N	\N	\N
21135	21	-83.3701427	38.5350468	13262	Lewis County	Kentucky	KY	\N	\N	\N
49039	49	-111.5728826	39.3825309	31393	Sanpete County	Utah	UT	\N	\N	\N
26033	26	-84.5206297	46.3218192	36958	Chippewa County	Michigan	MI	\N	\N	\N
20131	20	-96.0053805	39.7910427	10121	Nemaha County	Kansas	KS	\N	\N	\N
72129	72	-65.9761674	18.1471074	\N	San Lorenzo Municipio	Puerto Rico	PR	\N	\N	\N
45049	45	-81.1438217	32.7783341	18053	Hampton County	South Carolina	SC	\N	\N	\N
48415	48	-100.9133465	32.7443531	16662	Scurry County	Texas	TX	\N	\N	\N
48427	48	-98.7402346	26.5309027	64266	Starr County	Texas	TX	\N	\N	\N
46005	46	-98.2794224	44.4182649	18513	Beadle County	South Dakota	SD	\N	\N	\N
06051	06	-118.8751668	37.9158363	14534	Mono County	California	CA	\N	\N	\N
54000	54	\N	\N	\N	West Virginia Unknown	West Virginia	WV	\N	\N	\N
05000	05	\N	\N	\N	Arkansas Unknown	Arkansas	AR	\N	\N	\N
51125	51	-78.8834397	37.7890795	14755	Nelson County	Virginia	VA	\N	\N	\N
29111	29	-91.7288031	40.0845592	9810	Lewis County	Missouri	MO	\N	\N	\N
56015	56	-104.3535403	42.0894553	13235	Goshen County	Wyoming	WY	\N	\N	\N
51049	51	-78.2528364	37.5201891	9933	Cumberland County	Virginia	VA	\N	\N	\N
38003	38	-98.0701946	46.94255	10402	Barnes County	North Dakota	ND	\N	\N	\N
51530	51	-79.3581337	37.7293448	6402	Buena Vista city	Virginia	VA	\N	\N	\N
21173	21	-83.9124157	38.0381086	28186	Montgomery County	Kentucky	KY	\N	\N	\N
38001	38	-102.5331983	46.0968146	2188	Adams County	North Dakota	ND	\N	\N	\N
18031	18	-85.499831	39.3059799	26584	Decatur County	Indiana	IN	\N	\N	\N
38087	38	-103.462462	46.4458338	747	Slope County	North Dakota	ND	\N	\N	\N
48087	48	-100.2721351	34.9633577	2877	Collingsworth County	Texas	TX	\N	\N	\N
50001	50	-73.1415807	44.0312479	36851	Addison County	Vermont	VT	\N	\N	\N
54001	54	-79.9969466	39.1397248	16444	Barbour County	West Virginia	WV	\N	\N	\N
48237	48	-98.1711758	33.2321615	9056	Jack County	Texas	TX	\N	\N	\N
37061	37	-77.9335434	34.9344033	58794	Duplin County	North Carolina	NC	\N	\N	\N
05121	05	-91.0284409	36.3412985	18247	Randolph County	Arkansas	AR	\N	\N	\N
39157	39	-81.4711052	40.4474903	91776	Tuscarawas County	Ohio	OH	\N	\N	\N
29167	29	-93.4008166	37.6167611	32490	Polk County	Missouri	MO	\N	\N	\N
48253	48	-99.8744297	32.7437089	19875	Jones County	Texas	TX	\N	\N	\N
51083	51	-78.9396142	36.766461	33633	Halifax County	Virginia	VA	\N	\N	\N
20021	20	-94.8456975	37.1693922	19681	Cherokee County	Kansas	KS	\N	\N	\N
35059	35	-103.4757229	36.4880853	4026	Union County	New Mexico	NM	\N	\N	\N
20119	20	-100.3600936	37.2438862	4029	Meade County	Kansas	KS	\N	\N	\N
01109	01	-85.9416035	31.7986508	32966	Pike County	Alabama	AL	\N	\N	\N
48365	48	-94.3051563	32.1639784	23187	Panola County	Texas	TX	\N	\N	\N
13017	13	-83.147197	31.7407715	16614	Ben Hill County	Georgia	GA	\N	\N	\N
12029	12	-83.1956656	29.5808994	17057	Dixie County	Florida	FL	\N	\N	\N
36000	36	\N	\N	\N	New York Unknown	New York	NY	\N	\N	\N
28107	28	-89.9630654	34.3652052	33848	Panola County	Mississippi	MS	\N	\N	\N
40063	40	-96.2511829	35.0529339	13126	Hughes County	Oklahoma	OK	\N	\N	\N
22037	22	-91.0434338	30.8397837	18882	East Feliciana Parish	Louisiana	LA	\N	\N	\N
21145	21	-88.7124544	37.0541106	65644	McCracken County	Kentucky	KY	\N	\N	\N
54085	54	-81.0663167	39.1771118	9499	Ritchie County	West Virginia	WV	\N	\N	\N
06087	06	-122.007205	37.0124883	269925	Santa Cruz County	California	CA	\N	\N	\N
48027	48	-97.4812697	31.0427479	369927	Bell County	Texas	TX	\N	\N	\N
42109	42	-77.0729288	40.7554068	40317	Snyder County	Pennsylvania	PA	\N	\N	\N
13065	13	-82.7026143	30.9176531	6582	Clinch County	Georgia	GA	\N	\N	\N
44005	44	-71.2836888	41.5025036	81836	Newport County	Rhode Island	RI	\N	\N	\N
30049	30	-112.3733673	47.1320133	70229	Lewis and Clark County	Montana	MT	\N	\N	\N
53027	53	-123.8267349	47.1137324	75950	Grays Harbor County	Washington	WA	\N	\N	\N
20075	20	-101.7936887	37.9952438	2425	Hamilton County	Kansas	KS	\N	\N	\N
21231	21	-84.8265896	36.8007715	20209	Wayne County	Kentucky	KY	\N	\N	\N
37145	37	-78.9656233	36.3863503	39925	Person County	North Carolina	NC	\N	\N	\N
48143	48	-98.2205073	32.2366609	43224	Erath County	Texas	TX	\N	\N	\N
40011	40	-98.4289343	35.877782	9447	Blaine County	Oklahoma	OK	\N	\N	\N
41011	41	-124.0941335	43.1859095	64711	Coos County	Oregon	OR	\N	\N	\N
01031	01	-85.9896022	31.402258	53230	Coffee County	Alabama	AL	\N	\N	\N
55000	55	\N	\N	\N	Wisconsin Unknown	Wisconsin	WI	\N	\N	\N
41045	41	-117.6031915	43.1886252	30983	Malheur County	Oregon	OR	\N	\N	\N
46021	46	-100.0021074	45.7855747	1380	Campbell County	South Dakota	SD	\N	\N	\N
20155	20	-98.0783463	37.9481849	61793	Reno County	Kansas	KS	\N	\N	\N
55013	55	-92.3757305	45.8668974	15557	Burnett County	Wisconsin	WI	\N	\N	\N
27087	27	-95.8110885	47.3283866	5473	Mahnomen County	Minnesota	MN	\N	\N	\N
55043	55	-90.6942288	42.8700275	51021	Grant County	Wisconsin	WI	\N	\N	\N
54013	54	-81.1154775	38.8441591	6945	Calhoun County	West Virginia	WV	\N	\N	\N
13167	13	-82.6639696	32.6945842	9667	Johnson County	Georgia	GA	\N	\N	\N
37171	37	-80.6864631	36.415416	71683	Surry County	North Carolina	NC	\N	\N	\N
18153	18	-87.4158429	39.0892251	20578	Sullivan County	Indiana	IN	\N	\N	\N
48395	48	-96.5149408	31.025481	17155	Robertson County	Texas	TX	\N	\N	\N
55091	55	-91.8348898	44.6274362	7271	Pepin County	Wisconsin	WI	\N	\N	\N
39011	39	-84.2240177	40.561309	45680	Auglaize County	Ohio	OH	\N	\N	\N
27005	27	-95.7417568	46.9376289	34456	Becker County	Minnesota	MN	\N	\N	\N
08115	08	-102.3553579	40.8715679	2260	Sedgwick County	Colorado	CO	\N	\N	\N
47049	47	-84.9377641	36.3698921	18787	Fentress County	Tennessee	TN	\N	\N	\N
19113	19	-91.5976735	42.0779506	227854	Linn County	Iowa	IA	\N	\N	\N
08065	08	-106.350079	39.2053405	7987	Lake County	Colorado	CO	\N	\N	\N
31091	31	-101.117324	41.920317	647	Hooker County	Nebraska	NE	\N	\N	\N
37125	37	-79.4927248	35.3082717	103352	Moore County	North Carolina	NC	\N	\N	\N
48193	48	-98.1117562	31.7073424	8557	Hamilton County	Texas	TX	\N	\N	\N
48145	48	-96.9341275	31.2519298	17275	Falls County	Texas	TX	\N	\N	\N
45081	45	-81.7279033	34.0052784	20315	Saluda County	South Carolina	SC	\N	\N	\N
22067	22	-91.8003988	32.8200082	24227	Morehouse Parish	Louisiana	LA	\N	\N	\N
28145	28	-89.0023393	34.4895325	28866	Union County	Mississippi	MS	\N	\N	\N
08075	08	-103.0904639	40.7280911	21974	Logan County	Colorado	CO	\N	\N	\N
08071	08	-104.0441103	37.3188308	14420	Las Animas County	Colorado	CO	\N	\N	\N
21069	21	-83.6992045	38.3678475	14603	Fleming County	Kentucky	KY	\N	\N	\N
37073	37	-76.7023552	36.4421353	11464	Gates County	North Carolina	NC	\N	\N	\N
21039	21	-88.976614	36.85718	4692	Carlisle County	Kentucky	KY	\N	\N	\N
17193	17	-88.1786227	38.0873259	13364	White County	Illinois	IL	\N	\N	\N
48295	48	-100.2726827	36.2801998	3111	Lipscomb County	Texas	TX	\N	\N	\N
26041	26	-86.9019375	45.8052288	35612	Delta County	Michigan	MI	\N	\N	\N
20043	20	-95.1472253	39.7885021	7496	Doniphan County	Kansas	KS	\N	\N	\N
48497	48	-97.6539968	33.2190947	71084	Wise County	Texas	TX	\N	\N	\N
21207	21	-85.0549503	36.9905867	17998	Russell County	Kentucky	KY	\N	\N	\N
31147	31	-95.7186026	40.1237427	7791	Richardson County	Nebraska	NE	\N	\N	\N
72147	72	-65.432474	18.125418	\N	Vieques Municipio	Puerto Rico	PR	\N	\N	\N
01011	01	-85.7172613	32.1017589	9976	Bullock County	Alabama	AL	\N	\N	\N
31151	31	-97.131755	40.5168024	13987	Saline County	Nebraska	NE	\N	\N	\N
31035	31	-98.0508585	40.5236693	6216	Clay County	Nebraska	NE	\N	\N	\N
22061	22	-92.6623026	32.6018231	46552	Lincoln Parish	Louisiana	LA	\N	\N	\N
22057	22	-90.394849	29.4919925	97596	Lafourche Parish	Louisiana	LA	\N	\N	\N
40135	40	-94.7507569	35.5024345	41538	Sequoyah County	Oklahoma	OK	\N	\N	\N
72041	72	-66.1616217	18.174404	\N	Cidra Municipio	Puerto Rico	PR	\N	\N	\N
47025	47	-83.6606975	36.501572	32023	Claiborne County	Tennessee	TN	\N	\N	\N
23015	23	-69.5136244	43.9947814	34775	Lincoln County	Maine	ME	\N	\N	\N
29063	29	-94.4071901	39.8946645	10944	DeKalb County	Missouri	MO	\N	\N	\N
39063	39	-83.6660335	41.0004711	75407	Hancock County	Ohio	OH	\N	\N	\N
30073	30	-112.2207612	48.2286037	5782	Pondera County	Montana	MT	\N	\N	\N
46119	46	-100.1313985	44.722325	1391	Sully County	South Dakota	SD	\N	\N	\N
36101	36	-77.3855253	42.2667252	94657	Steuben County	New York	NY	\N	\N	\N
13141	13	-83.0004653	33.2692195	8494	Hancock County	Georgia	GA	\N	\N	\N
39091	39	-83.766343	40.3875532	45326	Logan County	Ohio	OH	\N	\N	\N
48297	48	-98.1269608	28.3515349	12324	Live Oak County	Texas	TX	\N	\N	\N
47151	47	-84.50352	36.435234	22090	Scott County	Tennessee	TN	\N	\N	\N
35021	35	-103.8479245	35.8585157	638	Harding County	New Mexico	NM	\N	\N	\N
30027	30	-109.2321376	47.2252211	11104	Fergus County	Montana	MT	\N	\N	\N
23027	23	-69.1389521	44.5058342	39923	Waldo County	Maine	ME	\N	\N	\N
27159	27	-94.9886078	46.5869861	13807	Wadena County	Minnesota	MN	\N	\N	\N
38041	38	-102.454238	46.4357038	2438	Hettinger County	North Dakota	ND	\N	\N	\N
72143	72	-66.3366734	18.4361633	\N	Vega Alta Municipio	Puerto Rico	PR	\N	\N	\N
72017	72	-66.5582299	18.4699891	\N	Barceloneta Municipio	Puerto Rico	PR	\N	\N	\N
19143	19	-95.6337878	43.3785421	5987	Osceola County	Iowa	IA	\N	\N	\N
06105	06	-123.114476	40.6478033	12216	Trinity County	California	CA	\N	\N	\N
48467	48	-95.8369057	32.5587866	57533	Van Zandt County	Texas	TX	\N	\N	\N
47027	47	-85.5457173	36.5457493	7629	Clay County	Tennessee	TN	\N	\N	\N
55111	55	-89.9433184	43.428001	64449	Sauk County	Wisconsin	WI	\N	\N	\N
48045	48	-101.205893	34.5251725	1487	Briscoe County	Texas	TX	\N	\N	\N
19173	19	-94.6971082	40.7379489	6092	Taylor County	Iowa	IA	\N	\N	\N
01005	01	-85.4051035	31.8702531	24589	Barbour County	Alabama	AL	\N	\N	\N
39021	39	-83.7676037	40.1327753	38960	Champaign County	Ohio	OH	\N	\N	\N
36049	36	-75.4441402	43.7826811	26187	Lewis County	New York	NY	\N	\N	\N
51135	51	-78.0538655	37.1411668	15160	Nottoway County	Virginia	VA	\N	\N	\N
56000	56	\N	\N	\N	Wyoming Unknown	Wyoming	WY	\N	\N	\N
06069	06	-121.0858108	36.6116507	64055	San Benito County	California	CA	\N	\N	\N
13025	13	-81.9829779	31.1973339	19202	Brantley County	Georgia	GA	\N	\N	\N
21183	21	-86.844871	37.4778588	23899	Ohio County	Kentucky	KY	\N	\N	\N
18073	18	-87.1188137	41.0176883	33440	Jasper County	Indiana	IN	\N	\N	\N
05025	05	-92.1887141	33.8932006	7957	Cleveland County	Arkansas	AR	\N	\N	\N
27055	27	-91.5015556	43.6669899	18632	Houston County	Minnesota	MN	\N	\N	\N
72009	72	-66.2639743	18.1306472	\N	Aibonito Municipio	Puerto Rico	PR	\N	\N	\N
48189	48	-101.8228879	34.0684364	32754	Hale County	Texas	TX	\N	\N	\N
48211	48	-100.2792102	35.8159564	3777	Hemphill County	Texas	TX	\N	\N	\N
20171	20	-100.9063604	38.4818768	4790	Scott County	Kansas	KS	\N	\N	\N
15007	15	-159.7059653	22.0120383	71851	Kauai County	Hawaii	HI	\N	\N	\N
54047	54	-81.6581833	37.3827274	16916	McDowell County	West Virginia	WV	\N	\N	\N
22043	22	-92.5617156	31.5977873	22254	Grant Parish	Louisiana	LA	\N	\N	\N
38085	38	-101.061284	46.1106181	4173	Sioux County	North Dakota	ND	\N	\N	\N
39115	39	-81.8616967	39.6249458	14305	Morgan County	Ohio	OH	\N	\N	\N
01057	01	-87.7642923	33.7161568	16241	Fayette County	Alabama	AL	\N	\N	\N
13191	13	-81.3722892	31.4885058	14387	McIntosh County	Georgia	GA	\N	\N	\N
46121	46	-100.7076636	43.2087936	10313	Todd County	South Dakota	SD	\N	\N	\N
31085	31	-101.0479627	40.5372337	916	Hayes County	Nebraska	NE	\N	\N	\N
55113	55	-91.1471302	45.8649127	16700	Sawyer County	Wisconsin	WI	\N	\N	\N
06083	06	-120.0399729	34.5370572	444766	Santa Barbara County	California	CA	\N	\N	\N
72047	72	-66.3261795	18.3039098	\N	Corozal Municipio	Puerto Rico	PR	\N	\N	\N
37065	37	-77.6027422	35.9170773	50829	Edgecombe County	North Carolina	NC	\N	\N	\N
40097	40	-95.2356382	36.303804	41152	Mayes County	Oklahoma	OK	\N	\N	\N
22105	22	-90.4066303	30.6215313	136765	Tangipahoa Parish	Louisiana	LA	\N	\N	\N
36013	36	-79.4075949	42.3042159	126032	Chautauqua County	New York	NY	\N	\N	\N
25007	25	-70.7014995	41.3809696	17461	Dukes County	Massachusetts	MA	\N	\N	\N
48141	48	-106.2414235	31.7664803	841286	El Paso County	Texas	TX	\N	\N	\N
19165	19	-95.3089173	41.6790143	11430	Shelby County	Iowa	IA	\N	\N	\N
31051	31	-96.8558616	42.4852801	5596	Dixon County	Nebraska	NE	\N	\N	\N
48391	48	-97.1624723	28.3221157	6877	Refugio County	Texas	TX	\N	\N	\N
17045	17	-87.7471102	39.679037	16858	Edgar County	Illinois	IL	\N	\N	\N
38105	38	-103.5013332	48.3557649	38700	Williams County	North Dakota	ND	\N	\N	\N
19105	19	-91.1169141	42.1251175	20617	Jones County	Iowa	IA	\N	\N	\N
17000	17	\N	\N	\N	Illinois Unknown	Illinois	IL	\N	\N	\N
32031	32	-119.6632695	40.7313196	477082	Washoe County	Nevada	NV	\N	\N	\N
18139	18	-85.4664463	39.6223785	16649	Rush County	Indiana	IN	\N	\N	\N
35029	35	-107.7471911	32.1845231	23905	Luna County	New Mexico	NM	\N	\N	\N
39031	39	-81.9301092	40.2967096	36449	Coshocton County	Ohio	OH	\N	\N	\N
06065	06	-116.0022389	33.7298275	2489188	Riverside County	California	CA	\N	\N	\N
30109	30	-104.2745184	46.9629657	939	Wibaux County	Montana	MT	\N	\N	\N
09005	09	-73.2354042	41.7918833	179610	Litchfield County	Connecticut	CT	\N	\N	\N
20039	20	-100.4597084	39.783542	2776	Decatur County	Kansas	KS	\N	\N	\N
40103	40	-97.2363345	36.384901	11113	Noble County	Oklahoma	OK	\N	\N	\N
17099	17	-88.8859312	41.3433407	107571	LaSalle County	Illinois	IL	\N	\N	\N
51001	51	-75.7578073	37.7659435	32238	Accomack County	Virginia	VA	\N	\N	\N
37099	37	-83.1199622	35.2810521	44033	Jackson County	North Carolina	NC	\N	\N	\N
39119	39	-81.9435064	39.9660457	86020	Muskingum County	Ohio	OH	\N	\N	\N
17177	17	-89.6659942	42.3497262	43831	Stephenson County	Illinois	IL	\N	\N	\N
08053	08	-107.3382613	37.8211654	808	Hinsdale County	Colorado	CO	\N	\N	\N
27153	27	-94.9005758	46.0665694	24732	Todd County	Minnesota	MN	\N	\N	\N
21035	21	-88.2740857	36.6209783	39300	Calloway County	Kentucky	KY	\N	\N	\N
16071	16	-112.5204486	42.1838954	4520	Oneida County	Idaho	ID	\N	\N	\N
36009	36	-78.662332	42.2390986	75863	Cattaraugus County	New York	NY	\N	\N	\N
17185	17	-87.8391674	38.4458209	11190	Wabash County	Illinois	IL	\N	\N	\N
51063	51	-80.3502662	36.9314331	15777	Floyd County	Virginia	VA	\N	\N	\N
45041	45	-79.7102329	34.0285346	137588	Florence County	South Carolina	SC	\N	\N	\N
29073	29	-91.5057795	38.4411826	14566	Gasconade County	Missouri	MO	\N	\N	\N
31141	31	-97.5134673	41.5768655	33364	Platte County	Nebraska	NE	\N	\N	\N
12039	12	-84.6126072	30.5786866	45277	Gadsden County	Florida	FL	\N	\N	\N
48175	48	-97.4304145	28.6607	7626	Goliad County	Texas	TX	\N	\N	\N
05143	05	-94.2172695	35.978001	243216	Washington County	Arkansas	AR	\N	\N	\N
29151	29	-91.8595036	38.4642535	13535	Osage County	Missouri	MO	\N	\N	\N
28009	28	-89.2002848	34.8105184	8351	Benton County	Mississippi	MS	\N	\N	\N
48179	48	-100.8123736	35.4025424	21658	Gray County	Texas	TX	\N	\N	\N
13009	13	-83.2554566	33.0594897	45099	Baldwin County	Georgia	GA	\N	\N	\N
47071	47	-88.1856958	35.2018926	25583	Hardin County	Tennessee	TN	\N	\N	\N
47081	47	-87.4671159	35.8023275	25387	Hickman County	Tennessee	TN	\N	\N	\N
41039	41	-122.8976901	43.9283286	382986	Lane County	Oregon	OR	\N	\N	\N
40045	40	-99.7501388	36.2242576	3830	Ellis County	Oklahoma	OK	\N	\N	\N
72111	72	-66.7281249	18.0266179	\N	Peñuelas Municipio	Puerto Rico	PR	\N	\N	\N
28141	28	-88.236064	34.7376972	19275	Tishomingo County	Mississippi	MS	\N	\N	\N
31143	31	-97.5706627	41.1879253	5201	Polk County	Nebraska	NE	\N	\N	\N
51057	51	-76.9418713	37.9394802	10943	Essex County	Virginia	VA	\N	\N	\N
05031	05	-90.6314213	35.8277285	112245	Craighead County	Arkansas	AR	\N	\N	\N
21041	21	-85.1240238	38.6683939	10730	Carroll County	Kentucky	KY	\N	\N	\N
02150	02	-153.9183721	57.7044003	12992	Kodiak Island Borough	Alaska	AK	\N	\N	\N
20165	20	-99.3091835	38.5235962	2947	Rush County	Kansas	KS	\N	\N	\N
29186	29	-90.1615306	37.8858449	17924	Ste. Genevieve County	Missouri	MO	\N	\N	\N
37157	37	-79.7827539	36.3818062	91285	Rockingham County	North Carolina	NC	\N	\N	\N
29081	29	-93.9925818	40.34562	8321	Harrison County	Missouri	MO	\N	\N	\N
47095	47	-89.4855365	36.3339054	6988	Lake County	Tennessee	TN	\N	\N	\N
27023	27	-95.5641082	45.0286254	11758	Chippewa County	Minnesota	MN	\N	\N	\N
12123	12	-83.6094825	30.0099084	21600	Taylor County	Florida	FL	\N	\N	\N
13133	13	-83.1666127	33.5767403	18837	Greene County	Georgia	GA	\N	\N	\N
56013	56	-108.6089349	43.054831	39317	Fremont County	Wyoming	WY	\N	\N	\N
36113	36	-73.8381388	43.5551053	63756	Warren County	New York	NY	\N	\N	\N
53007	53	-120.619041	47.8609739	77574	Chelan County	Washington	WA	\N	\N	\N
08007	08	-107.0508634	37.2023952	14196	Archuleta County	Colorado	CO	\N	\N	\N
21165	21	-83.5893651	37.9355008	6502	Menifee County	Kentucky	KY	\N	\N	\N
54083	54	-79.8677881	38.7810953	28387	Randolph County	West Virginia	WV	\N	\N	\N
48411	48	-98.8192922	31.1551375	6039	San Saba County	Texas	TX	\N	\N	\N
15001	15	-155.5024434	19.5977643	203340	Hawaii County	Hawaii	HI	\N	\N	\N
26151	26	-82.6428148	43.4491547	40747	Sanilac County	Michigan	MI	\N	\N	\N
42121	42	-79.7658126	41.4007143	50328	Venango County	Pennsylvania	PA	\N	\N	\N
39163	39	-82.4859614	39.2520418	12972	Vinton County	Ohio	OH	\N	\N	\N
48337	48	-97.7250138	33.6783558	19962	Montague County	Texas	TX	\N	\N	\N
13241	13	-83.4048701	34.8839345	17273	Rabun County	Georgia	GA	\N	\N	\N
13281	13	-83.7322645	34.9025294	12247	Towns County	Georgia	GA	\N	\N	\N
29169	29	-92.2070224	37.8248346	52709	Pulaski County	Missouri	MO	\N	\N	\N
05057	05	-93.6643553	33.735953	21253	Hempstead County	Arkansas	AR	\N	\N	\N
27067	27	-95.0049812	45.1527137	43130	Kandiyohi County	Minnesota	MN	\N	\N	\N
38089	38	-102.6620262	46.8170312	32107	Stark County	North Dakota	ND	\N	\N	\N
54017	54	-80.7012316	39.2634805	8368	Doddridge County	West Virginia	WV	\N	\N	\N
21127	21	-82.7382903	38.0744531	15436	Lawrence County	Kentucky	KY	\N	\N	\N
27145	27	-94.6104822	45.5552345	162038	Stearns County	Minnesota	MN	\N	\N	\N
21169	21	-85.6334564	36.9924298	10058	Metcalfe County	Kentucky	KY	\N	\N	\N
42065	42	-79.012419	41.1380282	43108	Jefferson County	Pennsylvania	PA	\N	\N	\N
51099	51	-77.1626355	38.2771799	27381	King George County	Virginia	VA	\N	\N	\N
05023	05	-92.0599504	35.5663146	24935	Cleburne County	Arkansas	AR	\N	\N	\N
05079	05	-91.7276258	33.957675	12944	Lincoln County	Arkansas	AR	\N	\N	\N
37033	37	-79.339609	36.3942984	22443	Caswell County	North Carolina	NC	\N	\N	\N
21225	21	-87.9516496	37.6580293	14443	Union County	Kentucky	KY	\N	\N	\N
42035	42	-77.69636	41.262624	37957	Clinton County	Pennsylvania	PA	\N	\N	\N
56033	56	-106.8812114	44.7813692	30863	Sheridan County	Wyoming	WY	\N	\N	\N
21227	21	-86.4235786	36.995634	134510	Warren County	Kentucky	KY	\N	\N	\N
16059	16	-113.8870422	44.9285059	8054	Lemhi County	Idaho	ID	\N	\N	\N
13081	13	-83.7535309	31.9151485	22034	Crisp County	Georgia	GA	\N	\N	\N
38083	38	-100.3309858	47.5813594	1275	Sheridan County	North Dakota	ND	\N	\N	\N
17087	17	-88.8821305	37.4607092	12358	Johnson County	Illinois	IL	\N	\N	\N
35037	35	-103.5480713	35.1070184	8197	Quay County	New Mexico	NM	\N	\N	\N
05059	05	-92.9441474	34.3151767	33787	Hot Spring County	Arkansas	AR	\N	\N	\N
01105	01	-87.2938269	32.6390053	8687	Perry County	Alabama	AL	\N	\N	\N
32021	32	-118.4162794	38.516647	4518	Mineral County	Nevada	NV	\N	\N	\N
18175	18	-86.1047512	38.6006126	28213	Washington County	Indiana	IN	\N	\N	\N
48483	48	-100.2531067	35.3925926	4946	Wheeler County	Texas	TX	\N	\N	\N
35000	35	\N	\N	\N	New Mexico Unknown	New Mexico	NM	\N	\N	\N
46011	46	-96.7977971	44.3766745	35603	Brookings County	South Dakota	SD	\N	\N	\N
26071	26	-88.5405261	46.1702542	11066	Iron County	Michigan	MI	\N	\N	\N
38043	38	-99.731198	46.9382725	2458	Kidder County	North Dakota	ND	\N	\N	\N
37007	37	-80.1097633	34.9749722	24097	Anson County	North Carolina	NC	\N	\N	\N
19145	19	-95.1442898	40.7390902	15073	Page County	Iowa	IA	\N	\N	\N
47067	47	-83.2274928	36.5213528	6493	Hancock County	Tennessee	TN	\N	\N	\N
08085	08	-108.2662815	38.4075069	43322	Montrose County	Colorado	CO	\N	\N	\N
18107	18	-86.8927145	40.0402962	38365	Montgomery County	Indiana	IN	\N	\N	\N
54041	54	-80.4954773	38.9888773	15805	Lewis County	West Virginia	WV	\N	\N	\N
29065	29	-91.4897172	37.6030721	15481	Dent County	Missouri	MO	\N	\N	\N
12035	12	-81.2862532	29.4748909	118451	Flagler County	Florida	FL	\N	\N	\N
20185	20	-98.7198888	38.0356303	4046	Stafford County	Kansas	KS	\N	\N	\N
19051	19	-92.4103453	40.7480892	9051	Davis County	Iowa	IA	\N	\N	\N
29157	29	-89.8021249	37.7111296	19194	Perry County	Missouri	MO	\N	\N	\N
04027	04	-113.910905	32.7739424	217824	Yuma County	Arizona	AZ	\N	\N	\N
20000	20	\N	\N	\N	Kansas Unknown	Kansas	KS	\N	\N	\N
42127	42	-75.2924932	41.6466021	51163	Wayne County	Pennsylvania	PA	\N	\N	\N
72065	72	-66.7982102	18.4411409	\N	Hatillo Municipio	Puerto Rico	PR	\N	\N	\N
51590	51	-79.4080707	36.5833337	39869	Danville city	Virginia	VA	\N	\N	\N
20067	20	-101.2993622	37.547537	7077	Grant County	Kansas	KS	\N	\N	\N
12087	12	-80.9532703	24.7688833	73900	Monroe County	Florida	FL	\N	\N	\N
05001	05	-91.3765466	34.2895697	17383	Arkansas County	Arkansas	AR	\N	\N	\N
40069	40	-96.6542545	34.3134553	10824	Johnston County	Oklahoma	OK	\N	\N	\N
48437	48	-101.7438647	34.5263193	7340	Swisher County	Texas	TX	\N	\N	\N
41063	41	-117.1855796	45.593753	7181	Wallowa County	Oregon	OR	\N	\N	\N
48185	48	-95.988082	30.5432314	29614	Grimes County	Texas	TX	\N	\N	\N
22091	22	-90.7083074	30.8225386	10081	St. Helena Parish	Louisiana	LA	\N	\N	\N
19091	19	-94.2027754	42.7822212	9473	Humboldt County	Iowa	IA	\N	\N	\N
31095	31	-97.1431027	40.1757356	7099	Jefferson County	Nebraska	NE	\N	\N	\N
39127	39	-82.2379525	39.7431874	36215	Perry County	Ohio	OH	\N	\N	\N
16057	16	-116.7309737	46.8189202	40830	Latah County	Idaho	ID	\N	\N	\N
46053	46	-99.2065908	43.1751423	4219	Gregory County	South Dakota	SD	\N	\N	\N
49029	49	-111.5778846	41.0910273	12462	Morgan County	Utah	UT	\N	\N	\N
22021	22	-92.1142311	32.1012195	9839	Caldwell Parish	Louisiana	LA	\N	\N	\N
19133	19	-95.9565661	42.0494317	8598	Monona County	Iowa	IA	\N	\N	\N
16017	16	-116.6123638	48.316796	46817	Bonner County	Idaho	ID	\N	\N	\N
51690	51	-79.8636475	36.6835269	12355	Martinsville city	Virginia	VA	\N	\N	\N
48417	48	-99.3470045	32.7438198	3300	Shackelford County	Texas	TX	\N	\N	\N
27085	27	-94.2723231	44.8216571	35710	McLeod County	Minnesota	MN	\N	\N	\N
30017	30	-105.5503521	46.2614136	11292	Custer County	Montana	MT	\N	\N	\N
35057	35	-105.8905574	34.5549784	15486	Torrance County	New Mexico	NM	\N	\N	\N
06111	06	-119.1331432	34.3587415	841387	Ventura County	California	CA	\N	\N	\N
47015	47	-86.0624044	35.808394	14847	Cannon County	Tennessee	TN	\N	\N	\N
42067	42	-77.4004377	40.530673	24619	Juniata County	Pennsylvania	PA	\N	\N	\N
48017	48	-102.8303446	34.0675209	6697	Bailey County	Texas	TX	\N	\N	\N
17013	17	-90.6662949	39.1642619	4616	Calhoun County	Illinois	IL	\N	\N	\N
22107	22	-91.342576	32.0014894	4178	Tensas Parish	Louisiana	LA	\N	\N	\N
21149	21	-87.2655972	37.5267075	9075	McLean County	Kentucky	KY	\N	\N	\N
26097	26	-85.3037625	46.1678678	10839	Mackinac County	Michigan	MI	\N	\N	\N
02066	02	\N	\N	2919	Copper River Census Area	Alaska	AK	\N	\N	\N
04019	04	-111.7836574	32.1280427	1061175	Pima County	Arizona	AZ	\N	\N	\N
38025	38	-102.6123216	47.3545572	4465	Dunn County	North Dakota	ND	\N	\N	\N
29117	29	-93.5482013	39.778587	14413	Livingston County	Missouri	MO	\N	\N	\N
48315	48	-94.3568533	32.7981821	9960	Marion County	Texas	TX	\N	\N	\N
28077	28	-90.1075299	31.5500087	12480	Lawrence County	Mississippi	MS	\N	\N	\N
21025	21	-83.3171582	37.5178069	12550	Breathitt County	Kentucky	KY	\N	\N	\N
29181	29	-90.874834	36.6501703	13300	Ripley County	Missouri	MO	\N	\N	\N
48067	48	-94.3575786	33.0836979	29879	Cass County	Texas	TX	\N	\N	\N
17071	17	-90.9412464	40.814471	6535	Henderson County	Illinois	IL	\N	\N	\N
39033	39	-82.9247827	40.8485244	41338	Crawford County	Ohio	OH	\N	\N	\N
13271	13	-82.9310634	31.9136406	15781	Telfair County	Georgia	GA	\N	\N	\N
48241	48	-94.0222943	30.7529323	35375	Jasper County	Texas	TX	\N	\N	\N
47075	47	-89.2826913	35.5866782	17002	Haywood County	Tennessee	TN	\N	\N	\N
40123	40	-96.691971	34.7214461	38397	Pontotoc County	Oklahoma	OK	\N	\N	\N
22027	22	-92.9897278	32.8271597	15508	Claiborne Parish	Louisiana	LA	\N	\N	\N
45055	45	-80.5908847	34.3383561	67472	Kershaw County	South Carolina	SC	\N	\N	\N
51015	51	-79.1475571	38.1719106	76544	Augusta County	Virginia	VA	\N	\N	\N
13173	13	-83.0631635	31.0381973	10737	Lanier County	Georgia	GA	\N	\N	\N
13161	13	-82.6368248	31.8116153	15213	Jeff Davis County	Georgia	GA	\N	\N	\N
48225	48	-95.4215995	31.3230362	22835	Houston County	Texas	TX	\N	\N	\N
19073	19	-94.3887028	42.042494	8795	Greene County	Iowa	IA	\N	\N	\N
72067	72	-67.1161994	18.1346949	\N	Hormigueros Municipio	Puerto Rico	PR	\N	\N	\N
16077	16	-112.844407	42.694126	7643	Power County	Idaho	ID	\N	\N	\N
72089	72	-65.7099036	18.3679961	\N	Luquillo Municipio	Puerto Rico	PR	\N	\N	\N
40115	40	-94.8026814	36.8357635	30879	Ottawa County	Oklahoma	OK	\N	\N	\N
08091	08	-107.7884802	38.1547313	5001	Ouray County	Colorado	CO	\N	\N	\N
02070	02	-158.2671226	59.5433255	4833	Dillingham Census Area	Alaska	AK	\N	\N	\N
16075	16	-116.7502379	44.00243	24771	Payette County	Idaho	ID	\N	\N	\N
01065	01	-87.6230608	32.7527958	14670	Hale County	Alabama	AL	\N	\N	\N
30001	30	-112.8928694	45.1338633	9483	Beaverhead County	Montana	MT	\N	\N	\N
29147	29	-94.8831457	40.3611359	21743	Nodaway County	Missouri	MO	\N	\N	\N
37189	37	-81.7098875	36.2353679	56441	Watauga County	North Carolina	NC	\N	\N	\N
08023	08	-105.4289399	37.2775474	3921	Costilla County	Colorado	CO	\N	\N	\N
39001	39	-83.4780816	38.8344683	27531	Adams County	Ohio	OH	\N	\N	\N
53039	53	-120.7793049	45.8704463	22697	Klickitat County	Washington	WA	\N	\N	\N
13107	13	-82.2997628	32.5910995	22507	Emanuel County	Georgia	GA	\N	\N	\N
27093	27	-94.527346	45.1231555	23341	Meeker County	Minnesota	MN	\N	\N	\N
36109	36	-76.4734835	42.4530063	101058	Tompkins County	New York	NY	\N	\N	\N
21083	21	-88.6498974	36.7233435	36818	Graves County	Kentucky	KY	\N	\N	\N
40039	40	-98.9973857	35.6456012	28648	Custer County	Oklahoma	OK	\N	\N	\N
55051	55	-90.2612985	46.32655	5698	Iron County	Wisconsin	WI	\N	\N	\N
05115	05	-93.0268181	35.456557	64334	Pope County	Arkansas	AR	\N	\N	\N
01131	01	-87.3049349	31.9900824	10206	Wilcox County	Alabama	AL	\N	\N	\N
13137	13	-83.5258749	34.6343924	46047	Habersham County	Georgia	GA	\N	\N	\N
08095	08	-102.3451047	40.5947117	4367	Phillips County	Colorado	CO	\N	\N	\N
05139	05	-92.5981447	33.1682186	38219	Union County	Arkansas	AR	\N	\N	\N
20003	20	-95.2920464	38.2151139	7949	Anderson County	Kansas	KS	\N	\N	\N
31093	31	-98.5133417	41.2168513	6488	Howard County	Nebraska	NE	\N	\N	\N
55045	55	-89.6050743	42.6755218	36603	Green County	Wisconsin	WI	\N	\N	\N
12051	12	-81.1521142	26.539967	42813	Hendry County	Florida	FL	\N	\N	\N
20007	20	-98.685052	37.2229059	4358	Barber County	Kansas	KS	\N	\N	\N
16061	16	-116.42376	46.2363277	3838	Lewis County	Idaho	ID	\N	\N	\N
36045	36	-76.0529678	43.996389	108095	Jefferson County	New York	NY	\N	\N	\N
33005	33	-72.2481828	42.9254596	76228	Cheshire County	New Hampshire	NH	\N	\N	\N
48481	48	-96.2296745	29.2784805	41685	Wharton County	Texas	TX	\N	\N	\N
38051	38	-99.4164868	46.1086815	2440	McIntosh County	North Dakota	ND	\N	\N	\N
27007	27	-95.00505	47.8795077	47442	Beltrami County	Minnesota	MN	\N	\N	\N
72001	72	-66.7581652	18.1816112	\N	Adjuntas Municipio	Puerto Rico	PR	\N	\N	\N
72015	72	-66.0419453	17.9720599	\N	Arroyo Municipio	Puerto Rico	PR	\N	\N	\N
13201	13	-84.7303983	31.1629309	5622	Miller County	Georgia	GA	\N	\N	\N
48163	48	-99.1087876	28.8693343	20379	Frio County	Texas	TX	\N	\N	\N
48269	48	-100.2453455	33.6142675	283	King County	Texas	TX	\N	\N	\N
17175	17	-89.7974111	41.0969077	5262	Stark County	Illinois	IL	\N	\N	\N
31119	31	-97.6068564	41.9099293	34813	Madison County	Nebraska	NE	\N	\N	\N
31133	31	-96.2452254	40.1378496	2601	Pawnee County	Nebraska	NE	\N	\N	\N
46037	46	-97.5814295	45.355161	5345	Day County	South Dakota	SD	\N	\N	\N
04017	04	-110.3210248	35.3907852	112112	Navajo County	Arizona	AZ	\N	\N	\N
16005	16	-112.2289819	42.6929211	88795	Bannock County	Idaho	ID	\N	\N	\N
12043	12	-81.1908197	26.9548102	14198	Glades County	Florida	FL	\N	\N	\N
13155	13	-83.2770374	31.6043062	9387	Irwin County	Georgia	GA	\N	\N	\N
39065	39	-83.6640773	40.6604152	31469	Hardin County	Ohio	OH	\N	\N	\N
55107	55	-91.1367448	45.472734	14022	Rusk County	Wisconsin	WI	\N	\N	\N
27045	27	-92.0939369	43.6791869	21135	Fillmore County	Minnesota	MN	\N	\N	\N
46023	46	-98.5951429	43.2061853	9262	Charles Mix County	South Dakota	SD	\N	\N	\N
13291	13	-83.9892568	34.833333	25358	Union County	Georgia	GA	\N	\N	\N
21063	21	-83.096116	38.1168826	7372	Elliott County	Kentucky	KY	\N	\N	\N
37173	37	-83.4656136	35.5688491	14179	Swain County	North Carolina	NC	\N	\N	\N
48307	48	-99.3598557	31.2054766	7823	McCulloch County	Texas	TX	\N	\N	\N
40079	40	-94.6950743	34.8973562	49935	Le Flore County	Oklahoma	OK	\N	\N	\N
48223	48	-95.5654337	33.1489673	37170	Hopkins County	Texas	TX	\N	\N	\N
28043	28	-89.8027405	33.770031	20610	Grenada County	Mississippi	MS	\N	\N	\N
47069	47	-88.988697	35.2187853	24836	Hardeman County	Tennessee	TN	\N	\N	\N
54043	54	-82.0776231	38.1717696	20043	Lincoln County	West Virginia	WV	\N	\N	\N
20101	20	-100.4661853	38.4812863	1518	Lane County	Kansas	KS	\N	\N	\N
51027	51	-82.0381508	37.2681198	20613	Buchanan County	Virginia	VA	\N	\N	\N
55123	55	-90.8219835	43.5993661	30861	Vernon County	Wisconsin	WI	\N	\N	\N
21005	21	-84.9864171	38.0053963	22833	Anderson County	Kentucky	KY	\N	\N	\N
12055	12	-81.3423534	27.3410799	106639	Highlands County	Florida	FL	\N	\N	\N
31157	31	-103.7015494	41.8503306	35299	Scotts Bluff County	Nebraska	NE	\N	\N	\N
29221	29	-90.8970179	37.9426107	24604	Washington County	Missouri	MO	\N	\N	\N
53077	53	-120.7401446	46.4565581	251879	Yakima County	Washington	WA	\N	\N	\N
48501	48	-102.8322422	33.1623979	8702	Yoakum County	Texas	TX	\N	\N	\N
48401	48	-94.7563823	32.1094232	54324	Rusk County	Texas	TX	\N	\N	\N
20099	20	-95.2974732	37.1914676	19586	Labette County	Kansas	KS	\N	\N	\N
06057	06	-120.7713429	39.2975082	99606	Nevada County	California	CA	\N	\N	\N
19093	19	-95.5074206	42.3918601	6833	Ida County	Iowa	IA	\N	\N	\N
45009	45	-81.0531607	33.2030211	13906	Bamberg County	South Carolina	SC	\N	\N	\N
47107	47	-84.6199488	35.4244722	54208	McMinn County	Tennessee	TN	\N	\N	\N
21163	21	-86.2008628	37.9674757	28616	Meade County	Kentucky	KY	\N	\N	\N
46045	46	-99.205362	45.4116802	3817	Edmunds County	South Dakota	SD	\N	\N	\N
13233	13	-85.1883384	33.9960153	42840	Polk County	Georgia	GA	\N	\N	\N
53043	53	-118.4176925	47.5827433	11090	Lincoln County	Washington	WA	\N	\N	\N
53005	53	-119.5166594	46.2281252	206426	Benton County	Washington	WA	\N	\N	\N
13129	13	-84.8738622	34.5096669	58780	Gordon County	Georgia	GA	\N	\N	\N
27151	27	-95.6901243	45.2758101	9176	Swift County	Minnesota	MN	\N	\N	\N
04009	04	-109.8783103	32.9318277	39211	Graham County	Arizona	AZ	\N	\N	\N
37187	37	-76.5722906	35.844713	11485	Washington County	North Carolina	NC	\N	\N	\N
39071	39	-83.601359	39.1844221	43304	Highland County	Ohio	OH	\N	\N	\N
53049	53	-123.7824193	46.5565866	22984	Pacific County	Washington	WA	\N	\N	\N
27009	27	-94.0014397	45.7012249	40958	Benton County	Minnesota	MN	\N	\N	\N
40147	40	-95.9061545	36.7043803	52222	Washington County	Oklahoma	OK	\N	\N	\N
54087	54	-81.3544939	38.7429497	13482	Roane County	West Virginia	WV	\N	\N	\N
05055	05	-90.5663459	36.1206072	45597	Greene County	Arkansas	AR	\N	\N	\N
20073	20	-96.2417321	37.8793472	5868	Greenwood County	Kansas	KS	\N	\N	\N
42059	42	-80.2256552	39.8477067	35621	Greene County	Pennsylvania	PA	\N	\N	\N
51183	51	-77.2597319	36.9266454	10925	Sussex County	Virginia	VA	\N	\N	\N
27099	27	-92.7595136	43.6662486	40150	Mower County	Minnesota	MN	\N	\N	\N
46071	46	-101.6263229	43.677506	3321	Jackson County	South Dakota	SD	\N	\N	\N
38071	38	-98.739031	48.2661631	11388	Ramsey County	North Dakota	ND	\N	\N	\N
20113	20	-97.6474893	38.395812	28448	McPherson County	Kansas	KS	\N	\N	\N
22065	22	-91.2319321	32.3468782	10635	Madison Parish	Louisiana	LA	\N	\N	\N
48177	48	-97.4919205	29.4619121	20948	Gonzales County	Texas	TX	\N	\N	\N
46081	46	-103.8049474	44.348767	26221	Lawrence County	South Dakota	SD	\N	\N	\N
02158	02	-163.1901714	62.2835878	8328	Kusilvak Census Area	Alaska	AK	\N	\N	\N
23029	23	-67.6093542	44.9670088	31473	Washington County	Maine	ME	\N	\N	\N
21155	21	-85.2689592	37.552604	19314	Marion County	Kentucky	KY	\N	\N	\N
17035	17	-88.2406193	39.273121	10649	Cumberland County	Illinois	IL	\N	\N	\N
18015	18	-86.5651412	40.5849801	20228	Carroll County	Indiana	IN	\N	\N	\N
46089	46	-99.2114212	45.7842491	2363	McPherson County	South Dakota	SD	\N	\N	\N
31099	31	-98.9476019	40.5091198	6652	Kearney County	Nebraska	NE	\N	\N	\N
39037	39	-84.6212484	40.1315415	51205	Darke County	Ohio	OH	\N	\N	\N
47063	47	-83.2660711	36.2183967	65110	Hamblen County	Tennessee	TN	\N	\N	\N
13075	13	-83.4294448	31.1525157	17291	Cook County	Georgia	GA	\N	\N	\N
21033	21	-87.8705095	37.1486421	12687	Caldwell County	Kentucky	KY	\N	\N	\N
38045	38	-98.5260571	46.4641952	4033	LaMoure County	North Dakota	ND	\N	\N	\N
30023	30	-113.1416236	46.0946716	9204	Deer Lodge County	Montana	MT	\N	\N	\N
48281	48	-98.2408885	31.1967308	21789	Lampasas County	Texas	TX	\N	\N	\N
02000	02	\N	\N	\N	Alaska Unknown	Alaska	AK	\N	\N	\N
48261	48	-97.5911434	26.8902129	379	Kenedy County	Texas	TX	\N	\N	\N
13205	13	-84.192038	31.228997	21602	Mitchell County	Georgia	GA	\N	\N	\N
34017	34	-74.0786014	40.7313751	671666	Hudson County	New Jersey	NJ	\N	\N	\N
41021	41	-120.319901	45.43059	1975	Gilliam County	Oregon	OR	\N	\N	\N
37075	37	-83.8309147	35.3483644	8474	Graham County	North Carolina	NC	\N	\N	\N
16053	16	-114.2620858	42.6913953	24578	Jerome County	Idaho	ID	\N	\N	\N
48423	48	-95.2700409	32.3770156	235806	Smith County	Texas	TX	\N	\N	\N
48313	48	-95.9303719	30.9668782	14427	Madison County	Texas	TX	\N	\N	\N
28129	28	-89.4948763	32.019029	15779	Smith County	Mississippi	MS	\N	\N	\N
37005	37	-81.1322987	36.4893563	11194	Alleghany County	North Carolina	NC	\N	\N	\N
31081	31	-98.0223294	40.8728173	9237	Hamilton County	Nebraska	NE	\N	\N	\N
37049	37	-77.0813197	35.1168292	101233	Craven County	North Carolina	NC	\N	\N	\N
26137	26	-84.5766031	45.0217871	24765	Otsego County	Michigan	MI	\N	\N	\N
15009	15	-156.6015502	20.8559308	167902	Maui County	Hawaii	HI	\N	\N	\N
10001	10	-75.5029819	39.0970884	183643	Kent County	Delaware	DE	\N	\N	\N
48359	48	-102.5976203	35.4019206	2135	Oldham County	Texas	TX	\N	\N	\N
18129	18	-87.8686526	38.0276138	25275	Posey County	Indiana	IN	\N	\N	\N
06015	06	-124.003614	41.763958	27968	Del Norte County	California	CA	\N	\N	\N
55105	55	-89.0752844	42.6698802	163084	Rock County	Wisconsin	WI	\N	\N	\N
46101	46	-96.6760536	44.0124293	6525	Moody County	South Dakota	SD	\N	\N	\N
27057	27	-94.9132898	47.0955506	21783	Hubbard County	Minnesota	MN	\N	\N	\N
72103	72	-65.735749	18.2110697	\N	Naguabo Municipio	Puerto Rico	PR	\N	\N	\N
48267	48	-99.7463959	30.479472	4396	Kimble County	Texas	TX	\N	\N	\N
48407	48	-95.1631363	30.5743884	29301	San Jacinto County	Texas	TX	\N	\N	\N
37097	37	-80.8745203	35.8062493	185770	Iredell County	North Carolina	NC	\N	\N	\N
48181	48	-96.675693	33.624524	138318	Grayson County	Texas	TX	\N	\N	\N
45089	45	-79.716474	33.6264617	29825	Williamsburg County	South Carolina	SC	\N	\N	\N
31109	31	-96.6886584	40.7835474	320650	Lancaster County	Nebraska	NE	\N	\N	\N
55027	55	-88.7019394	43.4296276	87336	Dodge County	Wisconsin	WI	\N	\N	\N
26073	26	-84.8394245	43.6452331	69504	Isabella County	Michigan	MI	\N	\N	\N
13231	13	-84.3898475	33.0812241	19121	Pike County	Georgia	GA	\N	\N	\N
69120	69	145.601021	14.9367835	\N	Tinian Municipality	Northern Mariana Islands	MP	\N	\N	\N
56039	56	-110.426087	44.048662	23497	Teton County	Wyoming	WY	\N	\N	\N
21125	21	-84.119395	37.1132678	61238	Laurel County	Kentucky	KY	\N	\N	\N
17167	17	-89.6624251	39.7568675	193882	Sangamon County	Illinois	IL	\N	\N	\N
21235	21	-84.1446485	36.7580237	36451	Whitley County	Kentucky	KY	\N	\N	\N
51017	51	-79.7312032	38.0683679	4119	Bath County	Virginia	VA	\N	\N	\N
38069	38	-99.966497	48.2388827	3928	Pierce County	North Dakota	ND	\N	\N	\N
06103	06	-122.2322737	40.1261573	64494	Tehama County	California	CA	\N	\N	\N
72075	72	-66.4904965	17.9979735	\N	Juana Díaz Municipio	Puerto Rico	PR	\N	\N	\N
21009	21	-85.9321078	36.9628048	44300	Barren County	Kentucky	KY	\N	\N	\N
47003	47	-86.4582939	35.5136604	50179	Bedford County	Tennessee	TN	\N	\N	\N
31053	31	-96.6458526	41.5770082	36222	Dodge County	Nebraska	NE	\N	\N	\N
41000	41	\N	\N	\N	Oregon Unknown	Oregon	OR	\N	\N	\N
12129	12	-84.3748463	30.139432	34319	Wakulla County	Florida	FL	\N	\N	\N
30065	30	-108.4397631	46.5052807	4669	Musselshell County	Montana	MT	\N	\N	\N
19057	19	-91.1869253	40.9153393	38708	Des Moines County	Iowa	IA	\N	\N	\N
55031	55	-91.8924773	46.4632185	43702	Douglas County	Wisconsin	WI	\N	\N	\N
48003	48	-102.6402058	32.3122581	18879	Andrews County	Texas	TX	\N	\N	\N
18147	18	-87.0103746	38.0096966	20225	Spencer County	Indiana	IN	\N	\N	\N
01077	01	-87.6509966	34.9041221	93368	Lauderdale County	Alabama	AL	\N	\N	\N
13159	13	-83.6891515	33.3169807	14483	Jasper County	Georgia	GA	\N	\N	\N
56025	56	-106.7682192	42.9776447	80815	Natrona County	Wyoming	WY	\N	\N	\N
54063	54	-80.5503295	37.5540622	13229	Monroe County	West Virginia	WV	\N	\N	\N
37167	37	-80.2543742	35.3104492	63239	Stanly County	North Carolina	NC	\N	\N	\N
19015	19	-93.938358	42.038642	26277	Boone County	Iowa	IA	\N	\N	\N
46041	46	-100.8379534	45.148049	5789	Dewey County	South Dakota	SD	\N	\N	\N
29101	29	-93.8118634	38.741528	54219	Johnson County	Missouri	MO	\N	\N	\N
21107	21	-87.5421956	37.3110702	44662	Hopkins County	Kentucky	KY	\N	\N	\N
21023	21	-84.1152351	38.6803649	8286	Bracken County	Kentucky	KY	\N	\N	\N
20027	20	-97.1688527	39.3449643	8025	Clay County	Kansas	KS	\N	\N	\N
55009	55	-87.9961303	44.4740244	264610	Brown County	Wisconsin	WI	\N	\N	\N
08113	08	-108.4272635	38.009319	8105	San Miguel County	Colorado	CO	\N	\N	\N
06063	06	-120.8243709	39.9922953	18967	Plumas County	California	CA	\N	\N	\N
36015	36	-76.7471791	42.1552804	82622	Chemung County	New York	NY	\N	\N	\N
56001	56	-105.7218826	41.6655141	38950	Albany County	Wyoming	WY	\N	\N	\N
29013	29	-94.3392459	38.2572171	16242	Bates County	Missouri	MO	\N	\N	\N
18051	18	-87.5805231	38.3173981	33825	Gibson County	Indiana	IN	\N	\N	\N
45071	45	-81.5996761	34.2898805	38445	Newberry County	South Carolina	SC	\N	\N	\N
08073	08	-103.5075545	38.9937401	5680	Lincoln County	Colorado	CO	\N	\N	\N
01097	01	-88.1965682	30.6845725	412716	Mobile County	Alabama	AL	\N	\N	\N
48039	48	-95.434647	29.1678175	380518	Brazoria County	Texas	TX	\N	\N	\N
19095	19	-92.0591226	41.6839184	16138	Iowa County	Iowa	IA	\N	\N	\N
47131	47	-89.1500236	36.3579958	30131	Obion County	Tennessee	TN	\N	\N	\N
34021	34	-74.703724	40.2825026	367239	Mercer County	New Jersey	NJ	\N	\N	\N
56007	56	-106.9331526	41.7035904	14711	Carbon County	Wyoming	WY	\N	\N	\N
18111	18	-87.4021716	40.9623985	13907	Newton County	Indiana	IN	\N	\N	\N
45067	45	-79.3540014	34.0836195	30158	Marion County	South Carolina	SC	\N	\N	\N
47127	47	-86.358684	35.2888885	6438	Moore County	Tennessee	TN	\N	\N	\N
01069	01	-85.2964111	31.1581831	106580	Houston County	Alabama	AL	\N	\N	\N
08117	08	-106.1375545	39.6210227	30631	Summit County	Colorado	CO	\N	\N	\N
72073	72	-66.58687	18.2111522	\N	Jayuya Municipio	Puerto Rico	PR	\N	\N	\N
38101	38	-101.5405369	48.2166858	68466	Ward County	North Dakota	ND	\N	\N	\N
08055	08	-104.9599278	37.6878154	6883	Huerfano County	Colorado	CO	\N	\N	\N
54081	54	-81.2646719	37.7624694	72920	Raleigh County	West Virginia	WV	\N	\N	\N
01019	01	-85.6542417	34.0695153	26294	Cherokee County	Alabama	AL	\N	\N	\N
21147	21	-84.4910515	36.7311363	17071	McCreary County	Kentucky	KY	\N	\N	\N
53069	53	-123.4244583	46.2946377	4498	Wahkiakum County	Washington	WA	\N	\N	\N
19067	19	-92.7873669	43.052741	15480	Floyd County	Iowa	IA	\N	\N	\N
18053	18	-85.6549455	40.5157575	65225	Grant County	Indiana	IN	\N	\N	\N
56041	56	-110.5589468	41.2847255	20215	Uinta County	Wyoming	WY	\N	\N	\N
02068	02	-150.0270164	63.6820386	2081	Denali Borough	Alaska	AK	\N	\N	\N
39125	39	-84.5821249	41.1189483	18648	Paulding County	Ohio	OH	\N	\N	\N
47000	47	\N	\N	\N	Tennessee Unknown	Tennessee	TN	\N	\N	\N
49001	49	-113.2389481	38.357535	6761	Beaver County	Utah	UT	\N	\N	\N
55067	55	-89.0677254	45.2623814	19119	Langlade County	Wisconsin	WI	\N	\N	\N
13115	13	-85.2136851	34.2636918	98604	Floyd County	Georgia	GA	\N	\N	\N
16019	16	-111.6218783	43.3951708	122134	Bonneville County	Idaho	ID	\N	\N	\N
13181	13	-82.4482992	33.7921507	8031	Lincoln County	Georgia	GA	\N	\N	\N
39117	39	-82.7977288	40.5252659	35411	Morrow County	Ohio	OH	\N	\N	\N
37083	37	-77.6448423	36.2514375	49479	Halifax County	North Carolina	NC	\N	\N	\N
55115	55	-88.7558134	44.7896407	40786	Shawano County	Wisconsin	WI	\N	\N	\N
13105	13	-82.8419087	34.116413	19335	Elbert County	Georgia	GA	\N	\N	\N
18077	18	-85.44009	38.7836039	32110	Jefferson County	Indiana	IN	\N	\N	\N
21211	21	-85.2282471	38.2390111	49611	Shelby County	Kentucky	KY	\N	\N	\N
30029	30	-114.0542951	48.3146779	105851	Flathead County	Montana	MT	\N	\N	\N
27041	27	-95.462156	45.9368293	38328	Douglas County	Minnesota	MN	\N	\N	\N
53071	53	-118.4803697	46.2546057	61292	Walla Walla County	Washington	WA	\N	\N	\N
05043	05	-91.7227781	33.5872418	17977	Drew County	Arkansas	AR	\N	\N	\N
05033	05	-94.2362187	35.5830114	63409	Crawford County	Arkansas	AR	\N	\N	\N
48077	48	-98.2129174	33.7859042	10550	Clay County	Texas	TX	\N	\N	\N
30031	30	-111.1639214	45.5180536	116806	Gallatin County	Montana	MT	\N	\N	\N
27001	27	-93.41976	46.6024464	15848	Aitkin County	Minnesota	MN	\N	\N	\N
06019	06	-119.6550193	36.7610058	1000918	Fresno County	California	CA	\N	\N	\N
31113	31	-100.4436647	41.5421555	747	Logan County	Nebraska	NE	\N	\N	\N
17101	17	-87.7302207	38.7189542	15467	Lawrence County	Illinois	IL	\N	\N	\N
12125	12	-82.366918	30.0542796	15182	Union County	Florida	FL	\N	\N	\N
29213	29	-93.0428188	36.6498267	56104	Taney County	Missouri	MO	\N	\N	\N
17023	17	-87.7916832	39.3323343	15268	Clark County	Illinois	IL	\N	\N	\N
34029	34	-74.2588636	39.865669	614237	Ocean County	New Jersey	NJ	\N	\N	\N
29059	29	-93.0338146	37.6835825	17219	Dallas County	Missouri	MO	\N	\N	\N
22115	22	-93.1815202	31.1105625	47894	Vernon Parish	Louisiana	LA	\N	\N	\N
13277	13	-83.5259307	31.4570027	40719	Tift County	Georgia	GA	\N	\N	\N
51790	51	-79.0618761	38.1579778	25190	Staunton city	Virginia	VA	\N	\N	\N
30000	30	\N	\N	\N	Montana Unknown	Montana	MT	\N	\N	\N
08105	08	-106.453128	37.4858534	11296	Rio Grande County	Colorado	CO	\N	\N	\N
17003	17	-89.3495158	37.1836583	5497	Alexander County	Illinois	IL	\N	\N	\N
16047	16	-114.8214203	42.9731849	15618	Gooding County	Idaho	ID	\N	\N	\N
48503	48	-98.6783895	33.1587778	17904	Young County	Texas	TX	\N	\N	\N
42119	42	-77.0554751	40.962179	44294	Union County	Pennsylvania	PA	\N	\N	\N
31011	31	-98.0704764	41.7039345	5096	Boone County	Nebraska	NE	\N	\N	\N
36023	36	-76.0762398	42.594039	47173	Cortland County	New York	NY	\N	\N	\N
47017	47	-88.4523791	35.9657478	27779	Carroll County	Tennessee	TN	\N	\N	\N
05029	05	-92.6892479	35.265702	21037	Conway County	Arkansas	AR	\N	\N	\N
27103	27	-94.2456844	44.3588204	34482	Nicollet County	Minnesota	MN	\N	\N	\N
30003	30	-107.5181625	45.407869	13063	Big Horn County	Montana	MT	\N	\N	\N
13179	13	-81.4578709	31.8074582	63004	Liberty County	Georgia	GA	\N	\N	\N
17095	17	-90.2137921	40.9309446	49053	Knox County	Illinois	IL	\N	\N	\N
54005	54	-81.7135382	38.0228143	21055	Boone County	West Virginia	WV	\N	\N	\N
17029	17	-88.220782	39.5136797	50383	Coles County	Illinois	IL	\N	\N	\N
54093	54	-79.5599678	39.1111751	6816	Tucker County	West Virginia	WV	\N	\N	\N
48335	48	-100.9243924	32.3041168	8202	Mitchell County	Texas	TX	\N	\N	\N
31131	31	-96.1310274	40.6379916	15965	Otoe County	Nebraska	NE	\N	\N	\N
49031	49	-112.1293755	38.3358805	1473	Piute County	Utah	UT	\N	\N	\N
26049	26	-83.7063718	43.0210768	404794	Genesee County	Michigan	MI	\N	\N	\N
19025	19	-94.6436829	42.3861699	9473	Calhoun County	Iowa	IA	\N	\N	\N
35049	35	-105.9639718	35.5145305	151946	Santa Fe County	New Mexico	NM	\N	\N	\N
18039	18	-85.8639864	41.6006928	206161	Elkhart County	Indiana	IN	\N	\N	\N
21157	21	-88.3327524	36.882017	31163	Marshall County	Kentucky	KY	\N	\N	\N
12001	12	-82.357221	29.6757403	271218	Alachua County	Florida	FL	\N	\N	\N
72037	72	-65.5308947	18.2737491	\N	Ceiba Municipio	Puerto Rico	PR	\N	\N	\N
01123	01	-85.7996176	32.8633076	40133	Tallapoosa County	Alabama	AL	\N	\N	\N
22005	22	-90.9125023	30.2064437	128665	Ascension Parish	Louisiana	LA	\N	\N	\N
41049	41	-119.6023111	45.4254956	11700	Morrow County	Oregon	OR	\N	\N	\N
48107	48	-101.2987099	33.609144	5567	Crosby County	Texas	TX	\N	\N	\N
20161	20	-96.7274889	39.2912114	73202	Riley County	Kansas	KS	\N	\N	\N
51155	51	-80.7134439	37.0633853	33935	Pulaski County	Virginia	VA	\N	\N	\N
17025	17	-88.4823254	38.7468187	13079	Clay County	Illinois	IL	\N	\N	\N
48063	48	-94.979085	32.9745813	13060	Camp County	Texas	TX	\N	\N	\N
40057	40	-99.8441936	34.745971	2557	Harmon County	Oklahoma	OK	\N	\N	\N
32005	32	-119.6090191	38.9051292	49088	Douglas County	Nevada	NV	\N	\N	\N
20205	20	-95.7451749	37.5585146	8362	Wilson County	Kansas	KS	\N	\N	\N
38095	38	-99.2481583	48.6821831	2108	Towner County	North Dakota	ND	\N	\N	\N
02130	02	-131.1066847	55.4499378	13747	Ketchikan Gateway Borough	Alaska	AK	\N	\N	\N
08049	08	-106.1108366	40.1130652	15794	Grand County	Colorado	CO	\N	\N	\N
30107	30	-109.8571467	46.4970466	2157	Wheatland County	Montana	MT	\N	\N	\N
46115	46	-98.3396152	44.9237717	6319	Spink County	South Dakota	SD	\N	\N	\N
48111	48	-102.5940204	36.2863696	7273	Dallam County	Texas	TX	\N	\N	\N
31007	31	-103.7262626	41.5397495	786	Banner County	Nebraska	NE	\N	\N	\N
13311	13	-83.7434165	34.643776	31094	White County	Georgia	GA	\N	\N	\N
51025	51	-77.8614832	36.7642043	16037	Brunswick County	Virginia	VA	\N	\N	\N
48393	48	-100.8366824	35.838596	813	Roberts County	Texas	TX	\N	\N	\N
40073	40	-97.9345565	35.9494357	15806	Kingfisher County	Oklahoma	OK	\N	\N	\N
37163	37	-78.3711743	34.9892978	63382	Sampson County	North Carolina	NC	\N	\N	\N
20047	20	-99.3047457	37.8835945	2750	Edwards County	Kansas	KS	\N	\N	\N
47029	47	-83.1192242	35.916198	36225	Cocke County	Tennessee	TN	\N	\N	\N
45005	45	-81.3632651	32.9797573	8331	Allendale County	South Carolina	SC	\N	\N	\N
55081	55	-90.6199687	43.9451751	46582	Monroe County	Wisconsin	WI	\N	\N	\N
39000	39	\N	\N	\N	Ohio Unknown	Ohio	OH	\N	\N	\N
17153	17	-89.1277549	37.2156152	5201	Pulaski County	Illinois	IL	\N	\N	\N
29195	29	-93.2041639	39.1358403	22858	Saline County	Missouri	MO	\N	\N	\N
28151	28	-90.9444459	33.273174	42837	Washington County	Mississippi	MS	\N	\N	\N
01055	01	-86.0342629	34.0476407	102371	Etowah County	Alabama	AL	\N	\N	\N
23023	23	-69.844227	43.9168446	36044	Sagadahoc County	Maine	ME	\N	\N	\N
22109	22	-90.8436739	29.3341299	109859	Terrebonne Parish	Louisiana	LA	\N	\N	\N
48007	48	-96.9675012	28.1226209	23814	Aransas County	Texas	TX	\N	\N	\N
01047	01	-87.1143556	32.3335397	36098	Dallas County	Alabama	AL	\N	\N	\N
30095	30	-109.3815759	45.6585447	9888	Stillwater County	Montana	MT	\N	\N	\N
39039	39	-84.4864334	41.3216789	37778	Defiance County	Ohio	OH	\N	\N	\N
56023	56	-110.6829614	42.2299932	20253	Lincoln County	Wyoming	WY	\N	\N	\N
40075	40	-98.9816168	34.9214893	8741	Kiowa County	Oklahoma	OK	\N	\N	\N
16087	16	-116.7977917	44.4482229	10360	Washington County	Idaho	ID	\N	\N	\N
24029	24	-76.1259867	39.2412793	19192	Kent County	Maryland	MD	\N	\N	\N
51139	51	-78.4918718	38.6232085	23933	Page County	Virginia	VA	\N	\N	\N
42021	42	-78.7104783	40.5102221	128672	Cambria County	Pennsylvania	PA	\N	\N	\N
48469	48	-96.9711977	28.7963699	91936	Victoria County	Texas	TX	\N	\N	\N
55037	55	-88.4069879	45.8718277	4298	Florence County	Wisconsin	WI	\N	\N	\N
47089	47	-83.4411426	36.0483379	55307	Jefferson County	Tennessee	TN	\N	\N	\N
39135	39	-84.6447584	39.7388104	40836	Preble County	Ohio	OH	\N	\N	\N
72033	72	-66.148819	18.4446135	\N	Cataño Municipio	Puerto Rico	PR	\N	\N	\N
30081	30	-114.105795	46.0777441	45002	Ravalli County	Montana	MT	\N	\N	\N
55055	55	-88.7739847	43.0138045	85038	Jefferson County	Wisconsin	WI	\N	\N	\N
28119	28	-90.2901707	34.2528327	6760	Quitman County	Mississippi	MS	\N	\N	\N
18087	18	-85.4278448	41.6424623	40119	LaGrange County	Indiana	IN	\N	\N	\N
26029	26	-85.450392	45.5131638	26105	Charlevoix County	Michigan	MI	\N	\N	\N
26063	26	-82.8570449	43.907616	30653	Huron County	Michigan	MI	\N	\N	\N
72039	72	-66.5155884	18.2959127	\N	Ciales Municipio	Puerto Rico	PR	\N	\N	\N
48099	48	-97.7980223	31.3911774	76737	Coryell County	Texas	TX	\N	\N	\N
04025	04	-112.5772247	34.631071	240226	Yavapai County	Arizona	AZ	\N	\N	\N
13007	13	-84.4548812	31.3195798	2971	Baker County	Georgia	GA	\N	\N	\N
40041	40	-94.808217	36.3933755	43136	Delaware County	Oklahoma	OK	\N	\N	\N
19151	19	-94.6782789	42.7340333	6607	Pocahontas County	Iowa	IA	\N	\N	\N
04003	04	-109.7751627	31.8401287	127450	Cochise County	Arizona	AZ	\N	\N	\N
31173	31	-96.5339428	42.1540613	7220	Thurston County	Nebraska	NE	\N	\N	\N
22031	22	-93.7407968	32.0592476	27650	De Soto Parish	Louisiana	LA	\N	\N	\N
20193	20	-101.0833859	39.3577126	7702	Thomas County	Kansas	KS	\N	\N	\N
72119	72	-65.7984342	18.3763694	\N	Río Grande Municipio	Puerto Rico	PR	\N	\N	\N
06003	06	-119.7983522	38.6217831	1119	Alpine County	California	CA	\N	\N	\N
51119	51	-76.5280819	37.6069753	10569	Middlesex County	Virginia	VA	\N	\N	\N
41007	41	-123.7050366	46.0245094	40423	Clatsop County	Oregon	OR	\N	\N	\N
39107	39	-84.6320588	40.5353325	41274	Mercer County	Ohio	OH	\N	\N	\N
28137	28	-89.9431054	34.6495527	28539	Tate County	Mississippi	MS	\N	\N	\N
16041	16	-111.8229653	42.1736093	14215	Franklin County	Idaho	ID	\N	\N	\N
72055	72	-66.9229889	17.9480521	\N	Guánica Municipio	Puerto Rico	PR	\N	\N	\N
01129	01	-88.1975644	31.4052172	15976	Washington County	Alabama	AL	\N	\N	\N
48227	48	-101.4387208	32.3034298	36540	Howard County	Texas	TX	\N	\N	\N
13285	13	-85.02836	33.034482	70214	Troup County	Georgia	GA	\N	\N	\N
51131	51	-75.9240177	37.3027754	11673	Northampton County	Virginia	VA	\N	\N	\N
27127	27	-95.2542415	44.4035357	15079	Redwood County	Minnesota	MN	\N	\N	\N
05021	05	-90.4187041	36.3673021	14375	Clay County	Arkansas	AR	\N	\N	\N
45065	45	-82.3161961	33.8975992	9430	McCormick County	South Carolina	SC	\N	\N	\N
42111	42	-79.0284859	39.9812968	72916	Somerset County	Pennsylvania	PA	\N	\N	\N
31117	31	-101.1208507	41.6484137	474	McPherson County	Nebraska	NE	\N	\N	\N
46075	46	-100.6861382	43.951991	938	Jones County	South Dakota	SD	\N	\N	\N
18099	18	-86.2690363	41.3250032	46108	Marshall County	Indiana	IN	\N	\N	\N
31175	31	-98.9834841	41.5640938	4103	Valley County	Nebraska	NE	\N	\N	\N
20197	20	-96.2012619	38.9551537	6906	Wabaunsee County	Kansas	KS	\N	\N	\N
18137	18	-85.2604937	39.1002257	28448	Ripley County	Indiana	IN	\N	\N	\N
40009	40	-99.6900574	35.2706008	21468	Beckham County	Oklahoma	OK	\N	\N	\N
48053	48	-98.2011868	30.7896305	49653	Burnet County	Texas	TX	\N	\N	\N
20135	20	-99.9087452	38.4804369	2768	Ness County	Kansas	KS	\N	\N	\N
27125	27	-96.08718	47.8654866	4046	Red Lake County	Minnesota	MN	\N	\N	\N
53075	53	-117.5353898	46.9059441	49500	Whitman County	Washington	WA	\N	\N	\N
26123	26	-85.7913723	43.5627117	49348	Newaygo County	Michigan	MI	\N	\N	\N
49033	49	-111.2402269	41.6275976	2452	Rich County	Utah	UT	\N	\N	\N
47039	47	-88.1102917	35.6031362	11601	Decatur County	Tennessee	TN	\N	\N	\N
46091	46	-97.5808695	45.7370443	4884	Marshall County	South Dakota	SD	\N	\N	\N
13251	13	-81.6175849	32.7447512	14012	Screven County	Georgia	GA	\N	\N	\N
17047	17	-88.0479408	38.4170954	6356	Edwards County	Illinois	IL	\N	\N	\N
45087	45	-81.6158961	34.6903965	26991	Union County	South Carolina	SC	\N	\N	\N
29127	29	-91.6353791	39.8075383	28423	Marion County	Missouri	MO	\N	\N	\N
54071	54	-79.3406175	38.6744501	6932	Pendleton County	West Virginia	WV	\N	\N	\N
48285	48	-96.9236334	29.3825778	20216	Lavaca County	Texas	TX	\N	\N	\N
47143	47	-84.9495484	35.60059	33443	Rhea County	Tennessee	TN	\N	\N	\N
30089	30	-115.1803062	47.7564968	12157	Sanders County	Montana	MT	\N	\N	\N
40029	40	-96.288039	34.5828612	5587	Coal County	Oklahoma	OK	\N	\N	\N
19069	19	-93.2714152	42.7365451	9971	Franklin County	Iowa	IA	\N	\N	\N
31005	31	-101.6959166	41.5719297	466	Arthur County	Nebraska	NE	\N	\N	\N
48363	48	-98.3179673	32.7522042	29320	Palo Pinto County	Texas	TX	\N	\N	\N
48061	48	-97.4789584	26.1029227	424180	Cameron County	Texas	TX	\N	\N	\N
26119	26	-84.1301067	45.0241337	9337	Montmorency County	Michigan	MI	\N	\N	\N
20195	20	-99.865423	38.9213022	2758	Trego County	Kansas	KS	\N	\N	\N
51678	51	-79.4443196	37.7823316	7279	Lexington city	Virginia	VA	\N	\N	\N
18035	18	-85.3992617	40.2275433	113454	Delaware County	Indiana	IN	\N	\N	\N
46097	46	-97.608122	44.0215411	2202	Miner County	South Dakota	SD	\N	\N	\N
42073	42	-80.3344455	40.9927352	85083	Lawrence County	Pennsylvania	PA	\N	\N	\N
72141	72	-66.7029886	18.270865	\N	Utuado Municipio	Puerto Rico	PR	\N	\N	\N
51159	51	-76.7305609	37.9428936	9071	Richmond County	Virginia	VA	\N	\N	\N
29211	29	-93.1097826	40.209587	6033	Sullivan County	Missouri	MO	\N	\N	\N
01133	01	-87.3653458	34.1545665	23508	Winston County	Alabama	AL	\N	\N	\N
30041	30	-110.106321	48.6319595	16358	Hill County	Montana	MT	\N	\N	\N
31013	31	-103.0817795	42.2103804	10696	Box Butte County	Nebraska	NE	\N	\N	\N
53003	53	-117.2277813	46.1818612	22820	Asotin County	Washington	WA	\N	\N	\N
46025	46	-97.7249124	44.8552107	3802	Clark County	South Dakota	SD	\N	\N	\N
47183	47	-88.7211938	36.3035963	33334	Weakley County	Tennessee	TN	\N	\N	\N
12047	12	-82.9510714	30.4911868	14521	Hamilton County	Florida	FL	\N	\N	\N
53013	53	-117.9116345	46.2928505	4048	Columbia County	Washington	WA	\N	\N	\N
48329	48	-102.0024538	31.8142693	177863	Midland County	Texas	TX	\N	\N	\N
13037	13	-84.6262895	31.521279	6231	Calhoun County	Georgia	GA	\N	\N	\N
39139	39	-82.5427812	40.774159	120891	Richland County	Ohio	OH	\N	\N	\N
02110	02	-134.1784454	58.3729099	31849	Juneau City and Borough	Alaska	AK	\N	\N	\N
02180	02	-164.1889119	64.7836858	9909	Nome Census Area	Alaska	AK	\N	\N	\N
72121	72	-66.9476086	18.0844832	\N	Sabana Grande Municipio	Puerto Rico	PR	\N	\N	\N
29115	29	-93.108019	39.8644404	11830	Linn County	Missouri	MO	\N	\N	\N
48323	48	-100.316678	28.7297873	58378	Maverick County	Texas	TX	\N	\N	\N
49005	49	-111.7453987	41.7341174	130004	Cache County	Utah	UT	\N	\N	\N
17075	17	-87.833601	40.7488665	26711	Iroquois County	Illinois	IL	\N	\N	\N
13207	13	-83.9229376	33.0174352	28042	Monroe County	Georgia	GA	\N	\N	\N
55065	55	-90.1302916	42.6555782	16646	Lafayette County	Wisconsin	WI	\N	\N	\N
18089	18	-87.3743368	41.472247	487536	Lake County	Indiana	IN	\N	\N	\N
48435	48	-100.5133594	30.5221852	3738	Sutton County	Texas	TX	\N	\N	\N
37043	37	-83.7522638	35.0529971	11505	Clay County	North Carolina	NC	\N	\N	\N
13243	13	-84.7523108	31.762651	6682	Randolph County	Georgia	GA	\N	\N	\N
28095	28	-88.4850379	33.8900295	35123	Monroe County	Mississippi	MS	\N	\N	\N
46099	46	-96.7957261	43.6674723	196659	Minnehaha County	South Dakota	SD	\N	\N	\N
48095	48	-99.8636485	31.3188831	2827	Concho County	Texas	TX	\N	\N	\N
27071	27	-93.7828956	48.2453743	12059	Koochiching County	Minnesota	MN	\N	\N	\N
51105	51	-83.1301117	36.7017206	23238	Lee County	Virginia	VA	\N	\N	\N
13237	13	-83.3717898	33.3210605	22520	Putnam County	Georgia	GA	\N	\N	\N
17005	17	-89.4365916	38.885924	16262	Bond County	Illinois	IL	\N	\N	\N
55135	55	-88.9670053	44.4780043	50664	Waupaca County	Wisconsin	WI	\N	\N	\N
13175	13	-82.9263171	32.3932197	47512	Laurens County	Georgia	GA	\N	\N	\N
36123	36	-77.1043238	42.638237	24780	Yates County	New York	NY	\N	\N	\N
40053	40	-97.7881508	36.7882544	4372	Grant County	Oklahoma	OK	\N	\N	\N
47113	47	-88.8334238	35.6060563	98360	Madison County	Tennessee	TN	\N	\N	\N
29087	29	-95.2190716	40.095724	4232	Holt County	Missouri	MO	\N	\N	\N
28063	28	-91.0438779	31.7336333	6997	Jefferson County	Mississippi	MS	\N	\N	\N
46073	46	-98.6231702	44.0634099	1985	Jerauld County	South Dakota	SD	\N	\N	\N
36105	36	-74.7715769	41.7199928	75802	Sullivan County	New York	NY	\N	\N	\N
23025	23	-69.9561096	45.5036458	50635	Somerset County	Maine	ME	\N	\N	\N
05129	05	-92.6958884	35.8963868	7842	Searcy County	Arkansas	AR	\N	\N	\N
28101	28	-89.1184115	32.4019702	20866	Newton County	Mississippi	MS	\N	\N	\N
28021	28	-90.9154239	31.9728096	8911	Claiborne County	Mississippi	MS	\N	\N	\N
51067	51	-79.8827149	36.9911862	56167	Franklin County	Virginia	VA	\N	\N	\N
04013	04	-112.4989297	33.3451756	4579081	Maricopa County	Arizona	AZ	\N	\N	\N
30105	30	-106.6704238	48.3498496	7359	Valley County	Montana	MT	\N	\N	\N
12049	12	-81.8215798	27.4928458	26822	Hardee County	Florida	FL	\N	\N	\N
06097	06	-122.9261095	38.5251824	489819	Sonoma County	California	CA	\N	\N	\N
53073	53	-121.8364325	48.8426531	231016	Whatcom County	Washington	WA	\N	\N	\N
47111	47	-86.0009596	36.5377572	24827	Macon County	Tennessee	TN	\N	\N	\N
38035	38	-97.450851	47.9260026	69481	Grand Forks County	North Dakota	ND	\N	\N	\N
08011	08	-103.0775841	37.9318907	5356	Bent County	Colorado	CO	\N	\N	\N
20009	20	-98.7678374	38.4812394	25658	Barton County	Kansas	KS	\N	\N	\N
01059	01	-87.8428144	34.4419892	31507	Franklin County	Alabama	AL	\N	\N	\N
30077	30	-112.9310998	46.8442254	6817	Powell County	Montana	MT	\N	\N	\N
05113	05	-94.2308841	34.4909149	19707	Polk County	Arkansas	AR	\N	\N	\N
48489	48	-97.5947313	26.4818607	21161	Willacy County	Texas	TX	\N	\N	\N
17137	17	-90.2050054	39.7176678	33400	Morgan County	Illinois	IL	\N	\N	\N
04001	04	-109.4901722	35.385084	71875	Apache County	Arizona	AZ	\N	\N	\N
16033	16	-112.3546128	44.290218	852	Clark County	Idaho	ID	\N	\N	\N
31009	31	-99.9964074	41.931945	457	Blaine County	Nebraska	NE	\N	\N	\N
08019	08	-105.69257	39.669732	9586	Clear Creek County	Colorado	CO	\N	\N	\N
39101	39	-83.1688034	40.5880337	64820	Marion County	Ohio	OH	\N	\N	\N
72053	72	-65.588454	18.3863776	\N	Fajardo Municipio	Puerto Rico	PR	\N	\N	\N
38000	38	\N	\N	\N	North Dakota Unknown	North Dakota	ND	\N	\N	\N
51021	51	-81.1258532	37.1306124	6239	Bland County	Virginia	VA	\N	\N	\N
08033	08	-108.5241156	37.7117226	2096	Dolores County	Colorado	CO	\N	\N	\N
19197	19	-93.7347352	42.7330073	12416	Wright County	Iowa	IA	\N	\N	\N
06035	06	-120.6299518	40.7210862	30016	Lassen County	California	CA	\N	\N	\N
54095	54	-80.8772193	39.465634	8533	Tyler County	West Virginia	WV	\N	\N	\N
48049	48	-98.998456	31.7641372	37633	Brown County	Texas	TX	\N	\N	\N
48119	48	-95.6733504	33.3859329	5349	Delta County	Texas	TX	\N	\N	\N
46065	46	-99.9756842	44.3844521	17336	Hughes County	South Dakota	SD	\N	\N	\N
38017	38	-97.2523747	46.9270033	183904	Cass County	North Dakota	ND	\N	\N	\N
27000	27	\N	\N	\N	Minnesota Unknown	Minnesota	MN	\N	\N	\N
21137	21	-84.6583354	37.4571737	24466	Lincoln County	Kentucky	KY	\N	\N	\N
51163	51	-79.4477537	37.8145174	22757	Rockbridge County	Virginia	VA	\N	\N	\N
38033	38	-103.8446117	46.9389237	1737	Golden Valley County	North Dakota	ND	\N	\N	\N
26023	26	-85.0668852	41.9184551	43424	Branch County	Michigan	MI	\N	\N	\N
13263	13	-84.5300288	32.7046026	6143	Talbot County	Georgia	GA	\N	\N	\N
51069	51	-78.2638291	39.2036601	91119	Frederick County	Virginia	VA	\N	\N	\N
18049	18	-86.265006	41.0503837	20018	Fulton County	Indiana	IN	\N	\N	\N
40089	40	-94.7660863	34.1170728	32772	McCurtain County	Oklahoma	OK	\N	\N	\N
72087	72	-65.90328	18.4750387	\N	Loíza Municipio	Puerto Rico	PR	\N	\N	\N
12003	12	-82.3022838	30.3244416	29566	Baker County	Florida	FL	\N	\N	\N
35011	35	-104.3686961	34.3592729	1673	De Baca County	New Mexico	NM	\N	\N	\N
47129	47	-84.6392616	36.138697	21431	Morgan County	Tennessee	TN	\N	\N	\N
54003	54	-78.0377535	39.4479382	122125	Berkeley County	West Virginia	WV	\N	\N	\N
05127	05	-94.0636413	34.8588693	10164	Scott County	Arkansas	AR	\N	\N	\N
31037	31	-97.0889449	41.57496	10587	Colfax County	Nebraska	NE	\N	\N	\N
20199	20	-101.7711031	38.9266259	1536	Wallace County	Kansas	KS	\N	\N	\N
28147	28	-90.1034306	31.164492	14294	Walthall County	Mississippi	MS	\N	\N	\N
06091	06	-120.5219926	39.5769252	2920	Sierra County	California	CA	\N	\N	\N
13275	13	-83.9198155	30.8646195	44372	Thomas County	Georgia	GA	\N	\N	\N
72105	72	-66.2534399	18.2899204	\N	Naranjito Municipio	Puerto Rico	PR	\N	\N	\N
18173	18	-87.2720486	38.0977282	63269	Warrick County	Indiana	IN	\N	\N	\N
18141	18	-86.2880476	41.6177233	271484	St. Joseph County	Indiana	IN	\N	\N	\N
31033	31	-103.0119289	41.2142358	9111	Cheyenne County	Nebraska	NE	\N	\N	\N
10005	10	-75.3370237	38.6732275	241635	Sussex County	Delaware	DE	\N	\N	\N
20139	20	-95.7082554	38.6502149	15770	Osage County	Kansas	KS	\N	\N	\N
27043	27	-93.9472338	43.6765219	13601	Faribault County	Minnesota	MN	\N	\N	\N
48477	48	-96.4102717	30.2150752	35771	Washington County	Texas	TX	\N	\N	\N
48081	48	-100.6352305	31.8771104	3323	Coke County	Texas	TX	\N	\N	\N
27031	27	-90.2901889	47.538569	5417	Cook County	Minnesota	MN	\N	\N	\N
29069	29	-90.065394	36.3069045	28878	Dunklin County	Missouri	MO	\N	\N	\N
31107	31	-97.8913492	42.6344045	8304	Knox County	Nebraska	NE	\N	\N	\N
23021	23	-69.1022311	45.9156393	16996	Piscataquis County	Maine	ME	\N	\N	\N
25003	25	-73.2179276	42.371493	124571	Berkshire County	Massachusetts	MA	\N	\N	\N
12073	12	-84.2778004	30.4593104	295460	Leon County	Florida	FL	\N	\N	\N
48155	48	-99.8168285	33.9633063	1135	Foard County	Texas	TX	\N	\N	\N
31129	31	-98.0468422	40.1764918	4134	Nuckolls County	Nebraska	NE	\N	\N	\N
38073	38	-97.6475541	46.4492764	5173	Ransom County	North Dakota	ND	\N	\N	\N
46105	46	-102.4679947	45.4833865	2832	Perkins County	South Dakota	SD	\N	\N	\N
18123	18	-86.6265397	38.0814361	19154	Perry County	Indiana	IN	\N	\N	\N
41069	41	-120.0268608	44.7364146	1387	Wheeler County	Oregon	OR	\N	\N	\N
30013	30	-111.3502622	47.3165751	81346	Cascade County	Montana	MT	\N	\N	\N
13235	13	-83.4818454	32.2388026	11191	Pulaski County	Georgia	GA	\N	\N	\N
40095	40	-96.770533	34.0270068	17114	Marshall County	Oklahoma	OK	\N	\N	\N
72043	72	-66.3575862	18.1037997	\N	Coamo Municipio	Puerto Rico	PR	\N	\N	\N
48283	48	-99.0967743	28.3510976	7500	La Salle County	Texas	TX	\N	\N	\N
53015	53	-122.6784596	46.1967854	111371	Cowlitz County	Washington	WA	\N	\N	\N
48217	48	-97.130668	31.9826809	37006	Hill County	Texas	TX	\N	\N	\N
48425	48	-97.7692171	32.2180714	9139	Somervell County	Texas	TX	\N	\N	\N
50023	50	-72.6095138	44.2749884	58328	Washington County	Vermont	VT	\N	\N	\N
17067	17	-91.1688008	40.401318	17422	Hancock County	Illinois	IL	\N	\N	\N
47053	47	-88.9338117	35.9916316	49159	Gibson County	Tennessee	TN	\N	\N	\N
48371	48	-102.7181533	30.773298	15718	Pecos County	Texas	TX	\N	\N	\N
55057	55	-90.1139837	43.9328362	26908	Juneau County	Wisconsin	WI	\N	\N	\N
48249	48	-98.0908141	27.7335157	40452	Jim Wells County	Texas	TX	\N	\N	\N
29093	29	-90.9846823	37.5943638	10098	Iron County	Missouri	MO	\N	\N	\N
21129	21	-83.7192475	37.608116	7268	Lee County	Kentucky	KY	\N	\N	\N
12085	12	-80.3982011	27.0836036	162088	Martin County	Florida	FL	\N	\N	\N
05019	05	-93.1762085	34.0533162	22103	Clark County	Arkansas	AR	\N	\N	\N
28157	28	-91.3246169	31.1610908	8351	Wilkinson County	Mississippi	MS	\N	\N	\N
37093	37	-79.2419635	35.0172328	55830	Hoke County	North Carolina	NC	\N	\N	\N
05071	05	-93.4663223	35.5733586	26513	Johnson County	Arkansas	AR	\N	\N	\N
36077	36	-75.028841	42.6297762	58701	Otsego County	New York	NY	\N	\N	\N
13313	13	-84.968541	34.8017261	103837	Whitfield County	Georgia	GA	\N	\N	\N
28061	28	-89.1194302	32.0169894	16332	Jasper County	Mississippi	MS	\N	\N	\N
18101	18	-86.8018468	38.705322	10079	Martin County	Indiana	IN	\N	\N	\N
16043	16	-111.484429	44.2180909	13218	Fremont County	Idaho	ID	\N	\N	\N
30075	30	-105.555344	45.4089262	1681	Powder River County	Montana	MT	\N	\N	\N
46027	46	-96.980468	42.9161495	14246	Clay County	South Dakota	SD	\N	\N	\N
44000	44	\N	\N	\N	Rhode Island Unknown	Rhode Island	RI	\N	\N	\N
51181	51	-76.8801717	37.1197611	6385	Surry County	Virginia	VA	\N	\N	\N
29159	29	-93.2852073	38.7273667	42490	Pettis County	Missouri	MO	\N	\N	\N
15003	15	-158.1234063	21.5800225	963826	Honolulu County	Hawaii	HI	\N	\N	\N
18007	18	-87.3147862	40.6009394	8741	Benton County	Indiana	IN	\N	\N	\N
13269	13	-84.2514261	32.5546668	8074	Taylor County	Georgia	GA	\N	\N	\N
08093	08	-105.7176479	39.1189141	18955	Park County	Colorado	CO	\N	\N	\N
23009	23	-68.3707034	44.5649063	55088	Hancock County	Maine	ME	\N	\N	\N
27049	27	-92.7160003	44.4061779	46318	Goodhue County	Minnesota	MN	\N	\N	\N
08027	08	-105.3735123	38.1019955	5183	Custer County	Colorado	CO	\N	\N	\N
53025	53	-119.467788	47.2136328	99377	Grant County	Washington	WA	\N	\N	\N
17041	17	-88.2228656	39.766078	19510	Douglas County	Illinois	IL	\N	\N	\N
31127	31	-95.8527214	40.3873891	7044	Nemaha County	Nebraska	NE	\N	\N	\N
20023	20	-101.7273254	39.7899166	2600	Cheyenne County	Kansas	KS	\N	\N	\N
19035	19	-95.6332616	42.7427375	11190	Cherokee County	Iowa	IA	\N	\N	\N
20203	20	-101.3474341	38.4819222	2074	Wichita County	Kansas	KS	\N	\N	\N
19045	19	-90.5342431	41.8980732	46392	Clinton County	Iowa	IA	\N	\N	\N
20087	20	-95.375314	39.239644	19032	Jefferson County	Kansas	KS	\N	\N	\N
13127	13	-81.4964503	31.2127098	85568	Glynn County	Georgia	GA	\N	\N	\N
28055	28	-91.0035351	32.7555393	1220	Issaquena County	Mississippi	MS	\N	\N	\N
20081	20	-100.8799515	37.554979	3923	Haskell County	Kansas	KS	\N	\N	\N
29029	29	-92.7653271	38.0265275	46414	Camden County	Missouri	MO	\N	\N	\N
72117	72	-67.2773016	18.3405618	\N	Rincón Municipio	Puerto Rico	PR	\N	\N	\N
36025	36	-74.9667281	42.1939865	43938	Delaware County	New York	NY	\N	\N	\N
48207	48	-99.730774	33.1759638	5754	Haskell County	Texas	TX	\N	\N	\N
37185	37	-78.0998993	36.3981051	19522	Warren County	North Carolina	NC	\N	\N	\N
18157	18	-86.8935538	40.3891334	196115	Tippecanoe County	Indiana	IN	\N	\N	\N
20055	20	-100.7399674	38.0498075	35917	Finney County	Kansas	KS	\N	\N	\N
31135	31	-101.6274676	40.8576462	2867	Perkins County	Nebraska	NE	\N	\N	\N
16045	16	-116.3987839	44.0614727	18703	Gem County	Idaho	ID	\N	\N	\N
42115	42	-75.8009686	41.8196651	40006	Susquehanna County	Pennsylvania	PA	\N	\N	\N
20035	20	-96.8372468	37.2345068	34628	Cowley County	Kansas	KS	\N	\N	\N
10000	10	\N	\N	\N	Delaware Unknown	Delaware	DE	\N	\N	\N
26103	26	-87.5840278	46.6565964	65834	Marquette County	Michigan	MI	\N	\N	\N
51173	51	-81.5397861	36.8423183	30090	Smyth County	Virginia	VA	\N	\N	\N
19189	19	-93.7434883	43.3781243	10277	Winnebago County	Iowa	IA	\N	\N	\N
18009	18	-85.3237297	40.4726717	11782	Blackford County	Indiana	IN	\N	\N	\N
32029	32	-119.5246462	39.4383853	4207	Storey County	Nevada	NV	\N	\N	\N
48011	48	-101.3566363	34.964179	1869	Armstrong County	Texas	TX	\N	\N	\N
20115	20	-97.1027707	38.3596474	11652	Marion County	Kansas	KS	\N	\N	\N
19017	19	-92.3273559	42.7808946	25311	Bremer County	Iowa	IA	\N	\N	\N
18151	18	-85.0024051	41.643467	34831	Steuben County	Indiana	IN	\N	\N	\N
45051	45	-78.9766749	33.9092694	365449	Horry County	South Carolina	SC	\N	\N	\N
12023	12	-82.6233712	30.2216509	72654	Columbia County	Florida	FL	\N	\N	\N
32510	32	-119.7473681	39.1530598	56034	Carson City	Nevada	NV	\N	\N	\N
47145	47	-84.5239292	35.8472504	53841	Roane County	Tennessee	TN	\N	\N	\N
48123	48	-97.3616543	29.0823457	20174	DeWitt County	Texas	TX	\N	\N	\N
39167	39	-81.4906359	39.4506764	59652	Washington County	Ohio	OH	\N	\N	\N
29209	29	-93.4737009	36.751004	32465	Stone County	Missouri	MO	\N	\N	\N
25011	25	-72.5917921	42.5845038	70267	Franklin County	Massachusetts	MA	\N	\N	\N
02230	02	-135.3382787	59.5603794	1179	Skagway Municipality	Alaska	AK	\N	\N	\N
22077	22	-91.6046207	30.708319	21529	Pointe Coupee Parish	Louisiana	LA	\N	\N	\N
06115	06	-121.3442587	39.27013	80160	Yuba County	California	CA	\N	\N	\N
06059	06	-117.7772068	33.6756872	3166857	Orange County	California	CA	\N	\N	\N
46047	46	-103.5126087	43.2216189	6708	Fall River County	South Dakota	SD	\N	\N	\N
26011	26	-83.7406755	44.0368327	14953	Arenac County	Michigan	MI	\N	\N	\N
29201	29	-89.5680975	37.0477927	38288	Scott County	Missouri	MO	\N	\N	\N
49043	49	-110.9684862	40.8720603	42499	Summit County	Utah	UT	\N	\N	\N
72007	72	-66.1284959	18.2565236	\N	Aguas Buenas Municipio	Puerto Rico	PR	\N	\N	\N
53045	53	-123.1738498	47.3541257	68224	Mason County	Washington	WA	\N	\N	\N
38097	38	-97.1647538	47.4462146	7959	Traill County	North Dakota	ND	\N	\N	\N
54061	54	-80.0590736	39.6336448	106819	Monongalia County	West Virginia	WV	\N	\N	\N
17191	17	-88.4324302	38.4318573	16031	Wayne County	Illinois	IL	\N	\N	\N
72125	72	-67.0372633	18.1077999	\N	San Germán Municipio	Puerto Rico	PR	\N	\N	\N
17161	17	-90.5721252	41.4684205	140907	Rock Island County	Illinois	IL	\N	\N	\N
12061	12	-80.5747894	27.7005283	162518	Indian River County	Florida	FL	\N	\N	\N
08077	08	-108.4605707	39.019524	155603	Mesa County	Colorado	CO	\N	\N	\N
31149	31	-99.4208512	42.394749	1377	Rock County	Nebraska	NE	\N	\N	\N
54089	54	-80.856325	37.6559986	12444	Summers County	West Virginia	WV	\N	\N	\N
54067	54	-80.7975148	38.2914318	24340	Nicholas County	West Virginia	WV	\N	\N	\N
28159	28	-89.0373913	33.0787236	17845	Winston County	Mississippi	MS	\N	\N	\N
21099	21	-85.8821233	37.3090972	19013	Hart County	Kentucky	KY	\N	\N	\N
17065	17	-88.5390093	38.0852273	8084	Hamilton County	Illinois	IL	\N	\N	\N
36035	36	-74.4236782	43.1156093	52812	Fulton County	New York	NY	\N	\N	\N
54105	54	-81.3829749	39.0200337	5705	Wirt County	West Virginia	WV	\N	\N	\N
26107	26	-85.3327509	43.6352949	43907	Mecosta County	Michigan	MI	\N	\N	\N
27047	27	-93.3502887	43.6742019	30364	Freeborn County	Minnesota	MN	\N	\N	\N
42061	42	-77.9685953	40.4223108	44590	Huntingdon County	Pennsylvania	PA	\N	\N	\N
30033	30	-106.9959912	47.2671843	1268	Garfield County	Montana	MT	\N	\N	\N
12099	12	-80.4483542	26.6491257	1507600	Palm Beach County	Florida	FL	\N	\N	\N
46093	46	-102.7141689	44.6052822	28588	Meade County	South Dakota	SD	\N	\N	\N
20071	20	-101.8059697	38.4804041	1196	Greeley County	Kansas	KS	\N	\N	\N
27115	27	-92.7630936	46.1009402	29359	Pine County	Minnesota	MN	\N	\N	\N
51157	51	-78.1688241	38.6845215	7260	Rappahannock County	Virginia	VA	\N	\N	\N
21187	21	-84.8415902	38.4993945	11017	Owen County	Kentucky	KY	\N	\N	\N
18047	18	-85.0669641	39.409762	22761	Franklin County	Indiana	IN	\N	\N	\N
47117	47	-86.765865	35.4683433	35016	Marshall County	Tennessee	TN	\N	\N	\N
51029	51	-78.5291687	37.573928	17168	Buckingham County	Virginia	VA	\N	\N	\N
72153	72	-66.8579009	18.0856688	\N	Yauco Municipio	Puerto Rico	PR	\N	\N	\N
18163	18	-87.5861659	38.0200703	182447	Vanderburgh County	Indiana	IN	\N	\N	\N
13187	13	-83.9989251	34.5681403	34186	Lumpkin County	Georgia	GA	\N	\N	\N
38005	38	-99.3511517	48.071743	6762	Benson County	North Dakota	ND	\N	\N	\N
46043	46	-98.3584331	43.3915064	2906	Douglas County	South Dakota	SD	\N	\N	\N
47101	47	-87.4969827	35.5232441	12363	Lewis County	Tennessee	TN	\N	\N	\N
05107	05	-90.8555931	34.4236874	17299	Phillips County	Arkansas	AR	\N	\N	\N
06039	06	-119.7498023	37.2098213	157761	Madera County	California	CA	\N	\N	\N
26109	26	-87.5018115	45.5362068	22608	Menominee County	Michigan	MI	\N	\N	\N
21027	21	-86.4329188	37.777988	20537	Breckinridge County	Kentucky	KY	\N	\N	\N
30019	30	-105.5417385	48.794429	1638	Daniels County	Montana	MT	\N	\N	\N
08123	08	-104.383666	40.555961	333983	Weld County	Colorado	CO	\N	\N	\N
26061	26	-88.6519034	46.998427	35126	Houghton County	Michigan	MI	\N	\N	\N
28097	28	-89.6396251	33.5007144	9661	Montgomery County	Mississippi	MS	\N	\N	\N
50005	50	-72.1121676	44.4687907	29705	Caledonia County	Vermont	VT	\N	\N	\N
01063	01	-87.9642005	32.8444965	7990	Greene County	Alabama	AL	\N	\N	\N
55071	55	-87.5773525	44.156137	78757	Manitowoc County	Wisconsin	WI	\N	\N	\N
45000	45	\N	\N	\N	South Carolina Unknown	South Carolina	SC	\N	\N	\N
33009	33	-71.8424242	43.9264391	90691	Grafton County	New Hampshire	NH	\N	\N	\N
40139	40	-101.4838549	36.7463169	19997	Texas County	Oklahoma	OK	\N	\N	\N
72133	72	-66.3875885	17.9529217	\N	Santa Isabel Municipio	Puerto Rico	PR	\N	\N	\N
31057	31	-101.6811327	40.180165	1671	Dundy County	Nebraska	NE	\N	\N	\N
29109	29	-93.8305507	37.1065898	38175	Lawrence County	Missouri	MO	\N	\N	\N
48235	48	-100.9813037	31.3034241	1564	Irion County	Texas	TX	\N	\N	\N
39003	39	-84.1061032	40.7716274	101980	Allen County	Ohio	OH	\N	\N	\N
02050	02	-160.1526246	60.9291413	18437	Bethel Census Area	Alaska	AK	\N	\N	\N
20123	20	-98.2073621	39.3930256	5879	Mitchell County	Kansas	KS	\N	\N	\N
31087	31	-101.044217	40.1768964	2773	Hitchcock County	Nebraska	NE	\N	\N	\N
27083	27	-95.8472678	44.4091953	25271	Lyon County	Minnesota	MN	\N	\N	\N
42083	42	-78.5724631	41.8145902	40333	McKean County	Pennsylvania	PA	\N	\N	\N
21065	21	-83.9639825	37.6924493	14109	Estill County	Kentucky	KY	\N	\N	\N
26155	26	-84.1463518	42.9515446	67738	Shiawassee County	Michigan	MI	\N	\N	\N
55101	55	-87.4208775	42.7541215	195802	Racine County	Wisconsin	WI	\N	\N	\N
42033	42	-78.473749	41.0002489	78612	Clearfield County	Pennsylvania	PA	\N	\N	\N
18135	18	-85.0057896	40.1640793	24191	Randolph County	Indiana	IN	\N	\N	\N
09011	09	-72.1086339	41.4726517	264999	New London County	Connecticut	CT	\N	\N	\N
48133	48	-98.8365596	32.3246454	18388	Eastland County	Texas	TX	\N	\N	\N
36021	36	-73.6268057	42.2477288	59534	Columbia County	New York	NY	\N	\N	\N
19111	19	-91.4771574	40.6475875	33480	Lee County	Iowa	IA	\N	\N	\N
26083	26	-88.1487965	47.6819737	2119	Keweenaw County	Michigan	MI	\N	\N	\N
01083	01	-86.9813995	34.8102387	102228	Limestone County	Alabama	AL	\N	\N	\N
31017	31	-99.9239198	42.3595618	2981	Brown County	Nebraska	NE	\N	\N	\N
53041	53	-122.3774443	46.5800714	82109	Lewis County	Washington	WA	\N	\N	\N
46067	46	-97.7493828	43.3367101	7282	Hutchinson County	South Dakota	SD	\N	\N	\N
42031	42	-79.4203691	41.1981594	38305	Clarion County	Pennsylvania	PA	\N	\N	\N
26015	26	-85.3145503	42.5828109	62061	Barry County	Michigan	MI	\N	\N	\N
27095	27	-93.6329964	45.9290434	26146	Mille Lacs County	Minnesota	MN	\N	\N	\N
19079	19	-93.709198	42.3907681	14716	Hamilton County	Iowa	IA	\N	\N	\N
29027	29	-91.9234458	38.835547	44887	Callaway County	Missouri	MO	\N	\N	\N
46083	46	-96.7222862	43.2794204	63019	Lincoln County	South Dakota	SD	\N	\N	\N
08037	08	-106.6951694	39.6269919	54929	Eagle County	Colorado	CO	\N	\N	\N
40065	40	-99.4122347	34.5940059	24305	Jackson County	Oklahoma	OK	\N	\N	\N
28131	28	-89.112297	30.790184	18360	Stone County	Mississippi	MS	\N	\N	\N
19157	19	-92.5228819	41.6845262	18381	Poweshiek County	Iowa	IA	\N	\N	\N
45033	45	-79.3749638	34.3901723	30367	Dillon County	South Carolina	SC	\N	\N	\N
29003	29	-94.8035511	39.9888628	17586	Andrew County	Missouri	MO	\N	\N	\N
48161	48	-96.1449568	31.7017487	19874	Freestone County	Texas	TX	\N	\N	\N
16051	16	-112.3185879	43.7969649	30581	Jefferson County	Idaho	ID	\N	\N	\N
12065	12	-83.8908594	30.4245577	14543	Jefferson County	Florida	FL	\N	\N	\N
12067	12	-83.1785097	29.9900661	8482	Lafayette County	Florida	FL	\N	\N	\N
39121	39	-81.452493	39.7672317	14364	Noble County	Ohio	OH	\N	\N	\N
08121	08	-103.2097445	39.9657899	4875	Washington County	Colorado	CO	\N	\N	\N
29125	29	-91.923601	38.1626154	8795	Maries County	Missouri	MO	\N	\N	\N
20107	20	-94.8449321	38.2165494	9654	Linn County	Kansas	KS	\N	\N	\N
56005	56	-105.5170141	44.1919995	46676	Campbell County	Wyoming	WY	\N	\N	\N
21199	21	-84.5769534	37.1073741	65530	Pulaski County	Kentucky	KY	\N	\N	\N
18125	18	-87.2325472	38.3979613	12378	Pike County	Indiana	IN	\N	\N	\N
19085	19	-95.8271491	41.6885844	13928	Harrison County	Iowa	IA	\N	\N	\N
08021	08	-106.1764473	37.2134065	8143	Conejos County	Colorado	CO	\N	\N	\N
20005	20	-95.3133975	39.5325441	16015	Atchison County	Kansas	KS	\N	\N	\N
24037	24	-76.5303837	38.2202894	114687	St. Mary's County	Maryland	MD	\N	\N	\N
17157	17	-89.8212096	38.0565149	31351	Randolph County	Illinois	IL	\N	\N	\N
21133	21	-82.8612507	37.1185357	21213	Letcher County	Kentucky	KY	\N	\N	\N
55077	55	-89.4090953	43.8260529	15585	Marquette County	Wisconsin	WI	\N	\N	\N
40035	40	-95.2015531	36.7638896	14194	Craig County	Oklahoma	OK	\N	\N	\N
27109	27	-92.4100985	43.9994987	159298	Olmsted County	Minnesota	MN	\N	\N	\N
26075	26	-84.4208679	42.2484738	156920	Jackson County	Michigan	MI	\N	\N	\N
06029	06	-118.7295064	35.3466288	901362	Kern County	California	CA	\N	\N	\N
72115	72	-66.9276025	18.466357	\N	Quebradillas Municipio	Puerto Rico	PR	\N	\N	\N
56003	56	-107.9948477	44.5251167	11575	Big Horn County	Wyoming	WY	\N	\N	\N
29121	29	-92.56434	39.829795	15095	Macon County	Missouri	MO	\N	\N	\N
38021	38	-98.4965182	46.1077559	4705	Dickey County	North Dakota	ND	\N	\N	\N
40101	40	-95.3839106	35.6175506	67610	Muskogee County	Oklahoma	OK	\N	\N	\N
36003	36	-78.0261531	42.2478532	45587	Allegany County	New York	NY	\N	\N	\N
01111	01	-85.4640679	33.2964753	22920	Randolph County	Alabama	AL	\N	\N	\N
42093	42	-76.6652253	41.0292837	18042	Montour County	Pennsylvania	PA	\N	\N	\N
19119	19	-96.2072011	43.3835796	11756	Lyon County	Iowa	IA	\N	\N	\N
48449	48	-94.9667825	33.214599	32926	Titus County	Texas	TX	\N	\N	\N
54035	54	-81.6777168	38.8342339	28453	Jackson County	West Virginia	WV	\N	\N	\N
48347	48	-94.6202497	31.6205598	64753	Nacogdoches County	Texas	TX	\N	\N	\N
13299	13	-82.4215072	31.050881	35826	Ware County	Georgia	GA	\N	\N	\N
08087	08	-103.8122102	40.263159	28941	Morgan County	Colorado	CO	\N	\N	\N
54015	54	-81.0818663	38.4598259	8341	Clay County	West Virginia	WV	\N	\N	\N
31171	31	-100.5247028	41.8557296	739	Thomas County	Nebraska	NE	\N	\N	\N
39131	39	-83.0529107	39.0713413	27695	Pike County	Ohio	OH	\N	\N	\N
21189	21	-83.691637	37.4236223	4331	Owsley County	Kentucky	KY	\N	\N	\N
06045	06	-123.4428811	39.4323876	86061	Mendocino County	California	CA	\N	\N	\N
27121	27	-95.4467052	45.5896228	11277	Pope County	Minnesota	MN	\N	\N	\N
13249	13	-84.3227083	32.2634439	5196	Schley County	Georgia	GA	\N	\N	\N
06093	06	-122.5332868	41.5879861	43245	Siskiyou County	California	CA	\N	\N	\N
38013	38	-102.5200874	48.7864534	2118	Burke County	North Dakota	ND	\N	\N	\N
01095	01	-86.3216681	34.3095637	96990	Marshall County	Alabama	AL	\N	\N	\N
39175	39	-83.313681	40.8397816	21711	Wyandot County	Ohio	OH	\N	\N	\N
02282	02	-140.416942	60.0174528	637	Yakutat City and Borough	Alaska	AK	\N	\N	\N
38065	38	-101.3314198	47.1180789	1926	Oliver County	North Dakota	ND	\N	\N	\N
20117	20	-96.5212426	39.7827091	9652	Marshall County	Kansas	KS	\N	\N	\N
31111	31	-100.7444808	41.0503221	34347	Lincoln County	Nebraska	NE	\N	\N	\N
48073	48	-95.1563425	31.8438807	52875	Cherokee County	Texas	TX	\N	\N	\N
31029	31	-101.6941918	40.5303903	3840	Chase County	Nebraska	NE	\N	\N	\N
46007	46	-101.677181	43.1869121	3399	Bennett County	South Dakota	SD	\N	\N	\N
17033	17	-87.7606193	39.0027865	18512	Crawford County	Illinois	IL	\N	\N	\N
39077	39	-82.594641	41.1450798	57979	Huron County	Ohio	OH	\N	\N	\N
37089	37	-82.4797406	35.3364146	118445	Henderson County	North Carolina	NC	\N	\N	\N
32017	32	-114.8630367	37.634605	5159	Lincoln County	Nevada	NV	\N	\N	\N
53059	53	-121.9532319	46.0247853	12107	Skamania County	Washington	WA	\N	\N	\N
51007	51	-77.9774619	37.3319271	13014	Amelia County	Virginia	VA	\N	\N	\N
37149	37	-82.1676211	35.2779011	21030	Polk County	North Carolina	NC	\N	\N	\N
06055	06	-122.3259045	38.5070999	135965	Napa County	California	CA	\N	\N	\N
19031	19	-91.1326105	41.77236	18485	Cedar County	Iowa	IA	\N	\N	\N
49045	49	-113.1239786	40.4677525	74512	Tooele County	Utah	UT	\N	\N	\N
55061	55	-87.1633039	44.5010324	20386	Kewaunee County	Wisconsin	WI	\N	\N	\N
30047	30	-114.0836866	47.6429007	30986	Lake County	Montana	MT	\N	\N	\N
17115	17	-88.9615288	39.8602372	103015	Macon County	Illinois	IL	\N	\N	\N
29215	29	-91.9644783	37.3142565	25112	Texas County	Missouri	MO	\N	\N	\N
46051	46	-96.7722606	45.1726366	7000	Grant County	South Dakota	SD	\N	\N	\N
55025	55	-89.4178523	43.0674684	552536	Dane County	Wisconsin	WI	\N	\N	\N
51111	51	-78.2405281	36.9455547	12267	Lunenburg County	Virginia	VA	\N	\N	\N
08107	08	-106.9877021	40.4836638	25560	Routt County	Colorado	CO	\N	\N	\N
40019	40	-97.2879273	34.2518484	48353	Carter County	Oklahoma	OK	\N	\N	\N
01119	01	-88.2000571	32.5974811	12225	Sumter County	Alabama	AL	\N	\N	\N
47023	47	-88.6113533	35.420253	17432	Chester County	Tennessee	TN	\N	\N	\N
13189	13	-82.4787331	33.4796231	21162	McDuffie County	Georgia	GA	\N	\N	\N
28041	28	-88.6348108	31.2128455	13477	Greene County	Mississippi	MS	\N	\N	\N
37181	37	-78.4054343	36.3654806	44718	Vance County	North Carolina	NC	\N	\N	\N
20163	20	-99.3244921	39.3460064	4827	Rooks County	Kansas	KS	\N	\N	\N
27035	27	-94.0707182	46.4916528	65644	Crow Wing County	Minnesota	MN	\N	\N	\N
28153	28	-88.678214	31.642503	20317	Wayne County	Mississippi	MS	\N	\N	\N
48097	48	-97.2103433	33.6391964	41393	Cooke County	Texas	TX	\N	\N	\N
19061	19	-90.8787708	42.4634808	97590	Dubuque County	Iowa	IA	\N	\N	\N
55005	55	-91.8528921	45.4371917	45090	Barron County	Wisconsin	WI	\N	\N	\N
26127	26	-86.8075751	43.6472546	26819	Oceana County	Michigan	MI	\N	\N	\N
01107	01	-88.0968631	33.2967933	19793	Pickens County	Alabama	AL	\N	\N	\N
40067	40	-97.8388896	34.1050824	5949	Jefferson County	Oklahoma	OK	\N	\N	\N
35031	35	-108.2532659	35.5838784	70824	McKinley County	New Mexico	NM	\N	\N	\N
72059	72	-66.7982933	18.0053378	\N	Guayanilla Municipio	Puerto Rico	PR	\N	\N	\N
46095	46	-100.7609555	43.5846896	2089	Mellette County	South Dakota	SD	\N	\N	\N
54097	54	-80.2316057	38.9025302	24230	Upshur County	West Virginia	WV	\N	\N	\N
48385	48	-99.812549	29.8300967	3411	Real County	Texas	TX	\N	\N	\N
02170	02	-149.6190939	62.2790939	110213	Matanuska-Susitna Borough	Alaska	AK	\N	\N	\N
40127	40	-95.4080818	34.377899	10970	Pushmataha County	Oklahoma	OK	\N	\N	\N
31019	31	-99.0749833	40.855226	50114	Buffalo County	Nebraska	NE	\N	\N	\N
26117	26	-85.1494679	43.3127822	63476	Montcalm County	Michigan	MI	\N	\N	\N
05063	05	-91.5599423	35.7374992	37757	Independence County	Arkansas	AR	\N	\N	\N
12121	12	-82.9927542	30.1892438	44851	Suwannee County	Florida	FL	\N	\N	\N
22059	22	-92.1615956	31.6800826	15021	LaSalle Parish	Louisiana	LA	\N	\N	\N
55125	55	-89.501254	46.049848	22356	Vilas County	Wisconsin	WI	\N	\N	\N
31155	31	-96.6420968	41.2233882	21927	Saunders County	Nebraska	NE	\N	\N	\N
47161	47	-87.8118894	36.4584642	13859	Stewart County	Tennessee	TN	\N	\N	\N
29129	29	-93.5676313	40.4214135	3558	Mercer County	Missouri	MO	\N	\N	\N
13005	13	-82.4514325	31.5502095	11036	Bacon County	Georgia	GA	\N	\N	\N
39151	39	-81.3656673	40.8141314	369772	Stark County	Ohio	OH	\N	\N	\N
28027	28	-90.603165	34.2286699	21564	Coahoma County	Mississippi	MS	\N	\N	\N
28079	28	-89.5222495	32.7606302	22741	Leake County	Mississippi	MS	\N	\N	\N
16000	16	\N	\N	\N	Idaho Unknown	Idaho	ID	\N	\N	\N
06095	06	-121.939594	38.2672255	446935	Solano County	California	CA	\N	\N	\N
13143	13	-85.2200629	33.7951646	30383	Haralson County	Georgia	GA	\N	\N	\N
40055	40	-99.5529675	34.9338533	5704	Greer County	Oklahoma	OK	\N	\N	\N
56029	56	-109.5935975	44.4923865	29331	Park County	Wyoming	WY	\N	\N	\N
12033	12	-87.3388996	30.6116382	322364	Escambia County	Florida	FL	\N	\N	\N
28081	28	-88.6824388	34.2923703	85466	Lee County	Mississippi	MS	\N	\N	\N
25000	25	\N	\N	\N	Massachusetts Unknown	Massachusetts	MA	\N	\N	\N
26095	26	-85.5823683	46.9406018	6126	Luce County	Michigan	MI	\N	\N	\N
27169	27	-91.7767076	43.9822682	50485	Winona County	Minnesota	MN	\N	\N	\N
08017	08	-102.6017914	38.8356456	1795	Cheyenne County	Colorado	CO	\N	\N	\N
30053	30	-115.4631849	48.5523847	20343	Lincoln County	Montana	MT	\N	\N	\N
16069	16	-116.7609091	46.3337914	40755	Nez Perce County	Idaho	ID	\N	\N	\N
17159	17	-88.0854523	38.7121872	15507	Richland County	Illinois	IL	\N	\N	\N
37139	37	-76.2606906	36.265199	40372	Pasquotank County	North Carolina	NC	\N	\N	\N
20025	20	-99.8138686	37.2338311	1963	Clark County	Kansas	KS	\N	\N	\N
49015	49	-110.7210999	39.0090246	10147	Emery County	Utah	UT	\N	\N	\N
02016	02	179.6211882	51.948964	5680	Aleutians West Census Area	Alaska	AK	\N	\N	\N
39067	39	-81.0915651	40.2923175	15014	Harrison County	Ohio	OH	\N	\N	\N
33019	33	-72.2220839	43.3611883	43267	Sullivan County	New Hampshire	NH	\N	\N	\N
48447	48	-99.205796	33.1706954	1487	Throckmorton County	Texas	TX	\N	\N	\N
17009	17	-90.7503095	39.9620694	6546	Brown County	Illinois	IL	\N	\N	\N
47115	47	-85.618399	35.1334215	28924	Marion County	Tennessee	TN	\N	\N	\N
12107	12	-81.7320389	29.5938964	74815	Putnam County	Florida	FL	\N	\N	\N
35033	35	-104.9218975	35.9828413	4478	Mora County	New Mexico	NM	\N	\N	\N
05009	05	-93.0792364	36.3042991	37625	Boone County	Arkansas	AR	\N	\N	\N
18000	18	\N	\N	\N	Indiana Unknown	Indiana	IN	\N	\N	\N
28125	28	-90.8276129	32.8923946	4160	Sharkey County	Mississippi	MS	\N	\N	\N
40133	40	-96.6028575	35.1583657	24248	Seminole County	Oklahoma	OK	\N	\N	\N
17069	17	-88.2661478	37.5178517	3808	Hardin County	Illinois	IL	\N	\N	\N
08109	08	-106.2346662	38.0316514	6938	Saguache County	Colorado	CO	\N	\N	\N
40121	40	-95.7481302	34.9255401	43679	Pittsburg County	Oklahoma	OK	\N	\N	\N
34011	34	-75.1216277	39.3284336	147008	Cumberland County	New Jersey	NJ	\N	\N	\N
46009	46	-97.8841987	42.985799	6848	Bon Homme County	South Dakota	SD	\N	\N	\N
20129	20	-101.8095163	37.1852495	2538	Morton County	Kansas	KS	\N	\N	\N
29091	29	-91.8873677	36.7743685	40262	Howell County	Missouri	MO	\N	\N	\N
48089	48	-96.5089347	29.596296	21610	Colorado County	Texas	TX	\N	\N	\N
51081	51	-77.5602774	36.6803363	11280	Greensville County	Virginia	VA	\N	\N	\N
18169	18	-85.7951915	40.8437475	30784	Wabash County	Indiana	IN	\N	\N	\N
56037	56	-108.8756774	41.6603282	42673	Sweetwater County	Wyoming	WY	\N	\N	\N
27069	27	-96.7803493	48.7760403	4214	Kittson County	Minnesota	MN	\N	\N	\N
26055	26	-85.5538484	44.7186875	93592	Grand Traverse County	Michigan	MI	\N	\N	\N
28000	28	\N	\N	\N	Mississippi Unknown	Mississippi	MS	\N	\N	\N
24019	24	-76.0474333	38.4291957	31853	Dorchester County	Maryland	MD	\N	\N	\N
28037	28	-90.8954573	31.4777726	7657	Franklin County	Mississippi	MS	\N	\N	\N
37105	37	-79.1721174	35.4763365	62353	Lee County	North Carolina	NC	\N	\N	\N
37123	37	-79.9066023	35.3344151	27238	Montgomery County	North Carolina	NC	\N	\N	\N
01087	01	-85.692887	32.3870267	17895	Macon County	Alabama	AL	\N	\N	\N
21143	21	-88.0833909	37.0239759	8133	Lyon County	Kentucky	KY	\N	\N	\N
20037	20	-94.8538967	37.5058215	38730	Crawford County	Kansas	KS	\N	\N	\N
40033	40	-98.3734379	34.290676	5676	Cotton County	Oklahoma	OK	\N	\N	\N
13229	13	-82.2103703	31.353998	19522	Pierce County	Georgia	GA	\N	\N	\N
48443	48	-102.0725126	30.2323427	702	Terrell County	Texas	TX	\N	\N	\N
22000	22	\N	\N	\N	Louisiana Unknown	Louisiana	LA	\N	\N	\N
39141	39	-83.0595362	39.3238969	76420	Ross County	Ohio	OH	\N	\N	\N
46103	46	-102.8238015	44.0023492	115926	Pennington County	South Dakota	SD	\N	\N	\N
42001	42	-77.2177296	39.8694707	102742	Adams County	Pennsylvania	PA	\N	\N	\N
17173	17	-88.7988615	39.3849258	21299	Shelby County	Illinois	IL	\N	\N	\N
42117	42	-77.2572881	41.7668593	40381	Tioga County	Pennsylvania	PA	\N	\N	\N
41015	41	-124.2109292	42.4664387	23305	Curry County	Oregon	OR	\N	\N	\N
08029	08	-107.8648924	38.8615949	31067	Delta County	Colorado	CO	\N	\N	\N
28117	28	-88.5221836	34.6205664	25013	Prentiss County	Mississippi	MS	\N	\N	\N
23003	23	-68.6124095	46.7091929	66804	Aroostook County	Maine	ME	\N	\N	\N
72027	72	-66.863134	18.4454691	\N	Camuy Municipio	Puerto Rico	PR	\N	\N	\N
17109	17	-90.6789543	40.4558082	29295	McDonough County	Illinois	IL	\N	\N	\N
55053	55	-90.7995104	44.3245897	20630	Jackson County	Wisconsin	WI	\N	\N	\N
39075	39	-81.9300012	40.5655971	44004	Holmes County	Ohio	OH	\N	\N	\N
05123	05	-90.7515053	35.0228383	24682	St. Francis County	Arkansas	AR	\N	\N	\N
29301	29	\N	\N	\N	Missouri Unknown 3	Missouri	MO	\N	\N	\N
27131	27	-93.2985052	44.3507339	67084	Rice County	Minnesota	MN	\N	\N	\N
05065	05	-91.9136252	36.0948792	13613	Izard County	Arkansas	AR	\N	\N	\N
36019	36	-73.7056429	44.752712	79778	Clinton County	New York	NY	\N	\N	\N
17091	17	-87.8611165	41.1395105	108594	Kankakee County	Illinois	IL	\N	\N	\N
45059	45	-82.0054976	34.4836761	67883	Laurens County	South Carolina	SC	\N	\N	\N
51113	51	-78.2769614	38.4120586	13312	Madison County	Virginia	VA	\N	\N	\N
31069	31	-102.3029845	41.6333638	1847	Garden County	Nebraska	NE	\N	\N	\N
31077	31	-98.5305655	41.5675715	2319	Greeley County	Nebraska	NE	\N	\N	\N
48191	48	-100.7638926	34.6556227	2939	Hall County	Texas	TX	\N	\N	\N
28143	28	-90.3717697	34.6522011	9392	Tunica County	Mississippi	MS	\N	\N	\N
17001	17	-91.1949607	39.9860525	64783	Adams County	Illinois	IL	\N	\N	\N
12007	12	-82.1666793	29.9523863	28593	Bradford County	Florida	FL	\N	\N	\N
47141	47	-85.4961801	36.1409404	80929	Putnam County	Tennessee	TN	\N	\N	\N
49021	49	-113.3067405	37.9093044	56814	Iron County	Utah	UT	\N	\N	\N
45029	45	-80.6552438	32.8350184	37481	Colleton County	South Carolina	SC	\N	\N	\N
06107	06	-118.7810551	36.2288339	468680	Tulare County	California	CA	\N	\N	\N
55095	55	-92.447066	45.4620407	43794	Polk County	Wisconsin	WI	\N	\N	\N
20001	20	-95.3009448	37.8842285	12399	Allen County	Kansas	KS	\N	\N	\N
48043	48	-103.2524579	29.8089965	9237	Brewster County	Texas	TX	\N	\N	\N
20097	20	-99.2865389	37.5612311	2456	Kiowa County	Kansas	KS	\N	\N	\N
12093	12	-80.8873884	27.3855924	42297	Okeechobee County	Florida	FL	\N	\N	\N
22039	22	-92.4040858	30.7206932	33276	Evangeline Parish	Louisiana	LA	\N	\N	\N
48265	48	-99.3533388	30.059953	52869	Kerr County	Texas	TX	\N	\N	\N
48373	48	-94.8373376	30.7845525	52995	Polk County	Texas	TX	\N	\N	\N
21055	21	-88.1050103	37.3581494	8847	Crittenden County	Kentucky	KY	\N	\N	\N
55127	55	-88.5417306	42.6681095	103953	Walworth County	Wisconsin	WI	\N	\N	\N
20017	20	-96.5940289	38.2994749	2586	Chase County	Kansas	KS	\N	\N	\N
53053	53	-122.1532402	47.0514128	913890	Pierce County	Washington	WA	\N	\N	\N
37091	37	-76.981616	36.3635174	23108	Hertford County	North Carolina	NC	\N	\N	\N
29137	29	-92.0064582	39.4982695	8672	Monroe County	Missouri	MO	\N	\N	\N
28161	28	-89.7038072	34.0306661	11982	Yalobusha County	Mississippi	MS	\N	\N	\N
29019	29	-92.3102022	38.9898614	182991	Boone County	Missouri	MO	\N	\N	\N
01041	01	-86.3192219	31.7328256	13681	Crenshaw County	Alabama	AL	\N	\N	\N
12009	12	-80.7003334	28.2983112	608459	Brevard County	Florida	FL	\N	\N	\N
05015	05	-93.5409718	36.3373704	28276	Carroll County	Arkansas	AR	\N	\N	\N
39149	39	-84.2041425	40.3366802	48337	Shelby County	Ohio	OH	\N	\N	\N
24047	24	-75.3099315	38.2221332	52403	Worcester County	Maryland	MD	\N	\N	\N
13199	13	-84.6670579	33.0292666	21164	Meriwether County	Georgia	GA	\N	\N	\N
10003	10	-75.6441324	39.5759152	561531	New Castle County	Delaware	DE	\N	\N	\N
19063	19	-94.6693702	43.3779844	9095	Emmet County	Iowa	IA	\N	\N	\N
17021	17	-89.2795927	39.5455242	32075	Christian County	Illinois	IL	\N	\N	\N
42087	42	-77.6518322	40.6016153	46064	Mifflin County	Pennsylvania	PA	\N	\N	\N
18091	18	-86.7447386	41.5490129	109663	LaPorte County	Indiana	IN	\N	\N	\N
12075	12	-82.783462	29.2844566	42214	Levy County	Florida	FL	\N	\N	\N
28163	28	-90.3879282	32.7656747	26982	Yazoo County	Mississippi	MS	\N	\N	\N
46079	46	-97.1232229	44.0284497	12488	Lake County	South Dakota	SD	\N	\N	\N
31047	31	-99.8151537	40.8673784	23510	Dawson County	Nebraska	NE	\N	\N	\N
31083	31	-99.4034177	40.1787663	3311	Harlan County	Nebraska	NE	\N	\N	\N
40015	40	-98.3810447	35.1679202	28684	Caddo County	Oklahoma	OK	\N	\N	\N
24015	24	-75.9415852	39.5623537	103419	Cecil County	Maryland	MD	\N	\N	\N
51197	51	-81.0830007	36.8998674	28620	Wythe County	Virginia	VA	\N	\N	\N
05091	05	-93.9015018	33.3055054	43177	Miller County	Arkansas	AR	\N	\N	\N
38031	38	-98.8728755	47.4714315	3165	Foster County	North Dakota	ND	\N	\N	\N
38019	38	-98.4637903	48.7684388	3713	Cavalier County	North Dakota	ND	\N	\N	\N
18093	18	-86.4878198	38.8398148	45496	Lawrence County	Indiana	IN	\N	\N	\N
55121	55	-91.3588668	44.3030501	29681	Trempealeau County	Wisconsin	WI	\N	\N	\N
40031	40	-98.4766117	34.66263	121099	Comanche County	Oklahoma	OK	\N	\N	\N
48023	48	-99.2081888	33.6188024	3518	Baylor County	Texas	TX	\N	\N	\N
17139	17	-88.6257259	39.6368956	14347	Moultrie County	Illinois	IL	\N	\N	\N
17195	17	-89.9110045	41.7506733	54656	Whiteside County	Illinois	IL	\N	\N	\N
54075	54	-80.0101207	38.332606	8190	Pocahontas County	West Virginia	WV	\N	\N	\N
27107	27	-96.4637757	47.3294529	6338	Norman County	Minnesota	MN	\N	\N	\N
19001	19	-94.4781643	41.3285283	7059	Adair County	Iowa	IA	\N	\N	\N
27061	27	-93.6111022	47.4908166	45268	Itasca County	Minnesota	MN	\N	\N	\N
42015	42	-76.5021231	41.7915044	60221	Bradford County	Pennsylvania	PA	\N	\N	\N
72123	72	-66.2622515	17.9714853	\N	Salinas Municipio	Puerto Rico	PR	\N	\N	\N
55029	55	-87.0486828	45.0934165	27889	Door County	Wisconsin	WI	\N	\N	\N
72049	72	-65.30772	18.3265989	\N	Culebra Municipio	Puerto Rico	PR	\N	\N	\N
13031	13	-81.744021	32.3917111	80839	Bulloch County	Georgia	GA	\N	\N	\N
06037	06	-118.2618616	34.1963983	9943046	Los Angeles County	California	CA	\N	\N	\N
31043	31	-96.5613555	42.3916449	20070	Dakota County	Nebraska	NE	\N	\N	\N
37079	37	-77.6816876	35.481959	20928	Greene County	North Carolina	NC	\N	\N	\N
42039	42	-80.107795	41.687876	83697	Crawford County	Pennsylvania	PA	\N	\N	\N
51660	51	-78.8733028	38.4362547	53204	Harrisonburg city	Virginia	VA	\N	\N	\N
29025	29	-93.9791785	39.6589977	9051	Caldwell County	Missouri	MO	\N	\N	\N
29033	29	-93.5002266	39.4273754	8554	Carroll County	Missouri	MO	\N	\N	\N
22047	22	-91.3658481	30.2706285	32070	Iberville Parish	Louisiana	LA	\N	\N	\N
08089	08	-103.7212597	37.8841698	18201	Otero County	Colorado	CO	\N	\N	\N
21201	21	-84.06423	38.5134727	2136	Robertson County	Kentucky	KY	\N	\N	\N
26069	26	-82.8494444	44.3294821	25140	Iosco County	Michigan	MI	\N	\N	\N
31067	31	-96.6834528	40.2552337	21431	Gage County	Nebraska	NE	\N	\N	\N
29021	29	-94.8081728	39.6603695	86530	Buchanan County	Missouri	MO	\N	\N	\N
29105	29	-92.594843	37.6596977	35895	Laclede County	Missouri	MO	\N	\N	\N
28065	28	-89.8270863	31.5648075	10890	Jefferson Davis County	Mississippi	MS	\N	\N	\N
38027	38	-98.9004745	47.7234355	2179	Eddy County	North Dakota	ND	\N	\N	\N
17187	17	-90.6202228	40.8504412	16696	Warren County	Illinois	IL	\N	\N	\N
46049	46	-99.1535637	45.0654764	2306	Faulk County	South Dakota	SD	\N	\N	\N
31121	31	-98.0310573	41.1697896	7809	Merrick County	Nebraska	NE	\N	\N	\N
17127	17	-88.7056578	37.216119	13636	Massac County	Illinois	IL	\N	\N	\N
45013	45	-80.6894218	32.358112	195656	Beaufort County	South Carolina	SC	\N	\N	\N
45069	45	-79.6794351	34.60167	25581	Marlboro County	South Carolina	SC	\N	\N	\N
05011	05	-92.1691559	33.4665491	10639	Bradley County	Arkansas	AR	\N	\N	\N
17073	17	-90.1308378	41.3500209	48411	Henry County	Illinois	IL	\N	\N	\N
40107	40	-96.3277619	35.466804	11765	Okfuskee County	Oklahoma	OK	\N	\N	\N
48319	48	-99.2373018	30.7039159	4344	Mason County	Texas	TX	\N	\N	\N
40001	40	-94.6510258	35.8980428	21955	Adair County	Oklahoma	OK	\N	\N	\N
23001	23	-70.2074347	44.1676811	108547	Androscoggin County	Maine	ME	\N	\N	\N
40059	40	-99.6628052	36.8003504	3611	Harper County	Oklahoma	OK	\N	\N	\N
21223	21	-85.3512075	38.6200401	8481	Trimble County	Kentucky	KY	\N	\N	\N
36087	36	-74.0246616	41.1546276	326225	Rockland County	New York	NY	\N	\N	\N
29187	29	-90.4738684	37.8107068	66485	St. Francois County	Missouri	MO	\N	\N	\N
20085	20	-95.794485	39.4111453	13171	Jackson County	Kansas	KS	\N	\N	\N
46127	46	-96.6508287	42.8311064	16192	Union County	South Dakota	SD	\N	\N	\N
42085	42	-80.2527863	41.3000142	108545	Mercer County	Pennsylvania	PA	\N	\N	\N
56009	56	-105.5247521	42.9846234	13804	Converse County	Wyoming	WY	\N	\N	\N
55003	55	-90.6796907	46.5444245	15415	Ashland County	Wisconsin	WI	\N	\N	\N
01067	01	-85.2399712	31.5169779	17223	Henry County	Alabama	AL	\N	\N	\N
47051	47	-86.0992032	35.1559259	42485	Franklin County	Tennessee	TN	\N	\N	\N
40005	40	-96.0365577	34.3924691	13912	Atoka County	Oklahoma	OK	\N	\N	\N
45025	45	-80.1592269	34.6370178	45606	Chesterfield County	South Carolina	SC	\N	\N	\N
12021	12	-81.4009553	26.118786	392973	Collier County	Florida	FL	\N	\N	\N
26143	26	-84.6112715	44.3395168	23986	Roscommon County	Michigan	MI	\N	\N	\N
06007	06	-121.6019188	39.6659588	212744	Butte County	California	CA	\N	\N	\N
42105	42	-77.8944358	41.7485866	16453	Potter County	Pennsylvania	PA	\N	\N	\N
29009	29	-93.8343344	36.6993756	35818	Barry County	Missouri	MO	\N	\N	\N
21217	21	-85.3280585	37.3662101	25707	Taylor County	Kentucky	KY	\N	\N	\N
47005	47	-88.0712321	36.0709478	16131	Benton County	Tennessee	TN	\N	\N	\N
29207	29	-89.9474812	36.8515565	29001	Stoddard County	Missouri	MO	\N	\N	\N
28071	28	-89.4853847	34.353078	54408	Lafayette County	Mississippi	MS	\N	\N	\N
22003	22	-92.8196052	30.6527435	25440	Allen Parish	Louisiana	LA	\N	\N	\N
17113	17	-88.8445391	40.4945594	171256	McLean County	Illinois	IL	\N	\N	\N
27149	27	-95.9923146	45.5934609	9765	Stevens County	Minnesota	MN	\N	\N	\N
18177	18	-85.0067351	39.8630908	65778	Wayne County	Indiana	IN	\N	\N	\N
46087	46	-97.3580479	43.6804155	5520	McCook County	South Dakota	SD	\N	\N	\N
19175	19	-94.2450907	41.0285502	12157	Union County	Iowa	IA	\N	\N	\N
33001	33	-71.4253661	43.5191091	61551	Belknap County	New Hampshire	NH	\N	\N	\N
34000	34	\N	\N	\N	New Jersey Unknown	New Jersey	NJ	\N	\N	\N
41027	41	-121.6559762	45.5117753	23280	Hood River County	Oregon	OR	\N	\N	\N
28039	28	-88.6422679	30.8554305	24425	George County	Mississippi	MS	\N	\N	\N
18071	18	-86.0425161	38.9119571	44222	Jackson County	Indiana	IN	\N	\N	\N
21059	21	-87.087139	37.731671	101978	Daviess County	Kentucky	KY	\N	\N	\N
54055	54	-81.106456	37.4034477	58258	Mercer County	West Virginia	WV	\N	\N	\N
31159	31	-97.140383	40.8719439	17186	Seward County	Nebraska	NE	\N	\N	\N
19055	19	-91.3667667	42.4729373	16937	Delaware County	Iowa	IA	\N	\N	\N
40149	40	-98.9914359	35.2894967	10830	Washita County	Oklahoma	OK	\N	\N	\N
28017	28	-88.9475579	33.9332767	16951	Chickasaw County	Mississippi	MS	\N	\N	\N
04021	04	-111.3663396	32.9185209	480828	Pinal County	Arizona	AZ	\N	\N	\N
27075	27	-91.4117038	47.5171114	10639	Lake County	Minnesota	MN	\N	\N	\N
37039	37	-84.0614491	35.1371499	29073	Cherokee County	North Carolina	NC	\N	\N	\N
19149	19	-96.2158638	42.7375854	25219	Plymouth County	Iowa	IA	\N	\N	\N
49017	49	-111.4509076	37.8316645	5050	Garfield County	Utah	UT	\N	\N	\N
46077	46	-97.499313	44.3629687	4987	Kingsbury County	South Dakota	SD	\N	\N	\N
22053	22	-92.8162205	30.2695293	31208	Jefferson Davis Parish	Louisiana	LA	\N	\N	\N
38081	38	-97.6300507	46.1082035	3913	Sargent County	North Dakota	ND	\N	\N	\N
20105	20	-98.2142837	39.0472801	2986	Lincoln County	Kansas	KS	\N	\N	\N
41029	41	-122.6756106	42.4116214	221844	Jackson County	Oregon	OR	\N	\N	\N
48451	48	-100.4637879	31.3988233	120010	Tom Green County	Texas	TX	\N	\N	\N
21203	21	-84.3143684	37.3610502	16750	Rockcastle County	Kentucky	KY	\N	\N	\N
08025	08	-103.7727363	38.3061801	5696	Crowley County	Colorado	CO	\N	\N	\N
05095	05	-91.2033099	34.6795117	6584	Monroe County	Arkansas	AR	\N	\N	\N
45011	45	-81.4342278	33.2605516	20805	Barnwell County	South Carolina	SC	\N	\N	\N
19195	19	-93.2485332	43.373491	7359	Worth County	Iowa	IA	\N	\N	\N
47119	47	-87.0777632	35.6156963	99590	Maury County	Tennessee	TN	\N	\N	\N
20159	20	-98.2014154	38.3471776	9362	Rice County	Kansas	KS	\N	\N	\N
47153	47	-85.410082	35.3723358	15176	Sequatchie County	Tennessee	TN	\N	\N	\N
05027	05	-93.2328433	33.2230377	23331	Columbia County	Arkansas	AR	\N	\N	\N
21179	21	-85.4659312	37.8031198	46450	Nelson County	Kentucky	KY	\N	\N	\N
45053	45	-81.021627	32.43059	31588	Jasper County	South Carolina	SC	\N	\N	\N
19147	19	-94.6690546	43.0753374	8845	Palo Alto County	Iowa	IA	\N	\N	\N
38055	38	-101.3530871	47.5304586	9416	McLean County	North Dakota	ND	\N	\N	\N
28013	28	-89.3371142	33.9366339	14241	Calhoun County	Mississippi	MS	\N	\N	\N
19191	19	-91.850788	43.2929889	19862	Winneshiek County	Iowa	IA	\N	\N	\N
17125	17	-89.9135746	40.2369926	13173	Mason County	Illinois	IL	\N	\N	\N
13183	13	-81.7428697	31.7495633	20171	Long County	Georgia	GA	\N	\N	\N
49053	49	-113.4878003	37.2625308	184913	Washington County	Utah	UT	\N	\N	\N
48421	48	-101.8992648	36.2785929	3027	Sherman County	Texas	TX	\N	\N	\N
30007	30	-111.4978728	46.3298486	6444	Broadwater County	Montana	MT	\N	\N	\N
27051	27	-96.0106987	45.9307426	6026	Grant County	Minnesota	MN	\N	\N	\N
48301	48	-103.5612293	31.8449361	181	Loving County	Texas	TX	\N	\N	\N
32015	32	-117.0472398	39.9002105	5514	Lander County	Nevada	NV	\N	\N	\N
04023	04	-110.8452278	31.525733	46808	Santa Cruz County	Arizona	AZ	\N	\N	\N
55078	55	-88.6692512	44.9913041	4546	Menominee County	Wisconsin	WI	\N	\N	\N
48461	48	-102.0415461	31.3538163	3623	Upton County	Texas	TX	\N	\N	\N
13261	13	-84.2042935	32.0422659	29282	Sumter County	Georgia	GA	\N	\N	\N
48197	48	-99.7456973	34.2899036	4011	Hardeman County	Texas	TX	\N	\N	\N
49009	49	-109.5057855	40.890099	1026	Daggett County	Utah	UT	\N	\N	\N
22029	22	-91.626315	31.4698053	18914	Concordia Parish	Louisiana	LA	\N	\N	\N
19123	19	-92.6363663	41.3307969	22370	Mahaska County	Iowa	IA	\N	\N	\N
19177	19	-91.952943	40.7541168	7069	Van Buren County	Iowa	IA	\N	\N	\N
01023	01	-88.2488894	31.9909539	12418	Choctaw County	Alabama	AL	\N	\N	\N
17105	17	-88.5528518	40.8943761	35414	Livingston County	Illinois	IL	\N	\N	\N
47007	47	-85.2059104	35.5935612	15223	Bledsoe County	Tennessee	TN	\N	\N	\N
37199	37	-82.3039535	35.8893259	18099	Yancey County	North Carolina	NC	\N	\N	\N
28001	28	-91.3517966	31.4862243	30275	Adams County	Mississippi	MS	\N	\N	\N
02100	02	-135.5757906	59.0984037	2614	Haines Borough	Alaska	AK	\N	\N	\N
09001	09	-73.3670614	41.2274128	942426	Fairfield County	Connecticut	CT	\N	\N	\N
22123	22	-91.4519982	32.7924797	10646	West Carroll Parish	Louisiana	LA	\N	\N	\N
19009	19	-94.9043119	41.679178	5481	Audubon County	Iowa	IA	\N	\N	\N
02185	02	-153.4728302	69.4493427	9294	North Slope Borough	Alaska	AK	\N	\N	\N
48001	48	-95.6617267	31.8412614	57805	Anderson County	Texas	TX	\N	\N	\N
72054	72	-66.5600846	18.3739534	\N	Florida Municipio	Puerto Rico	PR	\N	\N	\N
01125	01	-87.5227834	33.2902197	210758	Tuscaloosa County	Alabama	AL	\N	\N	\N
46102	46	-102.5616865	43.3335802	14070	Oglala Lakota County	South Dakota	SD	\N	\N	\N
13209	13	-82.5333487	32.1721081	9012	Montgomery County	Georgia	GA	\N	\N	\N
55103	55	-90.4356927	43.3761994	17258	Richland County	Wisconsin	WI	\N	\N	\N
38007	38	-103.3640163	47.007044	890	Billings County	North Dakota	ND	\N	\N	\N
13213	13	-84.7379899	34.7970974	40032	Murray County	Georgia	GA	\N	\N	\N
31179	31	-97.1262433	42.210746	9492	Wayne County	Nebraska	NE	\N	\N	\N
12111	12	-80.4435357	27.3798137	337186	St. Lucie County	Florida	FL	\N	\N	\N
26003	26	-86.5641076	47.0800765	9015	Alger County	Michigan	MI	\N	\N	\N
48331	48	-96.9843946	30.791242	24708	Milam County	Texas	TX	\N	\N	\N
54107	54	-81.516234	39.2116023	82938	Wood County	West Virginia	WV	\N	\N	\N
01027	01	-85.8635254	33.2703999	13112	Clay County	Alabama	AL	\N	\N	\N
12063	12	-85.2088141	30.7892485	46085	Jackson County	Florida	FL	\N	\N	\N
06043	06	-119.9128613	37.5700295	17160	Mariposa County	California	CA	\N	\N	\N
40117	40	-96.6966693	36.3137038	16381	Pawnee County	Oklahoma	OK	\N	\N	\N
38075	38	-101.6581522	48.7127815	2283	Renville County	North Dakota	ND	\N	\N	\N
27133	27	-96.2632376	43.6695866	9301	Rock County	Minnesota	MN	\N	\N	\N
28057	28	-88.3631269	34.2810747	23261	Itawamba County	Mississippi	MS	\N	\N	\N
06109	06	-119.9647335	38.0214344	54515	Tuolumne County	California	CA	\N	\N	\N
18067	18	-86.1141178	40.4835368	82732	Howard County	Indiana	IN	\N	\N	\N
48431	48	-101.0549114	31.8357735	1315	Sterling County	Texas	TX	\N	\N	\N
35053	35	-106.9391362	33.9916579	16541	Socorro County	New Mexico	NM	\N	\N	\N
51193	51	-76.8039326	38.109311	18149	Westmoreland County	Virginia	VA	\N	\N	\N
05089	05	-92.6785765	36.2666636	16790	Marion County	Arkansas	AR	\N	\N	\N
02060	02	-156.9669094	58.7416473	788	Bristol Bay Borough	Alaska	AK	\N	\N	\N
30011	30	-104.5153243	45.5168247	1235	Carter County	Montana	MT	\N	\N	\N
08063	08	-102.6030226	39.3053399	7121	Kit Carson County	Colorado	CO	\N	\N	\N
05105	05	-92.9268773	34.9463629	10327	Perry County	Arkansas	AR	\N	\N	\N
48033	48	-101.439199	32.7385899	706	Borden County	Texas	TX	\N	\N	\N
20061	20	-96.7680996	39.0021387	32218	Geary County	Kansas	KS	\N	\N	\N
55039	55	-88.493284	43.7547219	102902	Fond du Lac County	Wisconsin	WI	\N	\N	\N
32019	32	-119.1974246	39.0222125	58319	Lyon County	Nevada	NV	\N	\N	\N
29155	29	-89.7859419	36.2099162	15600	Pemiscot County	Missouri	MO	\N	\N	\N
29185	29	-93.7765602	38.0422304	9689	St. Clair County	Missouri	MO	\N	\N	\N
31105	31	-103.7031528	41.1992736	3495	Kimball County	Nebraska	NE	\N	\N	\N
20167	20	-98.7709489	38.9160397	6804	Russell County	Kansas	KS	\N	\N	\N
41013	41	-120.3715849	44.1630537	25105	Crook County	Oregon	OR	\N	\N	\N
31145	31	-100.4685764	40.1694196	10627	Red Willow County	Nebraska	NE	\N	\N	\N
78010	78	-64.7467405	17.7353214	\N	 St. Croix Island	U.S. Virgin Islands	VI	\N	\N	\N
54073	54	-81.1611724	39.3681331	7438	Pleasants County	West Virginia	WV	\N	\N	\N
47121	47	-84.8161015	35.512203	12532	Meigs County	Tennessee	TN	\N	\N	\N
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
66	GU	Guam	168783
72	PR	Puerto Rico	3285874
60	AS	American Samoa	55197
74	UM	U.S. Minor Outlying Islands	315
69	MP	Northern Mariana Islands	57557
78	VI	U.S. Virgin Islands	106290
68	ZZ	Unknown	1
\.


--
-- PostgreSQL database dump complete
--

