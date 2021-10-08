
COPY public.fips_code_state (state_fips_code, state_postal_abbreviation, state_name) FROM stdin;
01	AL	Alabama
02	AK	Alaska
04	AZ	Arizona
05	AR	Arkansas
06	CA	California
08	CO	Colorado
09	CT	Connecticut
10	DE	Delaware
11	DC	District of Columbia
12	FL	Florida
13	GA	Georgia
15	HI	Hawaii
16	ID	Idaho
17	IL	Illinois
18	IN	Indiana
19	IA	Iowa
20	KS	Kansas
21	KY	Kentucky
22	LA	Louisiana
23	ME	Maine
24	MD	Maryland
25	MA	Massachusetts
26	MI	Michigan
27	MN	Minnesota
28	MS	Mississippi
29	MO	Missouri
30	MT	Montana
31	NE	Nebraska
32	NV	Nevada
33	NH	New Hampshire
34	NJ	New Jersey
35	NM	New Mexico
36	NY	New York
37	NC	North Carolina
38	ND	North Dakota
39	OH	Ohio
40	OK	Oklahoma
41	OR	Oregon
42	PA	Pennsylvania
44	RI	Rhode Island
45	SC	South Carolina
46	SD	South Dakota
47	TN	Tennessee
48	TX	Texas
49	UT	Utah
50	VT	Vermont
51	VA	Virginia
53	WA	Washington
54	WV	West Virginia
55	WI	Wisconsin
56	WY	Wyoming
60	AS	American Samoa
66	GU	Guam
69	MP	Northern Mariana Islands
72	PR	Puerto Rico
74	UM	U.S. Minor Outlying Islands
78	VI	U.S. Virgin Islands
68	ZZ	Unknown
\.

COPY public.fips_code_county (source, state_fips_code, county_fips_code, area_name) FROM stdin;
google	04	04025	Yavapai County
google	06	06089	Shasta County
google	16	16021	Boundary County
google	29	29179	Reynolds County
google	37	37039	Cherokee County
google	48	48353	Nolan County
google	72	72009	Aibonito Municipio
google	72	72011	Añasco Municipio
google	72	72013	Arecibo Municipio
google	72	72015	Arroyo Municipio
google	72	72017	Barceloneta Municipio
google	72	72019	Barranquitas Municipio
google	72	72021	Bayamón Municipio
google	72	72023	Cabo Rojo Municipio
google	72	72025	Caguas Municipio
google	72	72027	Camuy Municipio
google	72	72029	Canóvanas Municipio
google	72	72031	Carolina Municipio
google	72	72033	Cataño Municipio
google	72	72035	Cayey Municipio
google	72	72037	Ceiba Municipio
google	72	72039	Ciales Municipio
google	72	72041	Cidra Municipio
google	72	72043	Coamo Municipio
google	72	72045	Comerío Municipio
google	72	72047	Corozal Municipio
google	72	72049	Culebra Municipio
google	72	72051	Dorado Municipio
google	72	72053	Fajardo Municipio
google	72	72054	Florida Municipio
google	72	72055	Guánica Municipio
google	72	72057	Guayama Municipio
google	72	72059	Guayanilla Municipio
google	72	72061	Guaynabo Municipio
google	72	72063	Gurabo Municipio
google	72	72065	Hatillo Municipio
google	72	72067	Hormigueros Municipio
google	72	72069	Humacao Municipio
google	72	72071	Isabela Municipio
google	72	72073	Jayuya Municipio
google	72	72075	Juana Díaz Municipio
covid	02	02000	Alaska Unknown
covid	02	02997	Multicounty, Not Statewide Alaska
covid	02	02063	Chugach Census Area
covid	02	02066	Copper River Census Area
covid	02	02998	Out-of-State, Alaska
covid	04	04000	Arizona Unknown
covid	05	05000	Arkansas Unknown
covid	06	06000	California Unknown
covid	08	08000	Colorado Unknown
covid	09	09000	Connecticut Unknown
covid	10	10000	Delaware Unknown
covid	12	12000	Florida Unknown
covid	13	13000	Georgia Unknown
covid	15	15000	Hawaii Unknown
covid	16	16000	Idaho Unknown
covid	17	17000	Illinois Unknown
covid	18	18000	Indiana Unknown
covid	19	19000	Iowa Unknown
covid	20	20000	Kansas Unknown
covid	21	21000	Kentucky Unknown
covid	22	22000	Louisiana Unknown
covid	23	23000	Maine Unknown
covid	24	24000	Maryland Unknown
covid	25	25000	Massachusetts Unknown
covid	26	26000	Michigan Unknown
covid	27	27000	Minnesota Unknown
covid	28	28000	Mississippi Unknown
covid	29	29000	Missouri Unknown
covid	29	29300	Missouri Unknown 2
covid	29	29301	Missouri Unknown 3
covid	30	30000	Montana Unknown
covid	31	31000	Nebraska Unknown
covid	32	32000	Nevada Unknown
covid	33	33000	New Hampshire Unknown
covid	34	34000	New Jersey Unknown
covid	35	35000	New Mexico Unknown
covid	36	36000	New York Unknown
covid	37	37000	North Carolina Unknown
covid	38	38000	North Dakota Unknown
covid	39	39000	Ohio Unknown
covid	40	40000	Oklahoma Unknown
covid	41	41000	Oregon Unknown
covid	42	42000	Pennsylvania Unknown
covid	44	44000	Rhode Island Unknown
covid	45	45000	South Carolina Unknown
covid	46	46000	South Dakota Unknown
covid	47	47000	Tennessee Unknown
covid	48	48000	Texas Unknown
covid	49	49000	Utah Unknown
covid	50	50000	Vermont Unknown
covid	51	51000	Virginia Unknown
covid	53	53000	Washington Unknown
covid	54	54000	West Virginia Unknown
covid	55	55000	Wisconsin Unknown
covid	56	56000	Wyoming Unknown
covid	60	60000	American Samoa Unknown
covid	66	66000	Guam Unknown
covid	69	69000	Northern Mariana Islands Unknown
covid	69	69110	Saipan Municipality
covid	69	69120	Tinian Municipality
covid	72	72000	Puerto Rico Unknown
covid	78	78010	 St. Croix Island
covid	78	78020	St. John Island
covid	78	78030	St. Thomas Island
google	01	01001	Autauga County
google	01	01003	Baldwin County
google	01	01005	Barbour County
google	01	01007	Bibb County
google	01	01009	Blount County
google	01	01011	Bullock County
google	01	01013	Butler County
google	01	01015	Calhoun County
google	01	01017	Chambers County
google	01	01019	Cherokee County
google	01	01021	Chilton County
google	01	01023	Choctaw County
google	01	01025	Clarke County
google	01	01027	Clay County
google	01	01029	Cleburne County
google	01	01031	Coffee County
google	01	01033	Colbert County
google	01	01035	Conecuh County
google	01	01037	Coosa County
google	01	01039	Covington County
google	01	01041	Crenshaw County
google	01	01043	Cullman County
google	01	01045	Dale County
google	01	01047	Dallas County
google	01	01049	DeKalb County
google	01	01051	Elmore County
google	01	01053	Escambia County
google	01	01055	Etowah County
google	01	01057	Fayette County
google	01	01059	Franklin County
google	01	01061	Geneva County
google	01	01063	Greene County
google	01	01065	Hale County
google	01	01067	Henry County
google	01	01069	Houston County
google	01	01071	Jackson County
google	01	01073	Jefferson County
google	01	01075	Lamar County
google	01	01077	Lauderdale County
google	01	01079	Lawrence County
google	01	01081	Lee County
google	01	01083	Limestone County
google	01	01085	Lowndes County
google	01	01087	Macon County
google	01	01089	Madison County
google	01	01091	Marengo County
google	01	01093	Marion County
google	01	01095	Marshall County
google	01	01097	Mobile County
google	01	01099	Monroe County
google	01	01101	Montgomery County
google	01	01103	Morgan County
google	01	01105	Perry County
google	01	01107	Pickens County
google	01	01109	Pike County
google	01	01111	Randolph County
google	01	01113	Russell County
google	01	01115	St. Clair County
google	01	01117	Shelby County
google	01	01119	Sumter County
google	01	01121	Talladega County
google	01	01123	Tallapoosa County
google	01	01125	Tuscaloosa County
google	01	01127	Walker County
google	01	01129	Washington County
google	01	01131	Wilcox County
google	01	01133	Winston County
google	02	02013	Aleutians East Borough
google	02	02016	Aleutians West Census Area
google	02	02020	Anchorage Municipality
google	02	02050	Bethel Census Area
google	02	02060	Bristol Bay Borough
google	02	02068	Denali Borough
google	02	02070	Dillingham Census Area
google	02	02090	Fairbanks North Star Borough
google	02	02100	Haines Borough
google	02	02105	Hoonah-Angoon Census Area
google	02	02110	Juneau City and Borough
google	02	02122	Kenai Peninsula Borough
google	02	02130	Ketchikan Gateway Borough
google	02	02150	Kodiak Island Borough
google	02	02158	Kusilvak Census Area
google	02	02164	Lake and Peninsula Borough
google	02	02170	Matanuska-Susitna Borough
google	02	02180	Nome Census Area
google	02	02185	North Slope Borough
google	02	02188	Northwest Arctic Borough
google	02	02195	Petersburg Borough
google	02	02198	Prince of Wales-Hyder Census Area
google	02	02220	Sitka City and Borough
google	02	02230	Skagway Municipality
google	02	02240	Southeast Fairbanks Census Area
google	02	02261	Valdez-Cordova Census Area
google	02	02275	Wrangell City and Borough
google	02	02282	Yakutat City and Borough
google	02	02290	Yukon-Koyukuk Census Area
google	04	04001	Apache County
google	04	04003	Cochise County
google	04	04005	Coconino County
google	04	04007	Gila County
google	04	04009	Graham County
google	04	04011	Greenlee County
google	04	04012	La Paz County
google	04	04013	Maricopa County
google	04	04015	Mohave County
google	04	04017	Navajo County
google	04	04019	Pima County
google	04	04021	Pinal County
google	04	04023	Santa Cruz County
google	04	04027	Yuma County
google	05	05001	Arkansas County
google	05	05003	Ashley County
google	05	05005	Baxter County
google	05	05007	Benton County
google	05	05009	Boone County
google	05	05011	Bradley County
google	05	05013	Calhoun County
google	05	05015	Carroll County
google	05	05017	Chicot County
google	05	05019	Clark County
google	05	05021	Clay County
google	05	05023	Cleburne County
google	05	05025	Cleveland County
google	05	05027	Columbia County
google	05	05029	Conway County
google	05	05031	Craighead County
google	05	05033	Crawford County
google	05	05035	Crittenden County
google	05	05037	Cross County
google	05	05039	Dallas County
google	05	05041	Desha County
google	05	05043	Drew County
google	05	05045	Faulkner County
google	05	05047	Franklin County
google	05	05049	Fulton County
google	05	05051	Garland County
google	05	05053	Grant County
google	05	05055	Greene County
google	05	05057	Hempstead County
google	05	05059	Hot Spring County
google	05	05061	Howard County
google	05	05063	Independence County
google	05	05065	Izard County
google	05	05067	Jackson County
google	05	05069	Jefferson County
google	05	05071	Johnson County
google	05	05073	Lafayette County
google	05	05075	Lawrence County
google	05	05077	Lee County
google	05	05079	Lincoln County
google	05	05081	Little River County
google	05	05083	Logan County
google	05	05085	Lonoke County
google	05	05087	Madison County
google	05	05089	Marion County
google	05	05091	Miller County
google	05	05093	Mississippi County
google	05	05095	Monroe County
google	05	05097	Montgomery County
google	05	05099	Nevada County
google	05	05101	Newton County
google	05	05103	Ouachita County
google	05	05105	Perry County
google	05	05107	Phillips County
google	05	05109	Pike County
google	05	05111	Poinsett County
google	05	05113	Polk County
google	05	05115	Pope County
google	05	05117	Prairie County
google	05	05119	Pulaski County
google	05	05121	Randolph County
google	05	05123	St. Francis County
google	05	05125	Saline County
google	05	05127	Scott County
google	05	05129	Searcy County
google	05	05131	Sebastian County
google	05	05133	Sevier County
google	05	05135	Sharp County
google	05	05137	Stone County
google	05	05139	Union County
google	05	05141	Van Buren County
google	05	05143	Washington County
google	05	05145	White County
google	05	05147	Woodruff County
google	05	05149	Yell County
google	06	06001	Alameda County
google	06	06003	Alpine County
google	06	06005	Amador County
google	06	06007	Butte County
google	06	06009	Calaveras County
google	06	06011	Colusa County
google	06	06013	Contra Costa County
google	06	06015	Del Norte County
google	06	06017	El Dorado County
google	06	06019	Fresno County
google	06	06021	Glenn County
google	06	06023	Humboldt County
google	06	06025	Imperial County
google	06	06027	Inyo County
google	06	06029	Kern County
google	06	06031	Kings County
google	06	06033	Lake County
google	06	06035	Lassen County
google	06	06037	Los Angeles County
google	06	06039	Madera County
google	06	06041	Marin County
google	06	06043	Mariposa County
google	06	06045	Mendocino County
google	06	06047	Merced County
google	06	06049	Modoc County
google	06	06051	Mono County
google	06	06053	Monterey County
google	06	06055	Napa County
google	06	06057	Nevada County
google	06	06059	Orange County
google	06	06061	Placer County
google	06	06063	Plumas County
google	06	06065	Riverside County
google	06	06067	Sacramento County
google	06	06069	San Benito County
google	06	06071	San Bernardino County
google	06	06073	San Diego County
google	06	06075	San Francisco County
google	06	06077	San Joaquin County
google	06	06079	San Luis Obispo County
google	06	06081	San Mateo County
google	06	06083	Santa Barbara County
google	06	06085	Santa Clara County
google	06	06087	Santa Cruz County
google	06	06091	Sierra County
google	06	06093	Siskiyou County
google	06	06095	Solano County
google	06	06097	Sonoma County
google	06	06099	Stanislaus County
google	06	06101	Sutter County
google	06	06103	Tehama County
google	06	06105	Trinity County
google	06	06107	Tulare County
google	06	06109	Tuolumne County
google	06	06111	Ventura County
google	06	06113	Yolo County
google	06	06115	Yuba County
google	08	08001	Adams County
google	08	08003	Alamosa County
google	08	08005	Arapahoe County
google	08	08007	Archuleta County
google	08	08009	Baca County
google	08	08011	Bent County
google	08	08013	Boulder County
google	08	08014	Broomfield County
google	08	08015	Chaffee County
google	08	08017	Cheyenne County
google	08	08019	Clear Creek County
google	08	08021	Conejos County
google	08	08023	Costilla County
google	08	08025	Crowley County
google	08	08027	Custer County
google	08	08029	Delta County
google	08	08031	Denver County
google	08	08033	Dolores County
google	08	08035	Douglas County
google	08	08037	Eagle County
google	08	08039	Elbert County
google	08	08041	El Paso County
google	08	08043	Fremont County
google	08	08045	Garfield County
google	08	08047	Gilpin County
google	08	08049	Grand County
google	08	08051	Gunnison County
google	08	08053	Hinsdale County
google	08	08055	Huerfano County
google	08	08057	Jackson County
google	08	08059	Jefferson County
google	08	08061	Kiowa County
google	08	08063	Kit Carson County
google	08	08065	Lake County
google	08	08067	La Plata County
google	08	08069	Larimer County
google	08	08071	Las Animas County
google	08	08073	Lincoln County
google	08	08075	Logan County
google	08	08077	Mesa County
google	08	08079	Mineral County
google	08	08081	Moffat County
google	08	08083	Montezuma County
google	08	08085	Montrose County
google	08	08087	Morgan County
google	08	08089	Otero County
google	08	08091	Ouray County
google	08	08093	Park County
google	08	08095	Phillips County
google	08	08097	Pitkin County
google	08	08099	Prowers County
google	08	08101	Pueblo County
google	08	08103	Rio Blanco County
google	08	08105	Rio Grande County
google	08	08107	Routt County
google	08	08109	Saguache County
google	08	08111	San Juan County
google	08	08113	San Miguel County
google	08	08115	Sedgwick County
google	08	08117	Summit County
google	08	08119	Teller County
google	08	08121	Washington County
google	08	08123	Weld County
google	08	08125	Yuma County
google	09	09001	Fairfield County
google	09	09003	Hartford County
google	09	09005	Litchfield County
google	09	09007	Middlesex County
google	09	09009	New Haven County
google	09	09011	New London County
google	09	09013	Tolland County
google	09	09015	Windham County
google	10	10001	Kent County
google	10	10003	New Castle County
google	10	10005	Sussex County
google	11	11001	District of Columbia
google	12	12001	Alachua County
google	12	12003	Baker County
google	12	12005	Bay County
google	12	12007	Bradford County
google	12	12009	Brevard County
google	12	12011	Broward County
google	12	12013	Calhoun County
google	12	12015	Charlotte County
google	12	12017	Citrus County
google	12	12019	Clay County
google	12	12021	Collier County
google	12	12023	Columbia County
google	12	12027	DeSoto County
google	12	12029	Dixie County
google	12	12031	Duval County
google	12	12033	Escambia County
google	12	12035	Flagler County
google	12	12037	Franklin County
google	12	12039	Gadsden County
google	12	12041	Gilchrist County
google	12	12043	Glades County
google	12	12045	Gulf County
google	12	12047	Hamilton County
google	12	12049	Hardee County
google	12	12051	Hendry County
google	12	12053	Hernando County
google	12	12055	Highlands County
google	12	12057	Hillsborough County
google	12	12059	Holmes County
google	12	12061	Indian River County
google	12	12063	Jackson County
google	12	12065	Jefferson County
google	12	12067	Lafayette County
google	12	12069	Lake County
google	12	12071	Lee County
google	12	12073	Leon County
google	12	12075	Levy County
google	12	12077	Liberty County
google	12	12079	Madison County
google	12	12081	Manatee County
google	12	12083	Marion County
google	12	12085	Martin County
google	12	12086	Miami-Dade County
google	12	12087	Monroe County
google	12	12089	Nassau County
google	12	12091	Okaloosa County
google	12	12093	Okeechobee County
google	12	12095	Orange County
google	12	12097	Osceola County
google	12	12099	Palm Beach County
google	12	12101	Pasco County
google	12	12103	Pinellas County
google	12	12105	Polk County
google	12	12107	Putnam County
google	12	12109	St. Johns County
google	12	12111	St. Lucie County
google	12	12113	Santa Rosa County
google	12	12115	Sarasota County
google	12	12117	Seminole County
google	12	12119	Sumter County
google	12	12121	Suwannee County
google	12	12123	Taylor County
google	12	12125	Union County
google	12	12127	Volusia County
google	12	12129	Wakulla County
google	12	12131	Walton County
google	12	12133	Washington County
google	13	13001	Appling County
google	13	13003	Atkinson County
google	13	13005	Bacon County
google	13	13007	Baker County
google	13	13009	Baldwin County
google	13	13011	Banks County
google	13	13013	Barrow County
google	13	13015	Bartow County
google	13	13017	Ben Hill County
google	13	13019	Berrien County
google	13	13021	Bibb County
google	13	13023	Bleckley County
google	13	13025	Brantley County
google	13	13027	Brooks County
google	13	13029	Bryan County
google	13	13031	Bulloch County
google	13	13033	Burke County
google	13	13035	Butts County
google	13	13037	Calhoun County
google	13	13039	Camden County
google	13	13043	Candler County
google	13	13045	Carroll County
google	13	13047	Catoosa County
google	13	13049	Charlton County
google	13	13051	Chatham County
google	13	13053	Chattahoochee County
google	13	13055	Chattooga County
google	13	13057	Cherokee County
google	13	13059	Clarke County
google	13	13061	Clay County
google	13	13063	Clayton County
google	13	13065	Clinch County
google	13	13067	Cobb County
google	13	13069	Coffee County
google	13	13071	Colquitt County
google	13	13073	Columbia County
google	13	13075	Cook County
google	13	13077	Coweta County
google	13	13079	Crawford County
google	13	13081	Crisp County
google	13	13083	Dade County
google	13	13085	Dawson County
google	13	13087	Decatur County
google	13	13089	DeKalb County
google	13	13091	Dodge County
google	13	13093	Dooly County
google	13	13095	Dougherty County
google	13	13097	Douglas County
google	13	13099	Early County
google	13	13101	Echols County
google	13	13103	Effingham County
google	13	13105	Elbert County
google	13	13107	Emanuel County
google	13	13109	Evans County
google	13	13111	Fannin County
google	13	13113	Fayette County
google	13	13115	Floyd County
google	13	13117	Forsyth County
google	13	13119	Franklin County
google	13	13121	Fulton County
google	13	13123	Gilmer County
google	13	13125	Glascock County
google	13	13127	Glynn County
google	13	13129	Gordon County
google	13	13131	Grady County
google	13	13133	Greene County
google	13	13135	Gwinnett County
google	13	13137	Habersham County
google	13	13139	Hall County
google	13	13141	Hancock County
google	13	13143	Haralson County
google	13	13145	Harris County
google	13	13147	Hart County
google	13	13149	Heard County
google	13	13151	Henry County
google	13	13153	Houston County
google	13	13155	Irwin County
google	13	13157	Jackson County
google	13	13159	Jasper County
google	13	13161	Jeff Davis County
google	13	13163	Jefferson County
google	13	13165	Jenkins County
google	13	13167	Johnson County
google	13	13169	Jones County
google	13	13171	Lamar County
google	13	13173	Lanier County
google	13	13175	Laurens County
google	13	13177	Lee County
google	13	13179	Liberty County
google	13	13181	Lincoln County
google	13	13183	Long County
google	13	13185	Lowndes County
google	13	13187	Lumpkin County
google	13	13189	McDuffie County
google	13	13191	McIntosh County
google	13	13193	Macon County
google	13	13195	Madison County
google	13	13197	Marion County
google	13	13199	Meriwether County
google	13	13201	Miller County
google	13	13205	Mitchell County
google	13	13207	Monroe County
google	13	13209	Montgomery County
google	13	13211	Morgan County
google	13	13213	Murray County
google	13	13215	Muscogee County
google	13	13217	Newton County
google	13	13219	Oconee County
google	13	13221	Oglethorpe County
google	13	13223	Paulding County
google	13	13225	Peach County
google	13	13227	Pickens County
google	13	13229	Pierce County
google	13	13231	Pike County
google	13	13233	Polk County
google	13	13235	Pulaski County
google	13	13237	Putnam County
google	13	13239	Quitman County
google	13	13241	Rabun County
google	13	13243	Randolph County
google	13	13245	Richmond County
google	13	13247	Rockdale County
google	13	13249	Schley County
google	13	13251	Screven County
google	13	13253	Seminole County
google	13	13255	Spalding County
google	13	13257	Stephens County
google	13	13259	Stewart County
google	13	13261	Sumter County
google	13	13263	Talbot County
google	13	13265	Taliaferro County
google	13	13267	Tattnall County
google	13	13269	Taylor County
google	13	13271	Telfair County
google	13	13273	Terrell County
google	13	13275	Thomas County
google	13	13277	Tift County
google	13	13279	Toombs County
google	13	13281	Towns County
google	13	13283	Treutlen County
google	13	13285	Troup County
google	13	13287	Turner County
google	13	13289	Twiggs County
google	13	13291	Union County
google	13	13293	Upson County
google	13	13295	Walker County
google	13	13297	Walton County
google	13	13299	Ware County
google	13	13301	Warren County
google	13	13303	Washington County
google	13	13305	Wayne County
google	13	13307	Webster County
google	13	13309	Wheeler County
google	13	13311	White County
google	13	13313	Whitfield County
google	13	13315	Wilcox County
google	13	13317	Wilkes County
google	13	13319	Wilkinson County
google	13	13321	Worth County
google	15	15001	Hawaii County
google	15	15003	Honolulu County
google	15	15005	Kalawao County
google	15	15007	Kauai County
google	15	15009	Maui County
google	16	16001	Ada County
google	16	16003	Adams County
google	16	16005	Bannock County
google	16	16007	Bear Lake County
google	16	16009	Benewah County
google	16	16011	Bingham County
google	16	16013	Blaine County
google	16	16015	Boise County
google	16	16017	Bonner County
google	16	16019	Bonneville County
google	16	16023	Butte County
google	16	16025	Camas County
google	16	16027	Canyon County
google	16	16029	Caribou County
google	16	16031	Cassia County
google	16	16033	Clark County
google	16	16035	Clearwater County
google	16	16037	Custer County
google	16	16039	Elmore County
google	16	16041	Franklin County
google	16	16043	Fremont County
google	16	16045	Gem County
google	16	16047	Gooding County
google	16	16049	Idaho County
google	16	16051	Jefferson County
google	16	16053	Jerome County
google	16	16055	Kootenai County
google	16	16057	Latah County
google	16	16059	Lemhi County
google	16	16061	Lewis County
google	16	16063	Lincoln County
google	16	16065	Madison County
google	16	16067	Minidoka County
google	16	16069	Nez Perce County
google	16	16071	Oneida County
google	16	16073	Owyhee County
google	16	16075	Payette County
google	16	16077	Power County
google	16	16079	Shoshone County
google	16	16081	Teton County
google	16	16083	Twin Falls County
google	16	16085	Valley County
google	16	16087	Washington County
google	17	17001	Adams County
google	17	17003	Alexander County
google	17	17005	Bond County
google	17	17007	Boone County
google	17	17009	Brown County
google	17	17011	Bureau County
google	17	17013	Calhoun County
google	17	17015	Carroll County
google	17	17017	Cass County
google	17	17019	Champaign County
google	17	17021	Christian County
google	17	17023	Clark County
google	17	17025	Clay County
google	17	17027	Clinton County
google	17	17029	Coles County
google	17	17031	Cook County
google	17	17033	Crawford County
google	17	17035	Cumberland County
google	17	17037	DeKalb County
google	17	17039	De Witt County
google	17	17041	Douglas County
google	17	17043	DuPage County
google	17	17045	Edgar County
google	17	17047	Edwards County
google	17	17049	Effingham County
google	17	17051	Fayette County
google	17	17053	Ford County
google	17	17055	Franklin County
google	17	17057	Fulton County
google	17	17059	Gallatin County
google	17	17061	Greene County
google	17	17063	Grundy County
google	17	17065	Hamilton County
google	17	17067	Hancock County
google	17	17069	Hardin County
google	17	17071	Henderson County
google	17	17073	Henry County
google	17	17075	Iroquois County
google	17	17077	Jackson County
google	17	17079	Jasper County
google	17	17081	Jefferson County
google	17	17083	Jersey County
google	17	17085	Jo Daviess County
google	17	17087	Johnson County
google	17	17089	Kane County
google	17	17091	Kankakee County
google	17	17093	Kendall County
google	17	17095	Knox County
google	17	17097	Lake County
google	17	17099	LaSalle County
google	17	17101	Lawrence County
google	17	17103	Lee County
google	17	17105	Livingston County
google	17	17107	Logan County
google	17	17109	McDonough County
google	17	17111	McHenry County
google	17	17113	McLean County
google	17	17115	Macon County
google	17	17117	Macoupin County
google	17	17119	Madison County
google	17	17121	Marion County
google	17	17123	Marshall County
google	17	17125	Mason County
google	17	17127	Massac County
google	17	17129	Menard County
google	17	17131	Mercer County
google	17	17133	Monroe County
google	17	17135	Montgomery County
google	17	17137	Morgan County
google	17	17139	Moultrie County
google	17	17141	Ogle County
google	17	17143	Peoria County
google	17	17145	Perry County
google	17	17147	Piatt County
google	17	17149	Pike County
google	17	17151	Pope County
google	17	17153	Pulaski County
google	17	17155	Putnam County
google	17	17157	Randolph County
google	17	17159	Richland County
google	17	17161	Rock Island County
google	17	17163	St. Clair County
google	17	17165	Saline County
google	17	17167	Sangamon County
google	17	17169	Schuyler County
google	17	17171	Scott County
google	17	17173	Shelby County
google	17	17175	Stark County
google	17	17177	Stephenson County
google	17	17179	Tazewell County
google	17	17181	Union County
google	17	17183	Vermilion County
google	17	17185	Wabash County
google	17	17187	Warren County
google	17	17189	Washington County
google	17	17191	Wayne County
google	17	17193	White County
google	17	17195	Whiteside County
google	17	17197	Will County
google	17	17199	Williamson County
google	17	17201	Winnebago County
google	17	17203	Woodford County
google	18	18001	Adams County
google	18	18003	Allen County
google	18	18005	Bartholomew County
google	18	18007	Benton County
google	18	18009	Blackford County
google	18	18011	Boone County
google	18	18013	Brown County
google	18	18015	Carroll County
google	18	18017	Cass County
google	18	18019	Clark County
google	18	18021	Clay County
google	18	18023	Clinton County
google	18	18025	Crawford County
google	18	18027	Daviess County
google	18	18029	Dearborn County
google	18	18031	Decatur County
google	18	18033	DeKalb County
google	18	18035	Delaware County
google	18	18037	Dubois County
google	18	18039	Elkhart County
google	18	18041	Fayette County
google	18	18043	Floyd County
google	18	18045	Fountain County
google	18	18047	Franklin County
google	18	18049	Fulton County
google	18	18051	Gibson County
google	18	18053	Grant County
google	18	18055	Greene County
google	18	18057	Hamilton County
google	18	18059	Hancock County
google	18	18061	Harrison County
google	18	18063	Hendricks County
google	18	18065	Henry County
google	18	18067	Howard County
google	18	18069	Huntington County
google	18	18071	Jackson County
google	18	18073	Jasper County
google	18	18075	Jay County
google	18	18077	Jefferson County
google	18	18079	Jennings County
google	18	18081	Johnson County
google	18	18083	Knox County
google	18	18085	Kosciusko County
google	18	18087	LaGrange County
google	18	18089	Lake County
google	18	18091	LaPorte County
google	18	18093	Lawrence County
google	18	18095	Madison County
google	18	18097	Marion County
google	18	18099	Marshall County
google	18	18101	Martin County
google	18	18103	Miami County
google	18	18105	Monroe County
google	18	18107	Montgomery County
google	18	18109	Morgan County
google	18	18111	Newton County
google	18	18113	Noble County
google	18	18115	Ohio County
google	18	18117	Orange County
google	18	18119	Owen County
google	18	18121	Parke County
google	18	18123	Perry County
google	18	18125	Pike County
google	18	18127	Porter County
google	18	18129	Posey County
google	18	18131	Pulaski County
google	18	18133	Putnam County
google	18	18135	Randolph County
google	18	18137	Ripley County
google	18	18139	Rush County
google	18	18141	St. Joseph County
google	18	18143	Scott County
google	18	18145	Shelby County
google	18	18147	Spencer County
google	18	18149	Starke County
google	18	18151	Steuben County
google	18	18153	Sullivan County
google	18	18155	Switzerland County
google	18	18157	Tippecanoe County
google	18	18159	Tipton County
google	18	18161	Union County
google	18	18163	Vanderburgh County
google	18	18165	Vermillion County
google	18	18167	Vigo County
google	18	18169	Wabash County
google	18	18171	Warren County
google	18	18173	Warrick County
google	18	18175	Washington County
google	18	18177	Wayne County
google	18	18179	Wells County
google	18	18181	White County
google	18	18183	Whitley County
google	19	19001	Adair County
google	19	19003	Adams County
google	19	19005	Allamakee County
google	19	19007	Appanoose County
google	19	19009	Audubon County
google	19	19011	Benton County
google	19	19013	Black Hawk County
google	19	19015	Boone County
google	19	19017	Bremer County
google	19	19019	Buchanan County
google	19	19021	Buena Vista County
google	19	19023	Butler County
google	19	19025	Calhoun County
google	19	19027	Carroll County
google	19	19029	Cass County
google	19	19031	Cedar County
google	19	19033	Cerro Gordo County
google	19	19035	Cherokee County
google	19	19037	Chickasaw County
google	19	19039	Clarke County
google	19	19041	Clay County
google	19	19043	Clayton County
google	19	19045	Clinton County
google	19	19047	Crawford County
google	19	19049	Dallas County
google	19	19051	Davis County
google	19	19053	Decatur County
google	19	19055	Delaware County
google	19	19057	Des Moines County
google	19	19059	Dickinson County
google	19	19061	Dubuque County
google	19	19063	Emmet County
google	19	19065	Fayette County
google	19	19067	Floyd County
google	19	19069	Franklin County
google	19	19071	Fremont County
google	19	19073	Greene County
google	19	19075	Grundy County
google	19	19077	Guthrie County
google	19	19079	Hamilton County
google	19	19081	Hancock County
google	19	19083	Hardin County
google	19	19085	Harrison County
google	19	19087	Henry County
google	19	19089	Howard County
google	19	19091	Humboldt County
google	19	19093	Ida County
google	19	19095	Iowa County
google	19	19097	Jackson County
google	19	19099	Jasper County
google	19	19101	Jefferson County
google	19	19103	Johnson County
google	19	19105	Jones County
google	19	19107	Keokuk County
google	19	19109	Kossuth County
google	19	19111	Lee County
google	19	19113	Linn County
google	19	19115	Louisa County
google	19	19117	Lucas County
google	19	19119	Lyon County
google	19	19121	Madison County
google	19	19123	Mahaska County
google	19	19125	Marion County
google	19	19127	Marshall County
google	19	19129	Mills County
google	19	19131	Mitchell County
google	19	19133	Monona County
google	19	19135	Monroe County
google	19	19137	Montgomery County
google	19	19139	Muscatine County
google	19	19141	O'Brien County
google	19	19143	Osceola County
google	19	19145	Page County
google	19	19147	Palo Alto County
google	19	19149	Plymouth County
google	19	19151	Pocahontas County
google	19	19153	Polk County
google	19	19155	Pottawattamie County
google	19	19157	Poweshiek County
google	19	19159	Ringgold County
google	19	19161	Sac County
google	19	19163	Scott County
google	19	19165	Shelby County
google	19	19167	Sioux County
google	19	19169	Story County
google	19	19171	Tama County
google	19	19173	Taylor County
google	19	19175	Union County
google	19	19177	Van Buren County
google	19	19179	Wapello County
google	19	19181	Warren County
google	19	19183	Washington County
google	19	19185	Wayne County
google	19	19187	Webster County
google	19	19189	Winnebago County
google	19	19191	Winneshiek County
google	19	19193	Woodbury County
google	19	19195	Worth County
google	19	19197	Wright County
google	20	20001	Allen County
google	20	20003	Anderson County
google	20	20005	Atchison County
google	20	20007	Barber County
google	20	20009	Barton County
google	20	20011	Bourbon County
google	20	20013	Brown County
google	20	20015	Butler County
google	20	20017	Chase County
google	20	20019	Chautauqua County
google	20	20021	Cherokee County
google	20	20023	Cheyenne County
google	20	20025	Clark County
google	20	20027	Clay County
google	20	20029	Cloud County
google	20	20031	Coffey County
google	20	20033	Comanche County
google	20	20035	Cowley County
google	20	20037	Crawford County
google	20	20039	Decatur County
google	20	20041	Dickinson County
google	20	20043	Doniphan County
google	20	20045	Douglas County
google	20	20047	Edwards County
google	20	20049	Elk County
google	20	20051	Ellis County
google	20	20053	Ellsworth County
google	20	20055	Finney County
google	20	20057	Ford County
google	20	20059	Franklin County
google	20	20061	Geary County
google	20	20063	Gove County
google	20	20065	Graham County
google	20	20067	Grant County
google	20	20069	Gray County
google	20	20071	Greeley County
google	20	20073	Greenwood County
google	20	20075	Hamilton County
google	20	20077	Harper County
google	20	20079	Harvey County
google	20	20081	Haskell County
google	20	20083	Hodgeman County
google	20	20085	Jackson County
google	20	20087	Jefferson County
google	20	20089	Jewell County
google	20	20091	Johnson County
google	20	20093	Kearny County
google	20	20095	Kingman County
google	20	20097	Kiowa County
google	20	20099	Labette County
google	20	20101	Lane County
google	20	20103	Leavenworth County
google	20	20105	Lincoln County
google	20	20107	Linn County
google	20	20109	Logan County
google	20	20111	Lyon County
google	20	20113	McPherson County
google	20	20115	Marion County
google	20	20117	Marshall County
google	20	20119	Meade County
google	20	20121	Miami County
google	20	20123	Mitchell County
google	20	20125	Montgomery County
google	20	20127	Morris County
google	20	20129	Morton County
google	20	20131	Nemaha County
google	20	20133	Neosho County
google	20	20135	Ness County
google	20	20137	Norton County
google	20	20139	Osage County
google	20	20141	Osborne County
google	20	20143	Ottawa County
google	20	20145	Pawnee County
google	20	20147	Phillips County
google	20	20149	Pottawatomie County
google	20	20151	Pratt County
google	20	20153	Rawlins County
google	20	20155	Reno County
google	20	20157	Republic County
google	20	20159	Rice County
google	20	20161	Riley County
google	20	20163	Rooks County
google	20	20165	Rush County
google	20	20167	Russell County
google	20	20169	Saline County
google	20	20171	Scott County
google	20	20173	Sedgwick County
google	20	20175	Seward County
google	20	20177	Shawnee County
google	20	20179	Sheridan County
google	20	20181	Sherman County
google	20	20183	Smith County
google	20	20185	Stafford County
google	20	20187	Stanton County
google	20	20189	Stevens County
google	20	20191	Sumner County
google	20	20193	Thomas County
google	20	20195	Trego County
google	20	20197	Wabaunsee County
google	20	20199	Wallace County
google	20	20201	Washington County
google	20	20203	Wichita County
google	20	20205	Wilson County
google	20	20207	Woodson County
google	20	20209	Wyandotte County
google	21	21001	Adair County
google	21	21003	Allen County
google	21	21005	Anderson County
google	21	21007	Ballard County
google	21	21009	Barren County
google	21	21011	Bath County
google	21	21013	Bell County
google	21	21015	Boone County
google	21	21017	Bourbon County
google	21	21019	Boyd County
google	21	21021	Boyle County
google	21	21023	Bracken County
google	21	21025	Breathitt County
google	21	21027	Breckinridge County
google	21	21029	Bullitt County
google	21	21031	Butler County
google	21	21033	Caldwell County
google	21	21035	Calloway County
google	21	21037	Campbell County
google	21	21039	Carlisle County
google	21	21041	Carroll County
google	21	21043	Carter County
google	21	21045	Casey County
google	21	21047	Christian County
google	21	21049	Clark County
google	21	21051	Clay County
google	21	21053	Clinton County
google	21	21055	Crittenden County
google	21	21057	Cumberland County
google	21	21059	Daviess County
google	21	21061	Edmonson County
google	21	21063	Elliott County
google	21	21065	Estill County
google	21	21067	Fayette County
google	21	21069	Fleming County
google	21	21071	Floyd County
google	21	21073	Franklin County
google	21	21075	Fulton County
google	21	21077	Gallatin County
google	21	21079	Garrard County
google	21	21081	Grant County
google	21	21083	Graves County
google	21	21085	Grayson County
google	21	21087	Green County
google	21	21089	Greenup County
google	21	21091	Hancock County
google	21	21093	Hardin County
google	21	21095	Harlan County
google	21	21097	Harrison County
google	21	21099	Hart County
google	21	21101	Henderson County
google	21	21103	Henry County
google	21	21105	Hickman County
google	21	21107	Hopkins County
google	21	21109	Jackson County
google	21	21111	Jefferson County
google	21	21113	Jessamine County
google	21	21115	Johnson County
google	21	21117	Kenton County
google	21	21119	Knott County
google	21	21121	Knox County
google	21	21123	Larue County
google	21	21125	Laurel County
google	21	21127	Lawrence County
google	21	21129	Lee County
google	21	21131	Leslie County
google	21	21133	Letcher County
google	21	21135	Lewis County
google	21	21137	Lincoln County
google	21	21139	Livingston County
google	21	21141	Logan County
google	21	21143	Lyon County
google	21	21145	McCracken County
google	21	21147	McCreary County
google	21	21149	McLean County
google	21	21151	Madison County
google	21	21153	Magoffin County
google	21	21155	Marion County
google	21	21157	Marshall County
google	21	21159	Martin County
google	21	21161	Mason County
google	21	21163	Meade County
google	21	21165	Menifee County
google	21	21167	Mercer County
google	21	21169	Metcalfe County
google	21	21171	Monroe County
google	21	21173	Montgomery County
google	21	21175	Morgan County
google	21	21177	Muhlenberg County
google	21	21179	Nelson County
google	21	21181	Nicholas County
google	21	21183	Ohio County
google	21	21185	Oldham County
google	21	21187	Owen County
google	21	21189	Owsley County
google	21	21191	Pendleton County
google	21	21193	Perry County
google	21	21195	Pike County
google	21	21197	Powell County
google	21	21199	Pulaski County
google	21	21201	Robertson County
google	21	21203	Rockcastle County
google	21	21205	Rowan County
google	21	21207	Russell County
google	21	21209	Scott County
google	21	21211	Shelby County
google	21	21213	Simpson County
google	21	21215	Spencer County
google	21	21217	Taylor County
google	21	21219	Todd County
google	21	21221	Trigg County
google	21	21223	Trimble County
google	21	21225	Union County
google	21	21227	Warren County
google	21	21229	Washington County
google	21	21231	Wayne County
google	21	21233	Webster County
google	21	21235	Whitley County
google	21	21237	Wolfe County
google	21	21239	Woodford County
google	22	22001	Acadia Parish
google	22	22003	Allen Parish
google	22	22005	Ascension Parish
google	22	22007	Assumption Parish
google	22	22009	Avoyelles Parish
google	22	22011	Beauregard Parish
google	22	22013	Bienville Parish
google	22	22015	Bossier Parish
google	22	22017	Caddo Parish
google	22	22019	Calcasieu Parish
google	22	22021	Caldwell Parish
google	22	22023	Cameron Parish
google	22	22025	Catahoula Parish
google	22	22027	Claiborne Parish
google	22	22029	Concordia Parish
google	22	22031	De Soto Parish
google	22	22033	East Baton Rouge Parish
google	22	22035	East Carroll Parish
google	22	22037	East Feliciana Parish
google	22	22039	Evangeline Parish
google	22	22041	Franklin Parish
google	22	22043	Grant Parish
google	22	22045	Iberia Parish
google	22	22047	Iberville Parish
google	22	22049	Jackson Parish
google	22	22051	Jefferson Parish
google	22	22053	Jefferson Davis Parish
google	22	22055	Lafayette Parish
google	22	22057	Lafourche Parish
google	22	22059	LaSalle Parish
google	22	22061	Lincoln Parish
google	22	22063	Livingston Parish
google	22	22065	Madison Parish
google	22	22067	Morehouse Parish
google	22	22069	Natchitoches Parish
google	22	22071	Orleans Parish
google	22	22073	Ouachita Parish
google	22	22075	Plaquemines Parish
google	22	22077	Pointe Coupee Parish
google	22	22079	Rapides Parish
google	22	22081	Red River Parish
google	22	22083	Richland Parish
google	22	22085	Sabine Parish
google	22	22087	St. Bernard Parish
google	22	22089	St. Charles Parish
google	22	22091	St. Helena Parish
google	22	22093	St. James Parish
google	22	22095	St. John the Baptist Parish
google	22	22097	St. Landry Parish
google	22	22099	St. Martin Parish
google	22	22101	St. Mary Parish
google	22	22103	St. Tammany Parish
google	22	22105	Tangipahoa Parish
google	22	22107	Tensas Parish
google	22	22109	Terrebonne Parish
google	22	22111	Union Parish
google	22	22113	Vermilion Parish
google	22	22115	Vernon Parish
google	22	22117	Washington Parish
google	22	22119	Webster Parish
google	22	22121	West Baton Rouge Parish
google	22	22123	West Carroll Parish
google	22	22125	West Feliciana Parish
google	22	22127	Winn Parish
google	23	23001	Androscoggin County
google	23	23003	Aroostook County
google	23	23005	Cumberland County
google	23	23007	Franklin County
google	23	23009	Hancock County
google	23	23011	Kennebec County
google	23	23013	Knox County
google	23	23015	Lincoln County
google	23	23017	Oxford County
google	23	23019	Penobscot County
google	23	23021	Piscataquis County
google	23	23023	Sagadahoc County
google	23	23025	Somerset County
google	23	23027	Waldo County
google	23	23029	Washington County
google	23	23031	York County
google	24	24001	Allegany County
google	24	24003	Anne Arundel County
google	24	24005	Baltimore County
google	24	24009	Calvert County
google	24	24011	Caroline County
google	24	24013	Carroll County
google	24	24015	Cecil County
google	24	24017	Charles County
google	24	24019	Dorchester County
google	24	24021	Frederick County
google	24	24023	Garrett County
google	24	24025	Harford County
google	24	24027	Howard County
google	24	24029	Kent County
google	24	24031	Montgomery County
google	24	24033	Prince George's County
google	24	24035	Queen Anne's County
google	24	24037	St. Mary's County
google	24	24039	Somerset County
google	24	24041	Talbot County
google	24	24043	Washington County
google	24	24045	Wicomico County
google	24	24047	Worcester County
google	24	24510	Baltimore city
google	25	25001	Barnstable County
google	25	25003	Berkshire County
google	25	25005	Bristol County
google	25	25007	Dukes County
google	25	25009	Essex County
google	25	25011	Franklin County
google	25	25013	Hampden County
google	25	25015	Hampshire County
google	25	25017	Middlesex County
google	25	25019	Nantucket County
google	25	25021	Norfolk County
google	25	25023	Plymouth County
google	25	25025	Suffolk County
google	25	25027	Worcester County
google	26	26001	Alcona County
google	26	26003	Alger County
google	28	28113	Pike County
google	26	26005	Allegan County
google	26	26007	Alpena County
google	26	26009	Antrim County
google	26	26011	Arenac County
google	26	26013	Baraga County
google	26	26015	Barry County
google	26	26017	Bay County
google	26	26019	Benzie County
google	26	26021	Berrien County
google	26	26023	Branch County
google	26	26025	Calhoun County
google	26	26027	Cass County
google	26	26029	Charlevoix County
google	26	26031	Cheboygan County
google	26	26033	Chippewa County
google	26	26035	Clare County
google	26	26037	Clinton County
google	26	26039	Crawford County
google	26	26041	Delta County
google	26	26043	Dickinson County
google	26	26045	Eaton County
google	26	26047	Emmet County
google	26	26049	Genesee County
google	26	26051	Gladwin County
google	26	26053	Gogebic County
google	26	26055	Grand Traverse County
google	26	26057	Gratiot County
google	26	26059	Hillsdale County
google	26	26061	Houghton County
google	26	26063	Huron County
google	26	26065	Ingham County
google	26	26067	Ionia County
google	26	26069	Iosco County
google	26	26071	Iron County
google	26	26073	Isabella County
google	26	26075	Jackson County
google	26	26077	Kalamazoo County
google	26	26079	Kalkaska County
google	26	26081	Kent County
google	26	26083	Keweenaw County
google	26	26085	Lake County
google	26	26087	Lapeer County
google	26	26089	Leelanau County
google	26	26091	Lenawee County
google	26	26093	Livingston County
google	26	26095	Luce County
google	26	26097	Mackinac County
google	26	26099	Macomb County
google	26	26101	Manistee County
google	26	26103	Marquette County
google	26	26105	Mason County
google	26	26107	Mecosta County
google	26	26109	Menominee County
google	26	26111	Midland County
google	26	26113	Missaukee County
google	26	26115	Monroe County
google	26	26117	Montcalm County
google	26	26119	Montmorency County
google	26	26121	Muskegon County
google	26	26123	Newaygo County
google	26	26125	Oakland County
google	26	26127	Oceana County
google	26	26129	Ogemaw County
google	26	26131	Ontonagon County
google	26	26133	Osceola County
google	26	26135	Oscoda County
google	26	26137	Otsego County
google	26	26139	Ottawa County
google	26	26141	Presque Isle County
google	26	26143	Roscommon County
google	26	26145	Saginaw County
google	26	26147	St. Clair County
google	26	26149	St. Joseph County
google	26	26151	Sanilac County
google	26	26153	Schoolcraft County
google	26	26155	Shiawassee County
google	26	26157	Tuscola County
google	26	26159	Van Buren County
google	26	26161	Washtenaw County
google	26	26163	Wayne County
google	26	26165	Wexford County
google	27	27001	Aitkin County
google	27	27003	Anoka County
google	27	27005	Becker County
google	27	27007	Beltrami County
google	27	27009	Benton County
google	27	27011	Big Stone County
google	27	27013	Blue Earth County
google	27	27015	Brown County
google	27	27017	Carlton County
google	27	27019	Carver County
google	27	27021	Cass County
google	27	27023	Chippewa County
google	27	27025	Chisago County
google	27	27027	Clay County
google	27	27029	Clearwater County
google	27	27031	Cook County
google	27	27033	Cottonwood County
google	27	27035	Crow Wing County
google	27	27037	Dakota County
google	27	27039	Dodge County
google	27	27041	Douglas County
google	27	27043	Faribault County
google	27	27045	Fillmore County
google	27	27047	Freeborn County
google	27	27049	Goodhue County
google	27	27051	Grant County
google	27	27053	Hennepin County
google	27	27055	Houston County
google	27	27057	Hubbard County
google	27	27059	Isanti County
google	27	27061	Itasca County
google	27	27063	Jackson County
google	27	27065	Kanabec County
google	27	27067	Kandiyohi County
google	27	27069	Kittson County
google	27	27071	Koochiching County
google	27	27073	Lac qui Parle County
google	27	27075	Lake County
google	27	27077	Lake of the Woods County
google	27	27079	Le Sueur County
google	27	27081	Lincoln County
google	27	27083	Lyon County
google	27	27085	McLeod County
google	27	27087	Mahnomen County
google	27	27089	Marshall County
google	27	27091	Martin County
google	27	27093	Meeker County
google	27	27095	Mille Lacs County
google	27	27097	Morrison County
google	27	27099	Mower County
google	27	27101	Murray County
google	27	27103	Nicollet County
google	27	27105	Nobles County
google	27	27107	Norman County
google	27	27109	Olmsted County
google	27	27111	Otter Tail County
google	27	27113	Pennington County
google	27	27115	Pine County
google	27	27117	Pipestone County
google	27	27119	Polk County
google	27	27121	Pope County
google	27	27123	Ramsey County
google	27	27125	Red Lake County
google	27	27127	Redwood County
google	27	27129	Renville County
google	27	27131	Rice County
google	27	27133	Rock County
google	27	27135	Roseau County
google	27	27137	St. Louis County
google	27	27139	Scott County
google	27	27141	Sherburne County
google	27	27143	Sibley County
google	27	27145	Stearns County
google	27	27147	Steele County
google	27	27149	Stevens County
google	27	27151	Swift County
google	27	27153	Todd County
google	27	27155	Traverse County
google	27	27157	Wabasha County
google	27	27159	Wadena County
google	27	27161	Waseca County
google	27	27163	Washington County
google	27	27165	Watonwan County
google	27	27167	Wilkin County
google	27	27169	Winona County
google	27	27171	Wright County
google	27	27173	Yellow Medicine County
google	28	28001	Adams County
google	28	28003	Alcorn County
google	28	28005	Amite County
google	28	28007	Attala County
google	28	28009	Benton County
google	28	28011	Bolivar County
google	28	28013	Calhoun County
google	28	28015	Carroll County
google	28	28017	Chickasaw County
google	28	28019	Choctaw County
google	28	28021	Claiborne County
google	28	28023	Clarke County
google	28	28025	Clay County
google	28	28027	Coahoma County
google	28	28029	Copiah County
google	28	28031	Covington County
google	28	28033	DeSoto County
google	28	28035	Forrest County
google	28	28037	Franklin County
google	28	28039	George County
google	28	28041	Greene County
google	28	28043	Grenada County
google	28	28045	Hancock County
google	28	28047	Harrison County
google	28	28049	Hinds County
google	28	28051	Holmes County
google	28	28053	Humphreys County
google	28	28055	Issaquena County
google	28	28057	Itawamba County
google	28	28059	Jackson County
google	28	28061	Jasper County
google	28	28063	Jefferson County
google	28	28065	Jefferson Davis County
google	28	28067	Jones County
google	28	28069	Kemper County
google	28	28071	Lafayette County
google	28	28073	Lamar County
google	28	28075	Lauderdale County
google	28	28077	Lawrence County
google	28	28079	Leake County
google	28	28081	Lee County
google	28	28083	Leflore County
google	28	28085	Lincoln County
google	28	28087	Lowndes County
google	28	28089	Madison County
google	28	28091	Marion County
google	28	28093	Marshall County
google	28	28095	Monroe County
google	28	28097	Montgomery County
google	28	28099	Neshoba County
google	28	28101	Newton County
google	28	28103	Noxubee County
google	28	28105	Oktibbeha County
google	28	28107	Panola County
google	28	28109	Pearl River County
google	28	28111	Perry County
google	28	28115	Pontotoc County
google	28	28117	Prentiss County
google	28	28119	Quitman County
google	28	28121	Rankin County
google	28	28123	Scott County
google	28	28125	Sharkey County
google	28	28127	Simpson County
google	28	28129	Smith County
google	28	28131	Stone County
google	28	28133	Sunflower County
google	28	28135	Tallahatchie County
google	28	28137	Tate County
google	28	28139	Tippah County
google	28	28141	Tishomingo County
google	28	28143	Tunica County
google	28	28145	Union County
google	28	28147	Walthall County
google	28	28149	Warren County
google	28	28151	Washington County
google	28	28153	Wayne County
google	28	28155	Webster County
google	28	28157	Wilkinson County
google	28	28159	Winston County
google	28	28161	Yalobusha County
google	28	28163	Yazoo County
google	29	29001	Adair County
google	29	29003	Andrew County
google	29	29005	Atchison County
google	29	29007	Audrain County
google	29	29009	Barry County
google	29	29011	Barton County
google	29	29013	Bates County
google	29	29015	Benton County
google	29	29017	Bollinger County
google	29	29019	Boone County
google	29	29021	Buchanan County
google	29	29023	Butler County
google	29	29025	Caldwell County
google	29	29027	Callaway County
google	29	29029	Camden County
google	29	29031	Cape Girardeau County
google	29	29033	Carroll County
google	29	29035	Carter County
google	29	29037	Cass County
google	29	29039	Cedar County
google	29	29041	Chariton County
google	29	29043	Christian County
google	29	29045	Clark County
google	29	29047	Clay County
google	29	29049	Clinton County
google	29	29051	Cole County
google	29	29053	Cooper County
google	29	29055	Crawford County
google	29	29057	Dade County
google	29	29059	Dallas County
google	29	29061	Daviess County
google	29	29063	DeKalb County
google	29	29065	Dent County
google	29	29067	Douglas County
google	29	29069	Dunklin County
google	29	29071	Franklin County
google	29	29073	Gasconade County
google	29	29075	Gentry County
google	29	29077	Greene County
google	29	29079	Grundy County
google	29	29081	Harrison County
google	29	29083	Henry County
google	29	29085	Hickory County
google	29	29087	Holt County
google	29	29089	Howard County
google	29	29091	Howell County
google	29	29093	Iron County
google	29	29095	Jackson County
google	29	29097	Jasper County
google	29	29099	Jefferson County
google	29	29101	Johnson County
google	29	29103	Knox County
google	29	29105	Laclede County
google	29	29107	Lafayette County
google	29	29109	Lawrence County
google	29	29111	Lewis County
google	29	29113	Lincoln County
google	29	29115	Linn County
google	29	29117	Livingston County
google	29	29119	McDonald County
google	29	29121	Macon County
google	29	29123	Madison County
google	29	29125	Maries County
google	29	29127	Marion County
google	29	29129	Mercer County
google	29	29131	Miller County
google	29	29133	Mississippi County
google	29	29135	Moniteau County
google	29	29137	Monroe County
google	29	29139	Montgomery County
google	29	29141	Morgan County
google	29	29143	New Madrid County
google	29	29145	Newton County
google	29	29147	Nodaway County
google	29	29149	Oregon County
google	29	29151	Osage County
google	29	29153	Ozark County
google	29	29155	Pemiscot County
google	29	29157	Perry County
google	29	29159	Pettis County
google	29	29161	Phelps County
google	29	29163	Pike County
google	29	29165	Platte County
google	29	29167	Polk County
google	29	29169	Pulaski County
google	29	29171	Putnam County
google	29	29173	Ralls County
google	29	29175	Randolph County
google	29	29177	Ray County
google	29	29181	Ripley County
google	29	29183	St. Charles County
google	29	29185	St. Clair County
google	29	29186	Ste. Genevieve County
google	29	29187	St. Francois County
google	29	29189	St. Louis County
google	29	29195	Saline County
google	29	29197	Schuyler County
google	29	29199	Scotland County
google	29	29201	Scott County
google	29	29203	Shannon County
google	29	29205	Shelby County
google	29	29207	Stoddard County
google	29	29209	Stone County
google	29	29211	Sullivan County
google	29	29213	Taney County
google	29	29215	Texas County
google	29	29217	Vernon County
google	29	29219	Warren County
google	29	29221	Washington County
google	29	29223	Wayne County
google	29	29225	Webster County
google	29	29227	Worth County
google	29	29229	Wright County
google	29	29510	St. Louis city
google	30	30001	Beaverhead County
google	30	30003	Big Horn County
google	30	30005	Blaine County
google	30	30007	Broadwater County
google	30	30009	Carbon County
google	30	30011	Carter County
google	30	30013	Cascade County
google	30	30015	Chouteau County
google	30	30017	Custer County
google	30	30019	Daniels County
google	30	30021	Dawson County
google	30	30023	Deer Lodge County
google	30	30025	Fallon County
google	30	30027	Fergus County
google	30	30029	Flathead County
google	30	30031	Gallatin County
google	30	30033	Garfield County
google	30	30035	Glacier County
google	30	30037	Golden Valley County
google	30	30039	Granite County
google	30	30041	Hill County
google	30	30043	Jefferson County
google	30	30045	Judith Basin County
google	30	30047	Lake County
google	30	30049	Lewis and Clark County
google	30	30051	Liberty County
google	30	30053	Lincoln County
google	30	30055	McCone County
google	30	30057	Madison County
google	30	30059	Meagher County
google	30	30061	Mineral County
google	30	30063	Missoula County
google	30	30065	Musselshell County
google	30	30067	Park County
google	30	30069	Petroleum County
google	30	30071	Phillips County
google	30	30073	Pondera County
google	30	30075	Powder River County
google	30	30077	Powell County
google	30	30079	Prairie County
google	30	30081	Ravalli County
google	30	30083	Richland County
google	30	30085	Roosevelt County
google	30	30087	Rosebud County
google	30	30089	Sanders County
google	30	30091	Sheridan County
google	30	30093	Silver Bow County
google	30	30095	Stillwater County
google	30	30097	Sweet Grass County
google	30	30099	Teton County
google	30	30101	Toole County
google	30	30103	Treasure County
google	30	30105	Valley County
google	30	30107	Wheatland County
google	30	30109	Wibaux County
google	30	30111	Yellowstone County
google	31	31001	Adams County
google	31	31003	Antelope County
google	31	31005	Arthur County
google	31	31007	Banner County
google	31	31009	Blaine County
google	31	31011	Boone County
google	31	31013	Box Butte County
google	31	31015	Boyd County
google	31	31017	Brown County
google	31	31019	Buffalo County
google	31	31021	Burt County
google	31	31023	Butler County
google	31	31025	Cass County
google	31	31027	Cedar County
google	31	31029	Chase County
google	31	31031	Cherry County
google	31	31033	Cheyenne County
google	31	31035	Clay County
google	31	31037	Colfax County
google	31	31039	Cuming County
google	31	31041	Custer County
google	31	31043	Dakota County
google	31	31045	Dawes County
google	31	31047	Dawson County
google	31	31049	Deuel County
google	31	31051	Dixon County
google	31	31053	Dodge County
google	31	31055	Douglas County
google	31	31057	Dundy County
google	31	31059	Fillmore County
google	31	31061	Franklin County
google	31	31063	Frontier County
google	31	31065	Furnas County
google	31	31067	Gage County
google	31	31069	Garden County
google	31	31071	Garfield County
google	31	31073	Gosper County
google	31	31075	Grant County
google	31	31077	Greeley County
google	31	31079	Hall County
google	31	31081	Hamilton County
google	31	31083	Harlan County
google	31	31085	Hayes County
google	31	31087	Hitchcock County
google	31	31089	Holt County
google	31	31091	Hooker County
google	31	31093	Howard County
google	31	31095	Jefferson County
google	31	31097	Johnson County
google	31	31099	Kearney County
google	31	31101	Keith County
google	31	31103	Keya Paha County
google	31	31105	Kimball County
google	31	31107	Knox County
google	31	31109	Lancaster County
google	31	31111	Lincoln County
google	31	31113	Logan County
google	31	31115	Loup County
google	31	31117	McPherson County
google	31	31119	Madison County
google	31	31121	Merrick County
google	31	31123	Morrill County
google	31	31125	Nance County
google	31	31127	Nemaha County
google	31	31129	Nuckolls County
google	31	31131	Otoe County
google	31	31133	Pawnee County
google	31	31135	Perkins County
google	31	31137	Phelps County
google	31	31139	Pierce County
google	31	31141	Platte County
google	31	31143	Polk County
google	31	31145	Red Willow County
google	31	31147	Richardson County
google	31	31149	Rock County
google	31	31151	Saline County
google	31	31153	Sarpy County
google	31	31155	Saunders County
google	31	31157	Scotts Bluff County
google	31	31159	Seward County
google	31	31161	Sheridan County
google	31	31163	Sherman County
google	31	31165	Sioux County
google	31	31167	Stanton County
google	31	31169	Thayer County
google	31	31171	Thomas County
google	31	31173	Thurston County
google	31	31175	Valley County
google	31	31177	Washington County
google	31	31179	Wayne County
google	31	31181	Webster County
google	31	31183	Wheeler County
google	31	31185	York County
google	32	32001	Churchill County
google	32	32003	Clark County
google	32	32005	Douglas County
google	32	32007	Elko County
google	32	32009	Esmeralda County
google	32	32011	Eureka County
google	32	32013	Humboldt County
google	32	32015	Lander County
google	32	32017	Lincoln County
google	32	32019	Lyon County
google	32	32021	Mineral County
google	32	32023	Nye County
google	32	32027	Pershing County
google	32	32029	Storey County
google	32	32031	Washoe County
google	32	32033	White Pine County
google	32	32510	Carson City
google	33	33001	Belknap County
google	33	33003	Carroll County
google	33	33005	Cheshire County
google	33	33007	Coos County
google	33	33009	Grafton County
google	33	33011	Hillsborough County
google	33	33013	Merrimack County
google	33	33015	Rockingham County
google	33	33017	Strafford County
google	33	33019	Sullivan County
google	34	34001	Atlantic County
google	34	34003	Bergen County
google	34	34005	Burlington County
google	34	34007	Camden County
google	34	34009	Cape May County
google	34	34011	Cumberland County
google	34	34013	Essex County
google	34	34015	Gloucester County
google	34	34017	Hudson County
google	34	34019	Hunterdon County
google	34	34021	Mercer County
google	34	34023	Middlesex County
google	34	34025	Monmouth County
google	34	34027	Morris County
google	34	34029	Ocean County
google	34	34031	Passaic County
google	34	34033	Salem County
google	34	34035	Somerset County
google	34	34037	Sussex County
google	34	34039	Union County
google	34	34041	Warren County
google	35	35001	Bernalillo County
google	35	35003	Catron County
google	35	35005	Chaves County
google	35	35006	Cibola County
google	35	35007	Colfax County
google	35	35009	Curry County
google	35	35011	De Baca County
google	35	35013	Doña Ana County
google	35	35015	Eddy County
google	35	35017	Grant County
google	35	35019	Guadalupe County
google	35	35021	Harding County
google	35	35023	Hidalgo County
google	35	35025	Lea County
google	35	35027	Lincoln County
google	35	35028	Los Alamos County
google	35	35029	Luna County
google	35	35031	McKinley County
google	35	35033	Mora County
google	35	35035	Otero County
google	35	35037	Quay County
google	35	35039	Rio Arriba County
google	35	35041	Roosevelt County
google	35	35043	Sandoval County
google	35	35045	San Juan County
google	35	35047	San Miguel County
google	35	35049	Santa Fe County
google	35	35051	Sierra County
google	35	35053	Socorro County
google	35	35055	Taos County
google	35	35057	Torrance County
google	35	35059	Union County
google	35	35061	Valencia County
google	36	36001	Albany County
google	36	36003	Allegany County
google	36	36005	Bronx County
google	36	36007	Broome County
google	36	36009	Cattaraugus County
google	36	36011	Cayuga County
google	36	36013	Chautauqua County
google	36	36015	Chemung County
google	36	36017	Chenango County
google	36	36019	Clinton County
google	36	36021	Columbia County
google	36	36023	Cortland County
google	36	36025	Delaware County
google	36	36027	Dutchess County
google	36	36029	Erie County
google	36	36031	Essex County
google	36	36033	Franklin County
google	36	36035	Fulton County
google	36	36037	Genesee County
google	36	36039	Greene County
google	36	36041	Hamilton County
google	36	36043	Herkimer County
google	36	36045	Jefferson County
google	36	36047	Kings County
google	36	36049	Lewis County
google	36	36051	Livingston County
google	36	36053	Madison County
google	36	36055	Monroe County
google	36	36057	Montgomery County
google	36	36059	Nassau County
google	36	36061	New York County
google	36	36063	Niagara County
google	36	36065	Oneida County
google	36	36067	Onondaga County
google	36	36069	Ontario County
google	36	36071	Orange County
google	36	36073	Orleans County
google	36	36075	Oswego County
google	36	36077	Otsego County
google	36	36079	Putnam County
google	36	36081	Queens County
google	36	36083	Rensselaer County
google	36	36085	Richmond County
google	36	36087	Rockland County
google	36	36089	St. Lawrence County
google	36	36091	Saratoga County
google	36	36093	Schenectady County
google	36	36095	Schoharie County
google	36	36097	Schuyler County
google	36	36099	Seneca County
google	36	36101	Steuben County
google	36	36103	Suffolk County
google	36	36105	Sullivan County
google	36	36107	Tioga County
google	36	36109	Tompkins County
google	36	36111	Ulster County
google	36	36113	Warren County
google	36	36115	Washington County
google	36	36117	Wayne County
google	36	36119	Westchester County
google	36	36121	Wyoming County
google	36	36123	Yates County
google	37	37001	Alamance County
google	37	37003	Alexander County
google	37	37005	Alleghany County
google	37	37007	Anson County
google	37	37009	Ashe County
google	37	37011	Avery County
google	37	37013	Beaufort County
google	37	37015	Bertie County
google	37	37017	Bladen County
google	37	37019	Brunswick County
google	37	37021	Buncombe County
google	37	37023	Burke County
google	37	37025	Cabarrus County
google	37	37027	Caldwell County
google	37	37029	Camden County
google	37	37031	Carteret County
google	37	37033	Caswell County
google	37	37035	Catawba County
google	37	37037	Chatham County
google	37	37041	Chowan County
google	37	37043	Clay County
google	37	37045	Cleveland County
google	37	37047	Columbus County
google	37	37049	Craven County
google	37	37051	Cumberland County
google	37	37053	Currituck County
google	37	37055	Dare County
google	37	37057	Davidson County
google	37	37059	Davie County
google	37	37061	Duplin County
google	37	37063	Durham County
google	37	37065	Edgecombe County
google	37	37067	Forsyth County
google	37	37069	Franklin County
google	37	37071	Gaston County
google	37	37073	Gates County
google	37	37075	Graham County
google	37	37077	Granville County
google	37	37079	Greene County
google	37	37081	Guilford County
google	37	37083	Halifax County
google	37	37085	Harnett County
google	37	37087	Haywood County
google	37	37089	Henderson County
google	37	37091	Hertford County
google	37	37093	Hoke County
google	37	37095	Hyde County
google	37	37097	Iredell County
google	37	37099	Jackson County
google	37	37101	Johnston County
google	37	37103	Jones County
google	37	37105	Lee County
google	37	37107	Lenoir County
google	37	37109	Lincoln County
google	37	37111	McDowell County
google	37	37113	Macon County
google	37	37115	Madison County
google	37	37117	Martin County
google	37	37119	Mecklenburg County
google	37	37121	Mitchell County
google	37	37123	Montgomery County
google	37	37125	Moore County
google	37	37127	Nash County
google	37	37129	New Hanover County
google	37	37131	Northampton County
google	37	37133	Onslow County
google	37	37135	Orange County
google	37	37137	Pamlico County
google	37	37139	Pasquotank County
google	37	37141	Pender County
google	37	37143	Perquimans County
google	37	37145	Person County
google	37	37147	Pitt County
google	37	37149	Polk County
google	37	37151	Randolph County
google	37	37153	Richmond County
google	37	37155	Robeson County
google	37	37157	Rockingham County
google	37	37159	Rowan County
google	37	37161	Rutherford County
google	37	37163	Sampson County
google	37	37165	Scotland County
google	37	37167	Stanly County
google	37	37169	Stokes County
google	37	37171	Surry County
google	37	37173	Swain County
google	37	37175	Transylvania County
google	37	37177	Tyrrell County
google	37	37179	Union County
google	37	37181	Vance County
google	37	37183	Wake County
google	37	37185	Warren County
google	37	37187	Washington County
google	37	37189	Watauga County
google	37	37191	Wayne County
google	37	37193	Wilkes County
google	37	37195	Wilson County
google	37	37197	Yadkin County
google	37	37199	Yancey County
google	38	38001	Adams County
google	38	38003	Barnes County
google	38	38005	Benson County
google	38	38007	Billings County
google	38	38009	Bottineau County
google	38	38011	Bowman County
google	38	38013	Burke County
google	38	38015	Burleigh County
google	38	38017	Cass County
google	38	38019	Cavalier County
google	38	38021	Dickey County
google	38	38023	Divide County
google	38	38025	Dunn County
google	38	38027	Eddy County
google	38	38029	Emmons County
google	38	38031	Foster County
google	38	38033	Golden Valley County
google	38	38035	Grand Forks County
google	38	38037	Grant County
google	38	38039	Griggs County
google	38	38041	Hettinger County
google	38	38043	Kidder County
google	38	38045	LaMoure County
google	38	38047	Logan County
google	38	38049	McHenry County
google	38	38051	McIntosh County
google	38	38053	McKenzie County
google	38	38055	McLean County
google	38	38057	Mercer County
google	38	38059	Morton County
google	38	38061	Mountrail County
google	38	38063	Nelson County
google	38	38065	Oliver County
google	38	38067	Pembina County
google	38	38069	Pierce County
google	38	38071	Ramsey County
google	38	38073	Ransom County
google	38	38075	Renville County
google	38	38077	Richland County
google	38	38079	Rolette County
google	38	38081	Sargent County
google	38	38083	Sheridan County
google	38	38085	Sioux County
google	38	38087	Slope County
google	38	38089	Stark County
google	38	38091	Steele County
google	38	38093	Stutsman County
google	38	38095	Towner County
google	38	38097	Traill County
google	38	38099	Walsh County
google	38	38101	Ward County
google	38	38103	Wells County
google	38	38105	Williams County
google	39	39001	Adams County
google	39	39003	Allen County
google	39	39005	Ashland County
google	39	39007	Ashtabula County
google	39	39009	Athens County
google	39	39011	Auglaize County
google	39	39013	Belmont County
google	39	39015	Brown County
google	39	39017	Butler County
google	39	39019	Carroll County
google	39	39021	Champaign County
google	39	39023	Clark County
google	39	39025	Clermont County
google	39	39027	Clinton County
google	39	39029	Columbiana County
google	39	39031	Coshocton County
google	39	39033	Crawford County
google	39	39035	Cuyahoga County
google	39	39037	Darke County
google	39	39039	Defiance County
google	39	39041	Delaware County
google	39	39043	Erie County
google	39	39045	Fairfield County
google	39	39047	Fayette County
google	39	39049	Franklin County
google	39	39051	Fulton County
google	39	39053	Gallia County
google	39	39055	Geauga County
google	39	39057	Greene County
google	39	39059	Guernsey County
google	39	39061	Hamilton County
google	39	39063	Hancock County
google	39	39065	Hardin County
google	39	39067	Harrison County
google	39	39069	Henry County
google	39	39071	Highland County
google	39	39073	Hocking County
google	39	39075	Holmes County
google	39	39077	Huron County
google	39	39079	Jackson County
google	39	39081	Jefferson County
google	39	39083	Knox County
google	39	39085	Lake County
google	39	39087	Lawrence County
google	39	39089	Licking County
google	39	39091	Logan County
google	39	39093	Lorain County
google	39	39095	Lucas County
google	39	39097	Madison County
google	39	39099	Mahoning County
google	39	39101	Marion County
google	39	39103	Medina County
google	39	39105	Meigs County
google	39	39107	Mercer County
google	39	39109	Miami County
google	39	39111	Monroe County
google	39	39113	Montgomery County
google	39	39115	Morgan County
google	39	39117	Morrow County
google	39	39119	Muskingum County
google	39	39121	Noble County
google	39	39123	Ottawa County
google	39	39125	Paulding County
google	39	39127	Perry County
google	39	39129	Pickaway County
google	39	39131	Pike County
google	39	39133	Portage County
google	39	39135	Preble County
google	39	39137	Putnam County
google	39	39139	Richland County
google	39	39141	Ross County
google	39	39143	Sandusky County
google	39	39145	Scioto County
google	39	39147	Seneca County
google	39	39149	Shelby County
google	39	39151	Stark County
google	39	39153	Summit County
google	39	39155	Trumbull County
google	39	39157	Tuscarawas County
google	39	39159	Union County
google	39	39161	Van Wert County
google	39	39163	Vinton County
google	39	39165	Warren County
google	39	39167	Washington County
google	39	39169	Wayne County
google	39	39171	Williams County
google	39	39173	Wood County
google	39	39175	Wyandot County
google	40	40001	Adair County
google	40	40003	Alfalfa County
google	40	40005	Atoka County
google	40	40007	Beaver County
google	40	40009	Beckham County
google	40	40011	Blaine County
google	40	40013	Bryan County
google	40	40015	Caddo County
google	40	40017	Canadian County
google	40	40019	Carter County
google	40	40021	Cherokee County
google	40	40023	Choctaw County
google	40	40025	Cimarron County
google	40	40027	Cleveland County
google	40	40029	Coal County
google	40	40031	Comanche County
google	40	40033	Cotton County
google	40	40035	Craig County
google	40	40037	Creek County
google	40	40039	Custer County
google	40	40041	Delaware County
google	40	40043	Dewey County
google	40	40045	Ellis County
google	40	40047	Garfield County
google	40	40049	Garvin County
google	40	40051	Grady County
google	40	40053	Grant County
google	40	40055	Greer County
google	40	40057	Harmon County
google	40	40059	Harper County
google	40	40061	Haskell County
google	40	40063	Hughes County
google	40	40065	Jackson County
google	40	40067	Jefferson County
google	40	40069	Johnston County
google	40	40071	Kay County
google	40	40073	Kingfisher County
google	40	40075	Kiowa County
google	40	40077	Latimer County
google	40	40079	Le Flore County
google	40	40081	Lincoln County
google	40	40083	Logan County
google	40	40085	Love County
google	40	40087	McClain County
google	40	40089	McCurtain County
google	40	40091	McIntosh County
google	40	40093	Major County
google	40	40095	Marshall County
google	40	40097	Mayes County
google	40	40099	Murray County
google	40	40101	Muskogee County
google	40	40103	Noble County
google	40	40105	Nowata County
google	40	40107	Okfuskee County
google	40	40109	Oklahoma County
google	40	40111	Okmulgee County
google	40	40113	Osage County
google	40	40115	Ottawa County
google	40	40117	Pawnee County
google	40	40119	Payne County
google	40	40121	Pittsburg County
google	40	40123	Pontotoc County
google	40	40125	Pottawatomie County
google	40	40127	Pushmataha County
google	40	40129	Roger Mills County
google	40	40131	Rogers County
google	40	40133	Seminole County
google	40	40135	Sequoyah County
google	40	40137	Stephens County
google	40	40139	Texas County
google	40	40141	Tillman County
google	40	40143	Tulsa County
google	40	40145	Wagoner County
google	40	40147	Washington County
google	40	40149	Washita County
google	40	40151	Woods County
google	40	40153	Woodward County
google	41	41001	Baker County
google	41	41003	Benton County
google	41	41005	Clackamas County
google	41	41007	Clatsop County
google	41	41009	Columbia County
google	41	41011	Coos County
google	41	41013	Crook County
google	41	41015	Curry County
google	41	41017	Deschutes County
google	41	41019	Douglas County
google	41	41021	Gilliam County
google	41	41023	Grant County
google	41	41025	Harney County
google	41	41027	Hood River County
google	41	41029	Jackson County
google	41	41031	Jefferson County
google	41	41033	Josephine County
google	41	41035	Klamath County
google	41	41037	Lake County
google	41	41039	Lane County
google	41	41041	Lincoln County
google	41	41043	Linn County
google	41	41045	Malheur County
google	41	41047	Marion County
google	41	41049	Morrow County
google	41	41051	Multnomah County
google	41	41053	Polk County
google	41	41055	Sherman County
google	41	41057	Tillamook County
google	41	41059	Umatilla County
google	41	41061	Union County
google	41	41063	Wallowa County
google	41	41065	Wasco County
google	41	41067	Washington County
google	41	41069	Wheeler County
google	41	41071	Yamhill County
google	42	42001	Adams County
google	42	42003	Allegheny County
google	42	42005	Armstrong County
google	42	42007	Beaver County
google	45	45087	Union County
google	42	42009	Bedford County
google	42	42011	Berks County
google	42	42013	Blair County
google	42	42015	Bradford County
google	42	42017	Bucks County
google	42	42019	Butler County
google	42	42021	Cambria County
google	42	42023	Cameron County
google	42	42025	Carbon County
google	42	42027	Centre County
google	42	42029	Chester County
google	42	42031	Clarion County
google	42	42033	Clearfield County
google	42	42035	Clinton County
google	42	42037	Columbia County
google	42	42039	Crawford County
google	42	42041	Cumberland County
google	42	42043	Dauphin County
google	42	42045	Delaware County
google	42	42047	Elk County
google	42	42049	Erie County
google	42	42051	Fayette County
google	42	42053	Forest County
google	42	42055	Franklin County
google	42	42057	Fulton County
google	42	42059	Greene County
google	42	42061	Huntingdon County
google	42	42063	Indiana County
google	42	42065	Jefferson County
google	42	42067	Juniata County
google	42	42069	Lackawanna County
google	42	42071	Lancaster County
google	42	42073	Lawrence County
google	42	42075	Lebanon County
google	42	42077	Lehigh County
google	42	42079	Luzerne County
google	42	42081	Lycoming County
google	42	42083	McKean County
google	42	42085	Mercer County
google	42	42087	Mifflin County
google	42	42089	Monroe County
google	42	42091	Montgomery County
google	42	42093	Montour County
google	42	42095	Northampton County
google	42	42097	Northumberland County
google	42	42099	Perry County
google	42	42101	Philadelphia County
google	42	42103	Pike County
google	42	42105	Potter County
google	42	42107	Schuylkill County
google	42	42109	Snyder County
google	42	42111	Somerset County
google	42	42113	Sullivan County
google	42	42115	Susquehanna County
google	42	42117	Tioga County
google	42	42119	Union County
google	42	42121	Venango County
google	42	42123	Warren County
google	42	42125	Washington County
google	42	42127	Wayne County
google	42	42129	Westmoreland County
google	42	42131	Wyoming County
google	42	42133	York County
google	44	44001	Bristol County
google	44	44003	Kent County
google	44	44005	Newport County
google	44	44007	Providence County
google	44	44009	Washington County
google	45	45001	Abbeville County
google	45	45003	Aiken County
google	45	45005	Allendale County
google	45	45007	Anderson County
google	45	45009	Bamberg County
google	45	45011	Barnwell County
google	45	45013	Beaufort County
google	45	45015	Berkeley County
google	45	45017	Calhoun County
google	45	45019	Charleston County
google	45	45021	Cherokee County
google	45	45023	Chester County
google	45	45025	Chesterfield County
google	45	45027	Clarendon County
google	45	45029	Colleton County
google	45	45031	Darlington County
google	45	45033	Dillon County
google	45	45035	Dorchester County
google	45	45037	Edgefield County
google	45	45039	Fairfield County
google	45	45041	Florence County
google	45	45043	Georgetown County
google	45	45045	Greenville County
google	45	45047	Greenwood County
google	45	45049	Hampton County
google	45	45051	Horry County
google	45	45053	Jasper County
google	45	45055	Kershaw County
google	45	45057	Lancaster County
google	45	45059	Laurens County
google	45	45061	Lee County
google	45	45063	Lexington County
google	45	45065	McCormick County
google	45	45067	Marion County
google	45	45069	Marlboro County
google	45	45071	Newberry County
google	45	45073	Oconee County
google	45	45075	Orangeburg County
google	45	45077	Pickens County
google	45	45079	Richland County
google	45	45081	Saluda County
google	45	45083	Spartanburg County
google	45	45085	Sumter County
google	45	45089	Williamsburg County
google	45	45091	York County
google	46	46003	Aurora County
google	46	46005	Beadle County
google	46	46007	Bennett County
google	46	46009	Bon Homme County
google	46	46011	Brookings County
google	46	46013	Brown County
google	46	46015	Brule County
google	46	46017	Buffalo County
google	46	46019	Butte County
google	46	46021	Campbell County
google	46	46023	Charles Mix County
google	46	46025	Clark County
google	46	46027	Clay County
google	46	46029	Codington County
google	46	46031	Corson County
google	46	46033	Custer County
google	46	46035	Davison County
google	46	46037	Day County
google	46	46039	Deuel County
google	46	46041	Dewey County
google	46	46043	Douglas County
google	46	46045	Edmunds County
google	46	46047	Fall River County
google	46	46049	Faulk County
google	46	46051	Grant County
google	46	46053	Gregory County
google	46	46055	Haakon County
google	46	46057	Hamlin County
google	46	46059	Hand County
google	46	46061	Hanson County
google	46	46063	Harding County
google	46	46065	Hughes County
google	46	46067	Hutchinson County
google	46	46069	Hyde County
google	46	46071	Jackson County
google	46	46073	Jerauld County
google	46	46075	Jones County
google	46	46077	Kingsbury County
google	46	46079	Lake County
google	46	46081	Lawrence County
google	46	46083	Lincoln County
google	46	46085	Lyman County
google	46	46087	McCook County
google	46	46089	McPherson County
google	46	46091	Marshall County
google	46	46093	Meade County
google	46	46095	Mellette County
google	46	46097	Miner County
google	46	46099	Minnehaha County
google	46	46101	Moody County
google	46	46102	Oglala Lakota County
google	46	46103	Pennington County
google	46	46105	Perkins County
google	46	46107	Potter County
google	46	46109	Roberts County
google	46	46111	Sanborn County
google	46	46115	Spink County
google	46	46117	Stanley County
google	46	46119	Sully County
google	46	46121	Todd County
google	46	46123	Tripp County
google	46	46125	Turner County
google	46	46127	Union County
google	46	46129	Walworth County
google	46	46135	Yankton County
google	46	46137	Ziebach County
google	47	47001	Anderson County
google	47	47003	Bedford County
google	47	47005	Benton County
google	47	47007	Bledsoe County
google	47	47009	Blount County
google	47	47011	Bradley County
google	47	47013	Campbell County
google	47	47015	Cannon County
google	47	47017	Carroll County
google	47	47019	Carter County
google	47	47021	Cheatham County
google	47	47023	Chester County
google	47	47025	Claiborne County
google	47	47027	Clay County
google	47	47029	Cocke County
google	47	47031	Coffee County
google	47	47033	Crockett County
google	47	47035	Cumberland County
google	47	47037	Davidson County
google	47	47039	Decatur County
google	47	47041	DeKalb County
google	47	47043	Dickson County
google	47	47045	Dyer County
google	47	47047	Fayette County
google	47	47049	Fentress County
google	47	47051	Franklin County
google	47	47053	Gibson County
google	47	47055	Giles County
google	47	47057	Grainger County
google	47	47059	Greene County
google	47	47061	Grundy County
google	47	47063	Hamblen County
google	47	47065	Hamilton County
google	47	47067	Hancock County
google	47	47069	Hardeman County
google	47	47071	Hardin County
google	47	47073	Hawkins County
google	47	47075	Haywood County
google	47	47077	Henderson County
google	47	47079	Henry County
google	47	47081	Hickman County
google	47	47083	Houston County
google	47	47085	Humphreys County
google	47	47087	Jackson County
google	47	47089	Jefferson County
google	47	47091	Johnson County
google	47	47093	Knox County
google	47	47095	Lake County
google	47	47097	Lauderdale County
google	47	47099	Lawrence County
google	47	47101	Lewis County
google	47	47103	Lincoln County
google	47	47105	Loudon County
google	47	47107	McMinn County
google	47	47109	McNairy County
google	47	47111	Macon County
google	47	47113	Madison County
google	47	47115	Marion County
google	47	47117	Marshall County
google	47	47119	Maury County
google	47	47121	Meigs County
google	47	47123	Monroe County
google	47	47125	Montgomery County
google	47	47127	Moore County
google	47	47129	Morgan County
google	47	47131	Obion County
google	47	47133	Overton County
google	47	47135	Perry County
google	47	47137	Pickett County
google	47	47139	Polk County
google	47	47141	Putnam County
google	47	47143	Rhea County
google	47	47145	Roane County
google	47	47147	Robertson County
google	47	47149	Rutherford County
google	47	47151	Scott County
google	47	47153	Sequatchie County
google	47	47155	Sevier County
google	47	47157	Shelby County
google	47	47159	Smith County
google	47	47161	Stewart County
google	47	47163	Sullivan County
google	47	47165	Sumner County
google	47	47167	Tipton County
google	47	47169	Trousdale County
google	47	47171	Unicoi County
google	47	47173	Union County
google	47	47175	Van Buren County
google	47	47177	Warren County
google	47	47179	Washington County
google	47	47181	Wayne County
google	47	47183	Weakley County
google	47	47185	White County
google	47	47187	Williamson County
google	47	47189	Wilson County
google	48	48001	Anderson County
google	48	48003	Andrews County
google	48	48005	Angelina County
google	48	48007	Aransas County
google	48	48009	Archer County
google	48	48011	Armstrong County
google	48	48013	Atascosa County
google	48	48015	Austin County
google	48	48017	Bailey County
google	48	48019	Bandera County
google	48	48021	Bastrop County
google	48	48023	Baylor County
google	48	48025	Bee County
google	48	48027	Bell County
google	48	48029	Bexar County
google	48	48031	Blanco County
google	48	48033	Borden County
google	48	48035	Bosque County
google	48	48037	Bowie County
google	48	48039	Brazoria County
google	48	48041	Brazos County
google	48	48043	Brewster County
google	48	48045	Briscoe County
google	48	48047	Brooks County
google	48	48049	Brown County
google	48	48051	Burleson County
google	48	48053	Burnet County
google	48	48055	Caldwell County
google	48	48057	Calhoun County
google	48	48059	Callahan County
google	48	48061	Cameron County
google	48	48063	Camp County
google	48	48065	Carson County
google	48	48067	Cass County
google	48	48069	Castro County
google	48	48071	Chambers County
google	48	48073	Cherokee County
google	48	48075	Childress County
google	48	48077	Clay County
google	48	48079	Cochran County
google	48	48081	Coke County
google	48	48083	Coleman County
google	48	48085	Collin County
google	48	48087	Collingsworth County
google	48	48089	Colorado County
google	48	48091	Comal County
google	48	48093	Comanche County
google	48	48095	Concho County
google	48	48097	Cooke County
google	48	48099	Coryell County
google	48	48101	Cottle County
google	48	48103	Crane County
google	48	48105	Crockett County
google	48	48107	Crosby County
google	48	48109	Culberson County
google	48	48111	Dallam County
google	48	48113	Dallas County
google	48	48115	Dawson County
google	48	48117	Deaf Smith County
google	48	48119	Delta County
google	48	48121	Denton County
google	48	48123	DeWitt County
google	48	48125	Dickens County
google	48	48127	Dimmit County
google	48	48129	Donley County
google	48	48131	Duval County
google	48	48133	Eastland County
google	48	48135	Ector County
google	48	48137	Edwards County
google	48	48139	Ellis County
google	48	48141	El Paso County
google	48	48143	Erath County
google	48	48145	Falls County
google	48	48147	Fannin County
google	48	48149	Fayette County
google	48	48151	Fisher County
google	48	48153	Floyd County
google	48	48155	Foard County
google	48	48157	Fort Bend County
google	48	48159	Franklin County
google	48	48161	Freestone County
google	48	48163	Frio County
google	48	48165	Gaines County
google	48	48167	Galveston County
google	48	48169	Garza County
google	48	48171	Gillespie County
google	48	48173	Glasscock County
google	48	48175	Goliad County
google	48	48177	Gonzales County
google	48	48179	Gray County
google	48	48181	Grayson County
google	48	48183	Gregg County
google	48	48185	Grimes County
google	48	48187	Guadalupe County
google	48	48189	Hale County
google	48	48191	Hall County
google	48	48193	Hamilton County
google	48	48195	Hansford County
google	48	48197	Hardeman County
google	48	48199	Hardin County
google	48	48201	Harris County
google	48	48203	Harrison County
google	48	48205	Hartley County
google	48	48207	Haskell County
google	48	48209	Hays County
google	48	48211	Hemphill County
google	48	48213	Henderson County
google	48	48215	Hidalgo County
google	48	48217	Hill County
google	48	48219	Hockley County
google	48	48221	Hood County
google	48	48223	Hopkins County
google	48	48225	Houston County
google	48	48227	Howard County
google	48	48229	Hudspeth County
google	48	48231	Hunt County
google	48	48233	Hutchinson County
google	48	48235	Irion County
google	48	48237	Jack County
google	48	48239	Jackson County
google	48	48241	Jasper County
google	48	48243	Jeff Davis County
google	48	48245	Jefferson County
google	48	48247	Jim Hogg County
google	48	48249	Jim Wells County
google	48	48251	Johnson County
google	48	48253	Jones County
google	48	48255	Karnes County
google	48	48257	Kaufman County
google	48	48259	Kendall County
google	48	48261	Kenedy County
google	48	48263	Kent County
google	48	48265	Kerr County
google	48	48267	Kimble County
google	48	48269	King County
google	48	48271	Kinney County
google	48	48273	Kleberg County
google	48	48275	Knox County
google	48	48277	Lamar County
google	48	48279	Lamb County
google	48	48281	Lampasas County
google	48	48283	La Salle County
google	48	48285	Lavaca County
google	48	48287	Lee County
google	48	48289	Leon County
google	48	48291	Liberty County
google	48	48293	Limestone County
google	48	48295	Lipscomb County
google	48	48297	Live Oak County
google	48	48299	Llano County
google	48	48301	Loving County
google	48	48303	Lubbock County
google	48	48305	Lynn County
google	48	48307	McCulloch County
google	48	48309	McLennan County
google	48	48311	McMullen County
google	48	48313	Madison County
google	48	48315	Marion County
google	48	48317	Martin County
google	48	48319	Mason County
google	48	48321	Matagorda County
google	48	48323	Maverick County
google	48	48325	Medina County
google	48	48327	Menard County
google	48	48329	Midland County
google	48	48331	Milam County
google	48	48333	Mills County
google	48	48335	Mitchell County
google	48	48337	Montague County
google	48	48339	Montgomery County
google	48	48341	Moore County
google	48	48343	Morris County
google	48	48345	Motley County
google	48	48347	Nacogdoches County
google	48	48349	Navarro County
google	48	48351	Newton County
google	48	48355	Nueces County
google	48	48357	Ochiltree County
google	48	48359	Oldham County
google	48	48361	Orange County
google	48	48363	Palo Pinto County
google	48	48365	Panola County
google	48	48367	Parker County
google	48	48369	Parmer County
google	48	48371	Pecos County
google	48	48373	Polk County
google	48	48375	Potter County
google	48	48377	Presidio County
google	48	48379	Rains County
google	48	48381	Randall County
google	48	48383	Reagan County
google	48	48385	Real County
google	48	48387	Red River County
google	48	48389	Reeves County
google	48	48391	Refugio County
google	48	48393	Roberts County
google	48	48395	Robertson County
google	48	48397	Rockwall County
google	48	48399	Runnels County
google	48	48401	Rusk County
google	48	48403	Sabine County
google	48	48405	San Augustine County
google	48	48407	San Jacinto County
google	48	48409	San Patricio County
google	48	48411	San Saba County
google	48	48413	Schleicher County
google	48	48415	Scurry County
google	48	48417	Shackelford County
google	48	48419	Shelby County
google	48	48421	Sherman County
google	48	48423	Smith County
google	48	48425	Somervell County
google	48	48427	Starr County
google	48	48429	Stephens County
google	48	48431	Sterling County
google	48	48433	Stonewall County
google	48	48435	Sutton County
google	48	48437	Swisher County
google	48	48439	Tarrant County
google	48	48441	Taylor County
google	48	48443	Terrell County
google	48	48445	Terry County
google	48	48447	Throckmorton County
google	48	48449	Titus County
google	48	48451	Tom Green County
google	48	48453	Travis County
google	48	48455	Trinity County
google	48	48457	Tyler County
google	48	48459	Upshur County
google	48	48461	Upton County
google	48	48463	Uvalde County
google	48	48465	Val Verde County
google	48	48467	Van Zandt County
google	48	48469	Victoria County
google	48	48471	Walker County
google	48	48473	Waller County
google	48	48475	Ward County
google	48	48477	Washington County
google	48	48479	Webb County
google	48	48481	Wharton County
google	48	48483	Wheeler County
google	48	48485	Wichita County
google	48	48487	Wilbarger County
google	48	48489	Willacy County
google	48	48491	Williamson County
google	48	48493	Wilson County
google	48	48495	Winkler County
google	48	48497	Wise County
google	48	48499	Wood County
google	48	48501	Yoakum County
google	48	48503	Young County
google	48	48505	Zapata County
google	48	48507	Zavala County
google	49	49001	Beaver County
google	49	49003	Box Elder County
google	49	49005	Cache County
google	49	49007	Carbon County
google	49	49009	Daggett County
google	49	49011	Davis County
google	49	49013	Duchesne County
google	49	49015	Emery County
google	49	49017	Garfield County
google	49	49019	Grand County
google	49	49021	Iron County
google	49	49023	Juab County
google	49	49025	Kane County
google	49	49027	Millard County
google	49	49029	Morgan County
google	49	49031	Piute County
google	49	49033	Rich County
google	49	49035	Salt Lake County
google	49	49037	San Juan County
google	49	49039	Sanpete County
google	49	49041	Sevier County
google	49	49043	Summit County
google	49	49045	Tooele County
google	49	49047	Uintah County
google	49	49049	Utah County
google	49	49051	Wasatch County
google	49	49053	Washington County
google	49	49055	Wayne County
google	49	49057	Weber County
google	50	50001	Addison County
google	50	50003	Bennington County
google	50	50005	Caledonia County
google	50	50007	Chittenden County
google	50	50009	Essex County
google	50	50011	Franklin County
google	50	50013	Grand Isle County
google	50	50015	Lamoille County
google	50	50017	Orange County
google	50	50019	Orleans County
google	50	50021	Rutland County
google	50	50023	Washington County
google	50	50025	Windham County
google	50	50027	Windsor County
google	51	51001	Accomack County
google	51	51003	Albemarle County
google	51	51005	Alleghany County
google	51	51007	Amelia County
google	51	51009	Amherst County
google	51	51011	Appomattox County
google	51	51013	Arlington County
google	51	51015	Augusta County
google	51	51017	Bath County
google	51	51019	Bedford County
google	51	51021	Bland County
google	51	51023	Botetourt County
google	51	51025	Brunswick County
google	51	51027	Buchanan County
google	51	51029	Buckingham County
google	51	51031	Campbell County
google	51	51033	Caroline County
google	51	51035	Carroll County
google	51	51036	Charles City County
google	51	51037	Charlotte County
google	51	51041	Chesterfield County
google	51	51043	Clarke County
google	51	51045	Craig County
google	51	51047	Culpeper County
google	51	51049	Cumberland County
google	51	51051	Dickenson County
google	51	51053	Dinwiddie County
google	51	51057	Essex County
google	51	51059	Fairfax County
google	51	51061	Fauquier County
google	51	51063	Floyd County
google	51	51065	Fluvanna County
google	51	51067	Franklin County
google	51	51069	Frederick County
google	51	51071	Giles County
google	51	51073	Gloucester County
google	51	51075	Goochland County
google	51	51077	Grayson County
google	51	51079	Greene County
google	51	51081	Greensville County
google	51	51083	Halifax County
google	51	51085	Hanover County
google	51	51087	Henrico County
google	51	51089	Henry County
google	51	51091	Highland County
google	51	51093	Isle of Wight County
google	51	51095	James City County
google	51	51097	King and Queen County
google	51	51099	King George County
google	51	51101	King William County
google	51	51103	Lancaster County
google	51	51105	Lee County
google	51	51107	Loudoun County
google	51	51109	Louisa County
google	51	51111	Lunenburg County
google	51	51113	Madison County
google	51	51115	Mathews County
google	51	51117	Mecklenburg County
google	51	51119	Middlesex County
google	51	51121	Montgomery County
google	51	51125	Nelson County
google	51	51127	New Kent County
google	51	51131	Northampton County
google	51	51133	Northumberland County
google	51	51135	Nottoway County
google	51	51137	Orange County
google	51	51139	Page County
google	51	51141	Patrick County
google	51	51143	Pittsylvania County
google	51	51145	Powhatan County
google	51	51147	Prince Edward County
google	51	51149	Prince George County
google	51	51153	Prince William County
google	51	51155	Pulaski County
google	51	51157	Rappahannock County
google	51	51159	Richmond County
google	51	51161	Roanoke County
google	51	51163	Rockbridge County
google	51	51165	Rockingham County
google	51	51167	Russell County
google	51	51169	Scott County
google	51	51171	Shenandoah County
google	51	51173	Smyth County
google	51	51175	Southampton County
google	51	51177	Spotsylvania County
google	51	51179	Stafford County
google	51	51181	Surry County
google	51	51183	Sussex County
google	51	51185	Tazewell County
google	51	51187	Warren County
google	51	51191	Washington County
google	51	51193	Westmoreland County
google	51	51195	Wise County
google	51	51197	Wythe County
google	51	51199	York County
google	51	51510	Alexandria city
google	51	51520	Bristol city
google	51	51530	Buena Vista city
google	51	51540	Charlottesville city
google	51	51550	Chesapeake city
google	51	51570	Colonial Heights city
google	51	51580	Covington city
google	51	51590	Danville city
google	51	51595	Emporia city
google	51	51600	Fairfax city
google	51	51610	Falls Church city
google	51	51620	Franklin city
google	51	51630	Fredericksburg city
google	51	51640	Galax city
google	51	51650	Hampton city
google	51	51660	Harrisonburg city
google	51	51670	Hopewell city
google	51	51678	Lexington city
google	51	51680	Lynchburg city
google	51	51683	Manassas city
google	51	51685	Manassas Park city
google	51	51690	Martinsville city
google	51	51700	Newport News city
google	51	51710	Norfolk city
google	51	51720	Norton city
google	51	51730	Petersburg city
google	51	51735	Poquoson city
google	51	51740	Portsmouth city
google	51	51750	Radford city
google	51	51760	Richmond city
google	51	51770	Roanoke city
google	51	51775	Salem city
google	51	51790	Staunton city
google	51	51800	Suffolk city
google	51	51810	Virginia Beach city
google	51	51820	Waynesboro city
google	51	51830	Williamsburg city
google	51	51840	Winchester city
google	53	53001	Adams County
google	53	53003	Asotin County
google	53	53005	Benton County
google	53	53007	Chelan County
google	53	53009	Clallam County
google	53	53011	Clark County
google	53	53013	Columbia County
google	53	53015	Cowlitz County
google	53	53017	Douglas County
google	53	53019	Ferry County
google	53	53021	Franklin County
google	53	53023	Garfield County
google	53	53025	Grant County
google	53	53027	Grays Harbor County
google	53	53029	Island County
google	53	53031	Jefferson County
google	53	53033	King County
google	53	53035	Kitsap County
google	53	53037	Kittitas County
google	53	53039	Klickitat County
google	53	53041	Lewis County
google	53	53043	Lincoln County
google	53	53045	Mason County
google	53	53047	Okanogan County
google	53	53049	Pacific County
google	53	53051	Pend Oreille County
google	53	53053	Pierce County
google	53	53055	San Juan County
google	53	53057	Skagit County
google	53	53059	Skamania County
google	53	53061	Snohomish County
google	53	53063	Spokane County
google	53	53065	Stevens County
google	53	53067	Thurston County
google	53	53069	Wahkiakum County
google	53	53071	Walla Walla County
google	53	53073	Whatcom County
google	53	53075	Whitman County
google	53	53077	Yakima County
google	54	54001	Barbour County
google	54	54003	Berkeley County
google	54	54005	Boone County
google	54	54007	Braxton County
google	54	54009	Brooke County
google	54	54011	Cabell County
google	54	54013	Calhoun County
google	54	54015	Clay County
google	54	54017	Doddridge County
google	54	54019	Fayette County
google	54	54021	Gilmer County
google	54	54023	Grant County
google	54	54025	Greenbrier County
google	54	54027	Hampshire County
google	54	54029	Hancock County
google	54	54031	Hardy County
google	54	54033	Harrison County
google	54	54035	Jackson County
google	54	54037	Jefferson County
google	54	54039	Kanawha County
google	54	54041	Lewis County
google	54	54043	Lincoln County
google	54	54045	Logan County
google	54	54047	McDowell County
google	54	54049	Marion County
google	54	54051	Marshall County
google	54	54053	Mason County
google	54	54055	Mercer County
google	54	54057	Mineral County
google	54	54059	Mingo County
google	54	54061	Monongalia County
google	54	54063	Monroe County
google	54	54065	Morgan County
google	54	54067	Nicholas County
google	54	54069	Ohio County
google	54	54071	Pendleton County
google	54	54073	Pleasants County
google	54	54075	Pocahontas County
google	54	54077	Preston County
google	54	54079	Putnam County
google	54	54081	Raleigh County
google	54	54083	Randolph County
google	54	54085	Ritchie County
google	54	54087	Roane County
google	54	54089	Summers County
google	54	54091	Taylor County
google	54	54093	Tucker County
google	54	54095	Tyler County
google	54	54097	Upshur County
google	54	54099	Wayne County
google	54	54101	Webster County
google	54	54103	Wetzel County
google	54	54105	Wirt County
google	54	54107	Wood County
google	54	54109	Wyoming County
google	55	55001	Adams County
google	55	55003	Ashland County
google	55	55005	Barron County
google	55	55007	Bayfield County
google	55	55009	Brown County
google	55	55011	Buffalo County
google	55	55013	Burnett County
google	55	55015	Calumet County
google	55	55017	Chippewa County
google	55	55019	Clark County
google	55	55021	Columbia County
google	55	55023	Crawford County
google	55	55025	Dane County
google	55	55027	Dodge County
google	55	55029	Door County
google	55	55031	Douglas County
google	55	55033	Dunn County
google	55	55035	Eau Claire County
google	55	55037	Florence County
google	55	55039	Fond du Lac County
google	55	55041	Forest County
google	55	55043	Grant County
google	55	55045	Green County
google	55	55047	Green Lake County
google	55	55049	Iowa County
google	55	55051	Iron County
google	55	55053	Jackson County
google	55	55055	Jefferson County
google	55	55057	Juneau County
google	55	55059	Kenosha County
google	55	55061	Kewaunee County
google	55	55063	La Crosse County
google	55	55065	Lafayette County
google	55	55067	Langlade County
google	55	55069	Lincoln County
google	55	55071	Manitowoc County
google	55	55073	Marathon County
google	55	55075	Marinette County
google	55	55077	Marquette County
google	55	55078	Menominee County
google	55	55079	Milwaukee County
google	55	55081	Monroe County
google	55	55083	Oconto County
google	55	55085	Oneida County
google	55	55087	Outagamie County
google	55	55089	Ozaukee County
google	55	55091	Pepin County
google	55	55093	Pierce County
google	55	55095	Polk County
google	55	55097	Portage County
google	55	55099	Price County
google	55	55101	Racine County
google	55	55103	Richland County
google	55	55105	Rock County
google	55	55107	Rusk County
google	55	55109	St. Croix County
google	55	55111	Sauk County
google	55	55113	Sawyer County
google	55	55115	Shawano County
google	55	55117	Sheboygan County
google	55	55119	Taylor County
google	55	55121	Trempealeau County
google	55	55123	Vernon County
google	55	55125	Vilas County
google	55	55127	Walworth County
google	55	55129	Washburn County
google	55	55131	Washington County
google	55	55133	Waukesha County
google	55	55135	Waupaca County
google	55	55137	Waushara County
google	55	55139	Winnebago County
google	55	55141	Wood County
google	56	56001	Albany County
google	56	56003	Big Horn County
google	56	56005	Campbell County
google	56	56007	Carbon County
google	56	56009	Converse County
google	56	56011	Crook County
google	56	56013	Fremont County
google	56	56015	Goshen County
google	56	56017	Hot Springs County
google	56	56019	Johnson County
google	56	56021	Laramie County
google	56	56023	Lincoln County
google	56	56025	Natrona County
google	56	56027	Niobrara County
google	56	56029	Park County
google	56	56031	Platte County
google	56	56033	Sheridan County
google	56	56035	Sublette County
google	56	56037	Sweetwater County
google	56	56039	Teton County
google	56	56041	Uinta County
google	56	56043	Washakie County
google	56	56045	Weston County
google	72	72001	Adjuntas Municipio
google	72	72003	Aguada Municipio
google	72	72005	Aguadilla Municipio
google	72	72007	Aguas Buenas Municipio
google	72	72077	Juncos Municipio
google	72	72079	Lajas Municipio
google	72	72081	Lares Municipio
google	72	72083	Las Marías Municipio
google	72	72085	Las Piedras Municipio
google	72	72087	Loíza Municipio
google	72	72089	Luquillo Municipio
google	72	72091	Manatí Municipio
google	72	72093	Maricao Municipio
google	72	72095	Maunabo Municipio
google	72	72097	Mayagüez Municipio
google	72	72099	Moca Municipio
google	72	72101	Morovis Municipio
google	72	72103	Naguabo Municipio
google	72	72105	Naranjito Municipio
google	72	72107	Orocovis Municipio
google	72	72109	Patillas Municipio
google	72	72111	Peñuelas Municipio
google	72	72113	Ponce Municipio
google	72	72115	Quebradillas Municipio
google	72	72117	Rincón Municipio
google	72	72119	Río Grande Municipio
google	72	72121	Sabana Grande Municipio
google	72	72123	Salinas Municipio
google	72	72125	San Germán Municipio
google	72	72127	San Juan Municipio
google	72	72129	San Lorenzo Municipio
google	72	72131	San Sebastián Municipio
google	72	72133	Santa Isabel Municipio
google	72	72135	Toa Alta Municipio
google	72	72137	Toa Baja Municipio
google	72	72139	Trujillo Alto Municipio
google	72	72141	Utuado Municipio
google	72	72143	Vega Alta Municipio
google	72	72145	Vega Baja Municipio
google	72	72147	Vieques Municipio
google	72	72149	Villalba Municipio
google	72	72151	Yabucoa Municipio
google	72	72153	Yauco Municipio
\.


--
-- Data for Name: county_geo; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.county_geo (int_point_lon, int_point_lat, county_fips_code) FROM stdin;
-87.3049349	31.9900824	01131
-88.0874309	33.7870852	01075
-86.4487206	31.2439873	01039
-85.6542417	34.0695153	01019
-85.8635254	33.2703999	01027
-86.9887221	31.4309257	01035
-87.2938269	32.6390053	01105
-86.3192219	31.7328256	01041
-87.3653458	34.1545665	01133
-85.7172613	32.1017589	01011
-87.7642923	33.7161568	01057
-87.3832656	31.5803324	01099
-88.2000571	32.5974811	01119
-87.8428144	34.4419892	01059
-85.5161261	33.6719637	01029
-87.791091	32.2475911	01091
-88.2488894	31.9909539	01023
-87.881551	34.1382194	01093
-85.4640679	33.2964753	01111
-85.692887	32.3870267	01087
-87.8186244	31.6855211	01025
-86.6819689	31.751667	01013
-86.3216681	34.3095637	01095
-86.2434818	32.9314453	01037
-85.7996176	32.8633076	01123
-85.8279089	33.7705162	01015
-87.1684097	31.1222867	01053
-85.3530477	32.6040644	01081
-86.3156631	33.7129627	01115
-86.8965359	33.5534439	01073
-87.1271475	33.0158929	01007
-86.56644	33.9773575	01009
-86.7266071	32.8540514	01021
-86.6780894	33.2630428	01117
-85.1869798	32.2898113	01113
-86.8692666	34.1319229	01043
-87.7460666	30.6592183	01003
-86.8464021	34.4544844	01103
-87.3218651	34.529776	01079
-85.2964111	31.1581831	01069
-85.8210224	31.0923822	01061
-85.2399712	31.5169779	01067
-85.9896022	31.402258	01031
-85.4051035	31.8702531	01005
-87.8014569	34.703112	01033
-87.6509966	34.9041221	01077
-85.803992	34.460929	01049
-86.0342629	34.0476407	01055
-86.5510802	34.7642377	01089
-86.9813995	34.8102387	01083
-87.3010936	33.7915581	01127
-85.3940321	32.9155039	01017
-88.1965682	30.6845725	01097
-88.1975644	31.4052172	01129
-86.1427347	32.597229	01051
-86.6464395	32.5322367	01001
-86.2044615	32.2028812	01101
-86.6505859	32.147888	01085
-85.609476	31.4306536	01045
-85.9800556	34.764114	01071
-87.1143556	32.3335397	01047
-86.1759302	33.3693135	01121
-85.9416035	31.7986508	01109
-87.5227834	33.2902197	01125
-87.9642005	32.8444965	01063
-88.0968631	33.2967933	01107
-87.6230608	32.7527958	01065
-164.1889119	64.7836858	02180
-135.3382787	59.5603794	02230
-136.3207314	58.2534617	02105
-132.343978	56.317416	02275
-163.1901714	62.2835878	02158
179.6211882	51.948964	02016
-153.9183721	57.7044003	02150
-135.3673965	57.1932044	02220
-150.0270164	63.6820386	02068
-153.4728302	69.4493427	02185
-135.5757906	59.0984037	02100
-151.5778496	65.3757271	02290
-160.0210864	67.0050655	02188
-143.2186282	63.8649972	02240
-140.416942	60.0174528	02282
-156.9669094	58.7416473	02060
-133.0085979	57.1124581	02195
-160.1526246	60.9291413	02050
-152.0526403	60.360766	02122
-156.4134134	58.1085067	02164
-145.0231093	61.3498431	02261
-158.2671226	59.5433255	02070
-133.1623885	55.6827733	02198
-161.9974772	55.2450437	02013
-149.6190939	62.2790939	02170
-149.2843294	61.1742503	02020
-146.5481586	64.6760436	02090
-134.1784454	58.3729099	02110
-131.1066847	55.4499378	02130
-114.038806	33.7276104	04012
-109.4901722	35.385084	04001
-109.2423231	33.2388723	04011
-111.7737277	35.8296919	04005
-113.7496891	35.717705	04015
-110.8452278	31.525733	04023
-110.8118696	33.7896177	04007
-111.3663396	32.9185209	04021
-112.4989297	33.3451756	04013
-112.5772247	34.631071	04025
-109.8783103	32.9318277	04009
-110.3210248	35.3907852	04017
-109.7751627	31.8401287	04003
-111.7836574	32.1280427	04019
-113.910905	32.7739424	04027
-93.611514	33.2406294	05073
-92.0599504	35.5663146	05023
-91.9136252	36.0948792	05065
-91.3765466	34.2895697	05001
-91.7722672	33.1908354	05003
-92.6785765	36.2666636	05089
-92.1404819	35.8570011	05137
-93.9909315	34.0830639	05061
-92.6892479	35.265702	05029
-94.2432792	33.9948773	05133
-91.2232051	35.5964674	05067
-92.6539989	33.9678233	05039
-91.2441034	33.8287519	05041
-93.6586589	34.1581907	05109
-94.2308841	34.4909149	05113
-91.8196636	36.3836192	05049
-93.5409718	36.3373704	05015
-91.2033099	34.6795117	05095
-91.7227781	33.5872418	05043
-91.1011529	36.0410983	05075
-93.664153	34.5456557	05097
-92.6958884	35.8963868	05129
-91.2445353	35.1927768	05147
-90.4187041	36.3673021	05021
-91.2971578	33.2671393	05017
-92.5159757	35.5829532	05141
-91.0284409	36.3412985	05121
-92.1691559	33.4665491	05011
-94.0636413	34.8588693	05127
-90.7797172	34.7795048	05077
-90.7639835	35.2856921	05037
-91.5536205	34.8311162	05117
-93.7209102	35.2186538	05083
-93.4663223	35.5733586	05071
-93.1762085	34.0533162	05019
-91.5599423	35.7374992	05063
-91.4710689	36.1733989	05135
-90.0522072	35.7669437	05093
-92.8784131	33.5911684	05103
-92.513879	33.5604604	05013
-92.5981447	33.1682186	05139
-93.7240531	36.0125452	05087
-94.2172695	35.978001	05143
-94.2562984	36.3378189	05007
-90.7515053	35.0228383	05123
-94.2362187	35.5830114	05033
-93.8876647	35.5085579	05047
-94.2749889	35.1969808	05131
-93.2158984	35.9107423	05101
-93.0792364	36.3042991	05009
-90.8555931	34.4236874	05107
-93.3050716	33.6666991	05099
-93.6643553	33.735953	05057
-93.1469323	34.5788523	05051
-90.6811037	35.5688702	05111
-90.6314213	35.8277285	05031
-92.4229794	34.2855683	05053
-91.894132	34.7551137	05085
-92.3369277	35.1465478	05045
-92.312996	34.7703106	05119
-92.674463	34.6485246	05125
-92.9268773	34.9463629	05105
-93.2328433	33.2230377	05027
-92.9441474	34.3151767	05059
-90.3153317	35.2118788	05035
-92.3299488	36.2802684	05005
-90.5663459	36.1206072	05055
-91.929673	34.277239	05069
-92.1887141	33.8932006	05025
-91.7276258	33.957675	05079
-93.0268181	35.456557	05115
-93.4083032	34.9977133	05149
-91.7530339	35.2551175	05145
-93.9015018	33.3055054	05091
-94.2297741	33.699497	05081
-119.7983522	38.6217831	06003
-119.9128613	37.5700295	06043
-123.114476	40.6478033	06105
-120.6538563	38.4435501	06005
-117.4039269	36.561977	06027
-122.5332868	41.5879861	06093
-120.7183704	41.5929185	06049
-118.8751668	37.9158363	06051
-120.5614415	38.1838996	06009
-122.4016998	39.6025462	06021
-120.8243709	39.9922953	06063
-120.5219926	39.5769252	06091
-122.2375629	39.1777385	06011
-118.7295064	35.3466288	06029
-121.6019188	39.6659588	06007
-122.7467569	39.0948019	06033
-124.003614	41.763958	06015
-115.3554001	33.0408143	06025
-123.9261757	40.7066554	06023
-119.6550193	36.7610058	06019
-119.8155301	36.072478	06031
-118.2618616	34.1963983	06037
-117.7772068	33.6756872	06059
-119.7498023	37.2098213	06039
-120.7228019	37.1948063	06047
-121.0028311	37.5623162	06099
-122.3259045	38.5070999	06055
-119.1331432	34.3587415	06111
-122.2322737	40.1261573	06103
-122.0435556	40.7605142	06089
-116.0022389	33.7298275	06065
-116.1811967	34.8572198	06071
-121.9024413	38.6795955	06113
-120.5342245	38.7856116	06017
-120.7227181	39.0620323	06061
-121.3404408	38.4500161	06067
-121.3155723	36.240107	06053
-116.7761174	33.0236041	06073
-122.3715457	37.4146725	06081
-121.912488	37.6471385	06001
-121.9515431	37.919479	06013
-122.7459738	38.0518169	06041
-123.0322294	37.7272391	06075
-121.6905097	37.2206954	06085
-121.0858108	36.6116507	06069
-120.4475445	35.3852242	06079
-122.007205	37.0124883	06087
-120.0399729	34.5370572	06083
-122.9261095	38.5251824	06097
-119.9647335	38.0214344	06109
-121.272244	37.9349815	06077
-120.6299518	40.7210862	06035
-120.7713429	39.2975082	06057
-123.4428811	39.4323876	06045
-121.939594	38.2672255	06095
-118.7810551	36.2288339	06107
-121.3442587	39.27013	06115
-121.7039397	39.0361898	06101
-103.7212597	37.8841698	08089
-106.1108366	40.1130652	08049
-107.0508634	37.2023952	08007
-102.3553579	40.8715679	08115
-107.3382613	37.8211654	08053
-103.5075545	38.9937401	08073
-104.9599278	37.6878154	08055
-108.5241156	37.7117226	08033
-105.4289399	37.2775474	08023
-108.2007155	39.9726223	08103
-102.3921613	37.9581814	08099
-106.3292476	40.6634319	08057
-102.5437412	37.3097802	08009
-103.7727363	38.3061801	08025
-106.2346662	38.0316514	08109
-105.7880414	37.5684423	08003
-106.1764473	37.2134065	08021
-106.453128	37.4858534	08105
-102.7568494	38.387663	08061
-102.3451047	40.5947117	08095
-103.2097445	39.9657899	08121
-102.6030226	39.3053399	08063
-108.4272635	38.009319	08113
-102.4216491	40.0007703	08125
-105.3735123	38.1019955	08027
-104.0441103	37.3188308	08071
-108.5957864	37.3380247	08083
-107.6702567	37.7810492	08111
-106.350079	39.2053405	08065
-102.6017914	38.8356456	08017
-106.3166833	38.7382234	08015
-107.8648924	38.8615949	08029
-107.0568798	38.6704993	08051
-103.0775841	37.9318907	08011
-107.003236	37.5490672	08079
-105.3976911	40.0949699	08013
-106.1375545	39.6210227	08117
-105.4249583	38.4551696	08043
-104.5274718	38.8273831	08041
-105.1873651	38.8699759	08119
-108.2171545	40.6108644	08081
-104.3317065	39.6445537	08005
-105.245462	39.5795106	08059
-105.69257	39.669732	08019
-104.1140759	39.3151572	08039
-104.3318718	39.8743252	08001
-104.8811054	39.7618502	08031
-104.9259871	39.325414	08035
-105.7176479	39.1189141	08093
-105.5288778	39.8611555	08047
-105.0507868	39.9535933	08014
-107.8397178	37.2873673	08067
-106.6951694	39.6269919	08037
-105.4867638	40.6580933	08069
-103.8122102	40.263159	08087
-107.9097802	39.5993517	08045
-106.9161587	39.2175376	08097
-108.4605707	39.019524	08077
-104.383666	40.555961	08123
-107.7884802	38.1547313	08091
-108.2662815	38.4075069	08085
-104.4898924	38.1706581	08101
-106.9877021	40.4836638	08107
-103.0904639	40.7280911	08075
-73.3670614	41.2274128	09001
-72.3409779	41.8580807	09013
-72.7329157	41.8060534	09003
-72.5227802	41.4330028	09007
-72.9002033	41.3497185	09009
-72.1086339	41.4726517	09011
-73.2354042	41.7918833	09005
-71.9907017	41.8249987	09015
-75.5029819	39.0970884	10001
-75.6441324	39.5759152	10003
-75.3370237	38.6732275	10005
-77.0165167	38.9042474	11001
-83.6094825	30.0099084	12123
-82.9510714	30.4911868	12047
-85.8159385	30.8620072	12059
-85.6627968	30.6022166	12133
-82.366918	30.0542796	12125
-83.4704159	30.4472325	12079
-81.1908197	26.9548102	12043
-84.8685805	30.2598494	12077
-82.9927542	30.1892438	12121
-83.1785097	29.9900661	12067
-82.1666793	29.9523863	12007
-85.2565366	29.9072571	12045
-83.1956656	29.5808994	12029
-85.1979155	30.3888013	12013
-85.2088141	30.7892485	12063
-84.7991742	29.8101756	12037
-81.8062531	27.1905809	12027
-81.8919943	26.5590348	12071
-81.1521142	26.539967	12051
-86.1766139	30.6312106	12131
-86.5941872	30.665851	12091
-81.2862532	29.4748909	12035
-81.161792	29.057769	12127
-82.7958011	29.7234556	12041
-82.357221	29.6757403	12001
-82.783462	29.2844566	12075
-82.5248099	28.8436402	12017
-81.7650867	30.6059629	12089
-81.4000404	29.8904875	12109
-81.8650364	29.9865835	12019
-81.6481132	30.3352449	12031
-82.3022838	30.3244416	12003
-80.9532703	24.7688833	12087
-82.6233712	30.2216509	12023
-81.6935337	27.9536488	12105
-80.4483542	26.6491257	12099
-80.4970989	25.6105799	12086
-80.4766834	26.1935353	12011
-81.4009553	26.118786	12021
-82.3687669	27.4816825	12081
-82.3658351	27.1843855	12115
-82.0431004	29.2028047	12083
-80.8873884	27.3855924	12093
-81.1319894	28.6900918	12117
-81.1393116	28.0590267	12097
-81.3232839	28.5143906	12095
-81.7122822	28.7641128	12069
-81.7320389	29.5938964	12107
-80.7003334	28.2983112	12009
-85.6316798	30.2382176	12005
-87.3388996	30.6116382	12033
-87.01289	30.7012689	12113
-80.4435357	27.3798137	12111
-80.3982011	27.0836036	12085
-81.9412782	26.8689745	12015
-80.5747894	27.7005283	12061
-81.3423534	27.3410799	12055
-84.6126072	30.5786866	12039
-84.3748463	30.139432	12129
-83.8908594	30.4245577	12065
-84.2778004	30.4593104	12073
-82.7395188	27.9031078	12103
-82.3497186	27.9066072	12057
-82.4648324	28.3077107	12101
-82.4662272	28.5730426	12053
-82.0743472	28.7141008	12119
-81.8215798	27.4928458	12049
-84.8676853	30.9339599	13253
-83.1666127	33.5767403	13133
-83.2770374	31.6043062	13155
-84.4548812	31.3195798	13007
-83.4294448	31.1525157	13075
-84.192038	31.228997	13205
-82.9310634	31.9136406	13271
-83.2275325	34.3752657	13119
-84.6262895	31.521279	13037
-82.6880123	33.4191691	13301
-82.4200036	33.0581756	13163
-82.6069126	33.2274908	13125
-83.1678658	32.164369	13091
-82.1396442	30.7799036	13049
-83.1755122	32.8042663	13319
-84.9067225	31.3241906	13099
-83.9892568	34.833333	13291
-81.9715244	32.7945631	13165
-84.0512306	32.3626859	13193
-84.2450803	30.8759076	13131
-82.7479211	33.7790312	13317
-81.890153	32.1530834	13109
-82.0712656	32.4039497	13043
-84.9925826	31.6198309	13061
-83.4984409	34.3519216	13011
-83.9989251	34.5681403	13187
-83.7434165	34.643776	13311
-83.3717898	33.3210605	13237
-84.3173308	34.8665427	13111
-82.96329	34.3487328	13147
-84.4546244	34.6905055	13123
-82.2901025	31.739712	13001
-82.8752721	33.559319	13265
-83.6203195	31.7248005	13287
-84.7523108	31.762651	13243
-83.4818454	32.2388026	13235
-82.7981123	32.9718435	13303
-82.4514325	31.5502095	13005
-83.4382586	31.9627199	13315
-83.807167	32.1519954	13093
-82.6368248	31.8116153	13161
-84.7303983	31.1629309	13201
-84.5538279	32.0466911	13307
-83.7322645	34.9025294	13281
-82.8419087	34.116413	13105
-82.7026143	30.9176531	13065
-81.6175849	32.7447512	13251
-83.2278695	31.2886522	13019
-82.2997628	32.5910995	13107
-82.7338492	32.105258	13309
-84.2514261	32.5546668	13269
-82.0592081	32.0437683	13267
-83.4048701	34.8839345	13241
-83.3317174	32.4354034	13023
-84.4394464	31.7771909	13273
-84.1466814	31.8184185	13177
-84.20904	31.5325876	13095
-83.8499598	31.5517733	13321
-84.2042935	32.0422659	13261
-84.3227083	32.2634439	13249
-83.2037373	34.1285257	13195
-83.3671522	33.9521852	13059
-83.4377284	33.8341247	13219
-83.0740805	33.8668062	13221
-84.2263432	33.7706611	13089
-84.6670579	33.0292666	13199
-84.4939407	33.4127172	13113
-84.023087	33.9591457	13135
-84.1732611	34.4426077	13085
-83.7123025	33.9920094	13013
-84.3898475	33.0812241	13231
-84.4681816	33.7900338	13121
-83.6891515	33.3169807	13159
-83.8551837	33.5440407	13217
-84.8381879	34.2409175	13015
-84.0263696	33.6520811	13247
-84.2849046	33.2623481	13255
-83.731829	33.7838866	13297
-84.3555727	33.5426863	13063
-84.7621381	33.3528965	13077
-83.9582206	33.2903551	13035
-85.1378862	33.2913469	13149
-84.4903508	34.4567464	13227
-84.5741123	33.9399298	13067
-84.8671693	33.9210299	13223
-84.4750574	34.2443166	13057
-85.2200629	33.7951646	13143
-84.7673139	33.7012421	13097
-85.0805272	33.5822366	13045
-83.4994346	33.5986956	13211
-84.1274075	34.225143	13117
-84.1540207	33.4529466	13151
-84.1466893	33.0744405	13171
-82.0001638	33.0601805	13033
-82.0749982	33.3614863	13245
-82.4787331	33.4796231	13189
-82.2522957	33.5476313	13073
-82.4482992	33.7921507	13181
-84.5838902	30.8806431	13087
-81.9829779	31.1973339	13025
-81.3722892	31.4885058	13191
-81.4964503	31.2127098	13127
-84.8738622	34.5096669	13129
-85.1883384	33.9960153	13233
-85.3054565	34.735802	13295
-85.1393857	34.9002176	13047
-85.5062006	34.8524237	13083
-84.8349117	32.073225	13259
-84.912432	32.7315494	13145
-84.5287354	32.3593118	13197
-84.5300288	32.7046026	13263
-84.874946	32.510197	13215
-84.7880206	32.3474454	13053
-83.7535309	31.9151485	13081
-83.5258749	34.6343924	13137
-84.968541	34.8017261	13313
-84.7379899	34.7970974	13213
-82.8449401	31.5492452	13069
-82.8781511	31.2968056	13003
-82.5708819	32.4095857	13283
-82.9263171	32.3932197	13175
-82.6639696	32.6945842	13167
-85.0047978	31.8629381	13239
-83.147197	31.7407715	13017
-83.8184997	34.3175689	13139
-81.4578709	31.8074582	13179
-81.7428697	31.7495633	13183
-83.5625568	34.1309052	13157
-81.9123763	31.5478449	13305
-85.02836	33.034482	13285
-83.5621958	33.0216636	13169
-83.9791874	32.7094283	13079
-83.9229376	33.0174352	13207
-83.4258792	32.6658469	13289
-83.6941941	32.8088446	13021
-83.2554566	33.0594897	13009
-83.0004653	33.2692195	13141
-83.769773	31.1897075	13071
-85.2136851	34.2636918	13115
-81.6420193	30.913358	13039
-81.4385431	32.0179692	13029
-81.343372	32.3616802	13103
-81.085184	31.9804037	13051
-81.744021	32.3917111	13031
-85.3452894	34.4741785	13055
-84.2922831	32.8818367	13293
-83.9198155	30.8646195	13275
-83.5259307	31.4570027	13277
-83.2902156	34.5529139	13257
-83.5819054	30.8229337	13027
-83.2689952	30.833145	13185
-83.0631635	31.0381973	13173
-82.8973758	30.7140081	13101
-82.3306257	32.1178118	13279
-82.5333487	32.1721081	13209
-83.8319779	32.5713241	13225
-83.6625217	32.4582875	13153
-82.2103703	31.353998	13229
-82.4215072	31.050881	13299
-156.9740097	21.2187644	15005
-155.5024434	19.5977643	15001
-156.6015502	20.8559308	15009
-159.7059653	22.0120383	15007
-158.1234063	21.5800225	15003
-111.5442734	42.7860724	16029
-114.8214203	42.9731849	16047
-115.6535003	46.67257	16035
-114.2522675	44.273351	16037
-112.3546128	44.290218	16033
-115.4673371	45.849644	16049
-115.8850916	47.3476935	16079
-111.3275168	42.2858922	16007
-113.8870422	44.9285059	16059
-116.42376	46.2363277	16061
-116.5246676	48.7731313	16021
-114.1538989	42.9861805	16063
-116.4616241	44.877004	16003
-116.6335414	47.2184513	16009
-112.5204486	42.1838954	16071
-116.7977917	44.4482229	16087
-115.6180612	44.8559596	16085
-112.3992058	43.2163568	16011
-116.3987839	44.0614727	16045
-116.1896903	42.5728508	16073
-116.709058	43.6257956	16027
-115.7151105	43.9872749	16015
-116.244376	43.4514767	16001
-113.6398404	42.8572114	16067
-113.6263276	42.282313	16031
-116.6959222	47.6759658	16055
-114.7721349	43.5025515	16025
-113.9553713	43.394192	16013
-113.1776308	43.685101	16023
-112.3185879	43.7969649	16051
-111.6218783	43.3951708	16019
-111.2117653	43.7609939	16081
-116.7609091	46.3337914	16069
-111.8229653	42.1736093	16041
-116.7309737	46.8189202	16057
-115.471205	43.3946984	16039
-116.7502379	44.00243	16075
-112.2289819	42.6929211	16005
-112.844407	42.694126	16077
-111.6569925	43.788614	16065
-111.484429	44.2180909	16043
-116.6123638	48.316796	16017
-114.2620858	42.6913953	16053
-114.6656386	42.352309	16083
-90.2114705	42.3623905	17085
-88.4823254	38.7468187	17025
-89.8212096	38.0565149	17157
-90.6134641	40.1569048	17169
-87.8391674	38.4458209	17185
-89.9241894	42.0709	17015
-88.6257259	39.6368956	17139
-87.7916832	39.3323343	17023
-89.0179232	39.0011246	17051
-88.5390093	38.0852273	17065
-88.9263215	37.9918516	17055
-87.833601	40.7488665	17075
-88.5450236	37.7515083	17165
-87.7471102	39.679037	17045
-89.4171873	38.3531405	17189
-87.7302207	38.7189542	17101
-88.1507629	39.0048737	17079
-90.6202228	40.8504412	17187
-88.2661478	37.5178517	17069
-89.1277549	37.2156152	17153
-87.7606193	39.0027865	17033
-88.9018526	40.1814993	17039
-88.2228656	39.766078	17041
-88.7988615	39.3849258	17173
-88.1786227	38.0873259	17193
-90.3876823	39.3554391	17061
-90.2457045	39.9692024	17017
-89.4781407	39.2280681	17135
-89.9135746	40.2369926	17125
-89.3685249	38.0843809	17145
-88.5423737	37.4171687	17151
-89.2446391	37.4856521	17181
-88.0479408	38.4170954	17047
-88.2245882	40.5965386	17053
-88.4324302	38.4318573	17191
-90.8890344	39.6251059	17149
-88.0854523	38.7121872	17159
-88.2279642	37.7686768	17059
-90.7503095	39.9620694	17009
-88.8445391	40.4945594	17113
-90.9412464	40.814471	17071
-89.3495158	37.1836583	17003
-89.3812119	37.7860959	17077
-88.9300182	37.7303533	17199
-88.8821305	37.4607092	17087
-88.9203624	38.6482361	17121
-88.1969749	40.1389845	17019
-88.5923546	40.0090327	17147
-88.2406193	39.273121	17035
-88.220782	39.5136797	17029
-88.768991	41.8946125	17037
-88.4010545	41.2924096	17063
-87.9784564	41.4484742	17197
-87.435976	42.326441	17097
-88.452245	42.3242982	17111
-88.4306257	41.5881403	17093
-87.6454546	41.8942937	17031
-88.4280395	41.9395938	17089
-88.0860389	41.8520577	17043
-87.7267779	40.1867542	17183
-90.5721252	41.4684205	17161
-90.7417698	41.2056046	17131
-90.1308378	41.3500209	17073
-88.9615288	39.8602372	17115
-89.2993616	41.7474465	17103
-88.5928488	39.0479445	17049
-91.1688008	40.401318	17067
-89.6659942	42.3497262	17177
-90.2137921	40.9309446	17095
-90.4777707	39.6370016	17171
-90.2050054	39.7176678	17137
-87.8611165	41.1395105	17091
-89.3653086	40.1292768	17107
-90.6789543	40.4558082	17109
-88.92421	38.3007796	17081
-88.8859312	41.3433407	17099
-89.5283772	41.4013043	17011
-89.2983474	41.1989613	17155
-88.7056578	37.216119	17127
-89.2105871	40.789787	17203
-89.7974111	41.0969077	17175
-89.5162598	40.5080743	17179
-89.3423714	41.0311192	17123
-90.2022689	40.4652401	17057
-89.7669933	40.7859722	17143
-88.5528518	40.8943761	17105
-91.1949607	39.9860525	17001
-89.3201764	42.041884	17141
-88.8242951	42.3189831	17007
-89.1612053	42.3373957	17201
-89.9263301	39.2659138	17117
-90.361385	39.0801945	17083
-89.4365916	38.885924	17005
-90.1790777	38.2779831	17133
-89.9002267	38.8271195	17119
-89.4262278	38.6062953	17027
-90.6662949	39.1642619	17013
-89.9285459	38.4701976	17163
-89.6624251	39.7568675	17167
-89.7941326	40.0225693	17129
-89.9110045	41.7506733	17195
-89.2795927	39.5455242	17021
-86.265006	41.0503837	18049
-85.2604937	39.1002257	18137
-86.8018468	38.705322	18101
-85.3237297	40.4726717	18009
-86.8642934	40.7509496	18181
-87.5805231	38.3173981	18051
-86.489257	38.5473812	18117
-85.2129742	40.7352727	18179
-86.6265397	38.0814361	18123
-86.0562066	40.3102294	18159
-87.0047712	39.0471466	18055
-87.0103746	38.0096966	18147
-85.0057896	40.1640793	18135
-85.4278448	41.6424623	18087
-85.0023313	40.434956	18075
-86.4408711	38.2894327	18025
-85.029681	38.8258545	18155
-87.2348725	40.1212366	18045
-86.6446359	41.2844785	18149
-85.4664463	39.6223785	18139
-86.6925383	41.0452718	18131
-85.0024051	41.643467	18151
-85.0001854	41.4011894	18033
-86.4878198	38.8398148	18093
-86.8388453	39.3173394	18119
-86.52331	39.1607286	18105
-87.0713128	41.5099144	18127
-87.3743368	41.472247	18089
-87.1188137	41.0176883	18073
-87.4021716	40.9623985	18111
-85.0669641	39.409762	18047
-84.9251523	39.6231109	18161
-84.9642994	38.940527	18115
-84.9734976	39.14832	18029
-85.8979988	39.205843	18005
-85.1850315	39.6396552	18041
-86.8927145	40.0402962	18107
-84.9361303	40.7457327	18001
-85.8639864	41.6006928	18039
-87.5861659	38.0200703	18163
-87.2720486	38.0977282	18173
-87.8686526	38.0276138	18129
-85.5018918	41.1364261	18183
-85.0717907	41.0919086	18003
-86.4775665	40.305944	18023
-85.499831	39.3059799	18031
-85.4785975	40.8263938	18069
-85.7731503	39.8225286	18059
-86.0942641	39.496092	18081
-86.1357939	39.7829759	18097
-85.7921742	39.5241345	18145
-85.7224543	40.166203	18095
-86.2301205	39.1951133	18013
-86.5099075	39.7689632	18063
-86.4690137	40.0508916	18011
-86.0217126	40.053507	18057
-86.8533729	39.6655479	18133
-86.4474573	39.4826458	18109
-87.2325472	38.3979613	18125
-86.8733845	38.3733441	18037
-85.4172708	41.4046794	18113
-86.1141178	40.4835368	18067
-87.3147862	40.6009394	18007
-86.8935538	40.3891334	18157
-86.5651412	40.5849801	18015
-87.3758466	40.3526584	18171
-86.3551685	40.7537986	18017
-85.9118469	38.3180811	18043
-86.1047512	38.6006126	18175
-86.1037661	38.1864535	18061
-85.7111221	38.4762174	18019
-85.44009	38.7836039	18077
-85.6549455	40.5157575	18053
-86.7447386	41.5490129	18091
-85.3992617	40.2275433	18035
-85.3973629	39.9295911	18065
-85.628103	38.9962289	18079
-86.0442575	40.7728833	18103
-86.2690363	41.3250032	18099
-85.0067351	39.8630908	18177
-85.7518981	38.6794309	18143
-86.0425161	38.9119571	18071
-86.2880476	41.6177233	18141
-87.3903754	39.4291426	18167
-87.1158582	39.3939279	18021
-87.4158429	39.0892251	18153
-87.4620713	39.8540452	18165
-87.1969502	39.7742496	18121
-87.4203544	38.688391	18083
-85.7951915	40.8437475	18169
-85.8615754	41.2442928	18085
-87.076943	38.6960898	18027
-93.7436965	43.0754105	19081
-92.4103453	40.7480892	19051
-93.2714152	42.7365451	19069
-95.3089173	41.6790143	19165
-94.6436829	42.3861699	19025
-94.6971082	40.7379489	19173
-94.3887028	42.042494	19073
-96.2072011	43.3835796	19119
-90.5745819	42.1642256	19097
-92.780153	42.734757	19023
-95.1577896	41.0217348	19137
-94.9333023	41.3338235	19029
-92.7873669	43.052741	19067
-92.3219084	43.3653125	19089
-94.6782789	42.7340333	19151
-94.4781643	41.3285283	19001
-94.2027754	42.7822212	19091
-91.850788	43.2929889	19191
-93.3326126	40.7399827	19185
-92.8696415	41.0288473	19135
-94.6693702	43.3779844	19063
-95.1442898	40.7390902	19145
-91.8403761	42.8641219	19065
-96.1780098	43.082646	19167
-92.5228819	41.6845262	19157
-91.382751	43.2749637	19005
-94.2442514	40.7353342	19159
-95.9565661	42.0494317	19133
-95.3890903	42.0431192	19047
-91.1326105	41.77236	19031
-92.0591226	41.6839184	19095
-91.3235764	42.8409849	19043
-94.6690546	43.0753374	19147
-91.3667667	42.4729373	19055
-94.213983	43.2124777	19109
-92.873061	40.7442964	19007
-94.6969059	41.0216555	19003
-94.9043119	41.679178	19009
-91.2569936	41.2182111	19115
-91.8386658	42.4703284	19019
-95.6332616	42.7427375	19035
-93.7845799	40.7363787	19053
-93.7434883	43.3781243	19189
-93.709198	42.3907681	19079
-91.952943	40.7541168	19177
-95.6337878	43.3785421	19143
-96.2158638	42.7375854	19149
-92.5294115	42.074848	19171
-92.7844663	43.3485643	19131
-95.6256244	43.0837455	19141
-93.3314666	41.033344	19117
-95.5074206	42.3918601	19093
-95.1052244	42.3875259	19161
-93.241669	42.3902079	19083
-93.7840961	41.0291908	19039
-95.5991816	40.7425902	19071
-94.2450907	41.0285502	19175
-93.7347352	42.7330073	19197
-92.1677213	41.3311823	19107
-91.5472594	40.9848025	19087
-92.3172101	43.0597409	19037
-93.4660934	42.0375379	19169
-93.938358	42.038642	19015
-91.1869253	40.9153393	19057
-94.8676471	42.039492	19027
-92.05763	42.0925474	19011
-91.5976735	42.0779506	19113
-91.1169141	42.1251175	19105
-90.5342431	41.8980732	19045
-90.6222889	41.6420791	19163
-93.568971	41.6848158	19153
-93.5687512	41.3324459	19181
-94.5012723	41.6835728	19077
-94.0151842	41.3306216	19121
-94.0407065	41.6853205	19049
-93.0541468	41.6855513	19099
-90.8787708	42.4634808	19061
-91.9666345	41.0058877	19101
-94.1758309	42.4335786	19187
-91.4771574	40.6475875	19111
-91.7250523	41.3294012	19183
-91.5905285	41.670668	19103
-92.9814523	42.041691	19127
-93.2485332	43.373491	19195
-93.2509646	43.0749751	19033
-91.1186992	41.483776	19139
-95.619101	41.0337028	19129
-95.8271491	41.6885844	19085
-95.5449053	41.3401835	19155
-92.6363663	41.3307969	19123
-92.4094658	41.0312751	19179
-93.093849	41.3314552	19125
-96.0532956	42.3932198	19193
-95.1498753	43.0812244	19041
-95.1960572	43.3896107	19059
-95.1414324	42.7415219	19021
-92.3273559	42.7808946	19017
-92.3076003	42.4711317	19013
-92.7902437	42.4033387	19075
-97.1688527	39.3449643	20027
-94.8509284	37.8560997	20011
-98.2226184	39.7770021	20089
-98.2053552	38.7008451	20053
-96.0053805	39.7910427	20131
-98.2142837	39.0472801	20105
-95.7451749	37.5585146	20205
-96.2453962	37.1542592	20019
-99.8992352	39.7838666	20137
-100.8799515	37.554979	20081
-101.8095163	37.1852495	20129
-99.8984067	38.0874927	20083
-99.3244921	39.3460064	20163
-95.3009448	37.8842285	20001
-95.7291373	38.2364502	20031
-101.7273254	39.7899166	20023
-95.2920464	38.2151139	20003
-99.2865389	37.5612311	20097
-99.8138686	37.2338311	20025
-97.6413898	39.4873286	20029
-101.719859	39.3513521	20181
-96.2446421	37.4560259	20049
-100.4517163	37.7445134	20069
-97.1579434	38.8677353	20041
-97.0956108	39.7767142	20201
-98.7709489	38.9160397	20167
-98.7401199	37.6475943	20151
-101.3172684	37.2017002	20189
-99.9087452	38.4804369	20135
-100.4597084	39.783542	20039
-98.2073621	39.3930256	20123
-98.1445285	37.5529509	20095
-99.3421498	39.7845058	20147
-94.8456975	37.1693922	20021
-96.2417321	37.8793472	20073
-101.7711031	38.9266259	20199
-98.2014154	38.3471776	20159
-101.3474341	38.4819222	20203
-99.3091835	38.5235962	20165
-99.2512929	37.1814417	20033
-95.5699047	39.8259308	20013
-95.3156822	37.5642832	20133
-100.4873598	38.9172385	20063
-101.8059697	38.4804041	20071
-101.0767378	39.7861975	20153
-100.3600936	37.2438862	20119
-100.9063604	38.4818768	20171
-98.7198888	38.0356303	20185
-101.7893829	37.5659319	20187
-98.7679416	39.3482608	20141
-101.2993622	37.547537	20067
-101.0833859	39.3577126	20193
-95.7584691	37.8881929	20207
-97.1027707	38.3596474	20115
-99.8798939	39.3549716	20065
-99.3047457	37.8835945	20047
-100.4412278	39.3505465	20179
-101.1574016	38.9132702	20109
-100.4661853	38.4812863	20101
-98.0665901	37.188184	20077
-99.865423	38.9213022	20195
-96.6514482	38.688204	20127
-101.7936887	37.9952438	20075
-96.5212426	39.7827091	20117
-98.7854295	39.7846603	20183
-98.685052	37.2229059	20007
-97.650883	39.8289061	20157
-99.2347717	38.1814768	20145
-95.3133975	39.5325441	20005
-95.7424028	37.1895369	20125
-99.8847484	37.6884159	20057
-96.5940289	38.2994749	20017
-96.1616407	38.4554034	20111
-101.3081363	37.9944614	20093
-100.7399674	38.0498075	20055
-98.7678374	38.4812394	20009
-99.3173133	38.9145967	20051
-98.0783463	37.9481849	20155
-94.8223295	38.8839065	20091
-94.8329626	38.5667718	20121
-95.038977	39.1895108	20103
-94.7630866	39.1153842	20209
-94.8449321	38.2165494	20107
-95.2909475	38.8964168	20045
-100.8552566	37.1809599	20175
-96.7680996	39.0021387	20061
-96.7274889	39.2912114	20161
-96.3371126	39.3821868	20149
-97.6474893	38.395812	20113
-95.2789618	38.5580187	20059
-95.2974732	37.1914676	20099
-94.8538967	37.5058215	20037
-95.1472253	39.7885021	20043
-97.6514783	38.7918043	20169
-97.6548025	39.1379632	20143
-95.794485	39.4111453	20085
-96.2012619	38.9551537	20197
-95.7082554	38.6502149	20139
-95.755664	39.0418053	20177
-95.375314	39.239644	20087
-97.4610535	37.681045	20173
-97.4933519	37.2366617	20191
-96.8388402	37.7736487	20015
-97.4367065	38.0501436	20079
-96.8372468	37.2345068	20035
-85.2689592	37.552604	21155
-85.713508	36.714077	21171
-84.3143684	37.3610502	21203
-83.3886172	37.0878462	21131
-83.3701427	38.5350468	21135
-86.3440113	37.4585771	21085
-85.0549503	36.9905867	21207
-85.2813796	37.1055589	21001
-87.1836416	36.8403384	21219
-85.3512075	38.6200401	21223
-83.2214968	36.8592233	21095
-84.0262231	38.338031	21181
-83.2589444	37.9229402	21175
-84.8265896	36.8007715	21231
-85.3884841	36.7823717	21057
-84.0205757	37.4034585	21109
-87.9516496	37.6580293	21225
-84.9282195	37.3219623	21045
-82.410912	37.4860314	21195
-83.4280787	38.2042659	21205
-85.1360977	36.7272577	21053
-82.8612507	37.1185357	21133
-85.8821233	37.3090972	21099
-84.3341313	38.4445776	21097
-82.5066231	37.796774	21159
-88.3327524	36.882017	21157
-83.3171582	37.5178069	21025
-86.844871	37.4778588	21183
-83.2177723	37.2412822	21193
-88.0833909	37.0239759	21143
-88.976614	36.85718	21039
-84.8796946	37.8120852	21167
-85.1240238	38.6683939	21041
-87.6847902	37.5194599	21233
-85.1754162	37.7542085	21229
-83.691637	37.4236223	21189
-83.069721	37.698983	21153
-83.8313543	37.8099073	21197
-84.8415902	38.4993945	21187
-88.1050103	37.3581494	21055
-87.8705095	37.1486421	21033
-82.7397239	37.552456	21071
-83.7192475	37.608116	21129
-84.06423	38.5134727	21201
-86.4329188	37.777988	21027
-84.4910515	36.7311363	21147
-86.8812881	36.859607	21141
-86.5817934	36.7409366	21213
-88.9720844	36.675896	21105
-83.4951095	37.7438929	21237
-89.1876586	36.5525115	21075
-82.7382903	38.0744531	21127
-84.5458557	37.6301619	21079
-82.8301215	37.8477561	21115
-83.096116	38.1168826	21063
-82.9525461	37.3543684	21119
-83.6992045	38.3678475	21069
-85.4659312	37.8031198	21179
-86.2180153	37.2275136	21061
-86.6824707	37.2070133	21031
-86.192458	36.7507703	21003
-86.4235786	36.995634	21227
-85.5784829	37.2753816	21087
-85.3280585	37.3662101	21217
-87.1340919	37.2138159	21177
-84.3795832	38.9469811	21037
-84.6259245	38.649167	21081
-84.7363707	38.9589002	21015
-84.8621525	38.7601027	21077
-84.3519435	38.6962842	21191
-84.1152351	38.6803649	21023
-84.5334381	38.9305031	21117
-87.4929864	36.8920592	21047
-87.8586515	36.8076808	21221
-84.6583354	37.4571737	21137
-84.8683523	37.6181043	21021
-85.6968413	37.5444624	21123
-85.9631827	37.6958356	21093
-86.2008628	37.9674757	21163
-87.5725767	37.7925421	21101
-84.8687863	38.234919	21073
-84.9864171	38.0053963	21005
-85.6334564	36.9924298	21169
-85.9321078	36.9628048	21009
-82.9338199	38.5635616	21089
-82.6814063	38.3600037	21019
-83.0487958	38.3095486	21043
-84.7488546	38.0431027	21239
-84.4582743	38.0406751	21067
-84.2098602	38.2025623	21017
-84.5839603	37.8732908	21113
-84.1451152	37.9703141	21049
-84.5783405	38.2857099	21209
-84.1446485	36.7580237	21235
-84.119395	37.1132678	21125
-83.7154733	37.1642731	21051
-83.8555508	36.8885003	21121
-85.7026357	37.9699446	21029
-85.1196472	38.4513829	21103
-85.2282471	38.2390111	21211
-85.4561516	38.4001274	21185
-85.6576243	38.1895321	21111
-85.3171741	38.0254107	21215
-87.5421956	37.3110702	21107
-88.6498974	36.7233435	21083
-83.8281251	38.5941366	21161
-83.680718	36.7289281	21013
-83.5893651	37.9355008	21165
-83.9124157	38.0381086	21173
-83.7376405	38.1522485	21011
-88.2740857	36.6209783	21035
-87.2655972	37.5267075	21149
-87.087139	37.731671	21059
-86.7927612	37.8433252	21091
-88.3634261	37.2095174	21139
-89.0103673	37.0513234	21007
-88.7124544	37.0541106	21145
-83.9639825	37.6924493	21065
-84.2783618	37.7255107	21151
-84.5769534	37.1073741	21199
-91.342576	32.0014894	22107
-91.2319321	32.3468782	22065
-91.7483534	32.413158	22083
-92.4040858	30.7206932	22039
-93.5595793	31.5604024	22085
-92.1142311	32.1012195	22021
-92.9897278	32.8271597	22027
-91.6723711	32.1390764	22041
-92.8196052	30.6527435	22003
-91.9832748	31.088503	22009
-91.4519982	32.7924797	22123
-93.0411511	32.3409517	22013
-91.2341409	32.7301699	22035
-93.3490504	32.1012125	22081
-92.5616997	32.3042901	22049
-91.846703	31.666517	22025
-92.1615956	31.6800826	22059
-92.6412694	31.9411871	22127
-92.5359531	31.1932037	22079
-92.5617156	31.5977873	22043
-91.6046207	30.708319	22077
-90.9125023	30.2064437	22005
-91.0524649	29.8988529	22007
-90.7274738	30.4404194	22063
-91.309808	30.4640516	22121
-91.4210081	30.872701	22125
-90.7083074	30.8225386	22091
-91.0434338	30.8397837	22037
-91.3658481	30.2706285	22047
-91.093131	30.5439297	22033
-90.0462534	30.8521435	22117
-93.3402526	30.6450184	22011
-93.1815202	31.1105625	22115
-90.4066303	30.6215313	22105
-90.394849	29.4919925	22057
-90.8436739	29.3341299	22109
-92.8162205	30.2695293	22053
-92.06417	30.2065065	22055
-91.6114814	30.1214329	22099
-92.2915678	29.7897222	22113
-92.4110366	30.291497	22001
-91.9767838	30.0071265	22045
-93.3580154	30.2295588	22019
-93.1649478	29.871812	22023
-93.3398245	32.7321522	22119
-92.1515814	32.480932	22073
-92.3756501	32.8293486	22111
-91.8003988	32.8200082	22067
-91.4638037	29.6293488	22101
-91.626315	31.4698053	22029
-93.0826114	31.7325509	22069
-89.2634941	29.9181102	22087
-90.7939562	30.0247772	22093
-89.9345018	30.0534195	22071
-89.5760676	29.282447	22075
-90.4909596	30.1440682	22095
-90.3578553	29.9057222	22089
-90.081001	29.522281	22051
-89.9519622	30.4100224	22103
-91.9892745	30.5834409	22097
-92.6623026	32.6018231	22061
-93.8824228	32.5771951	22017
-93.7407968	32.0592476	22031
-93.6265609	32.6984813	22015
-68.6124095	46.7091929	23003
-69.1022311	45.9156393	23021
-67.6093542	44.9670088	23029
-70.7344211	44.4944998	23017
-69.5136244	43.9947814	23015
-69.0385145	44.0420446	23013
-70.4149354	44.9767238	23007
-69.1389521	44.5058342	23027
-68.3707034	44.5649063	23009
-69.9561096	45.5036458	23025
-69.7657639	44.4170119	23011
-68.666616	45.4092843	23019
-70.2074347	44.1676811	23001
-70.3303753	43.8083479	23005
-69.844227	43.9168446	23023
-70.6684248	43.4260188	23031
-75.831662	38.8715306	24011
-79.2746192	39.5472985	24023
-76.1259867	39.2412793	24029
-77.0153276	39.5633308	24013
-76.0824053	39.0406929	24035
-76.6104761	39.3000324	24510
-76.9244057	39.2522639	24027
-76.6165693	39.4431666	24005
-76.5608941	38.9916174	24003
-76.2997894	39.5374292	24025
-76.5303837	38.2202894	24037
-76.0474333	38.4291957	24019
-78.7031037	39.6123134	24001
-76.1784757	38.7483486	24041
-77.8146709	39.6036207	24043
-75.9415852	39.5623537	24015
-75.8533228	38.0744501	24039
-75.6320828	38.3673699	24045
-75.3099315	38.2221332	24047
-77.2030633	39.1373815	24031
-76.84818	38.8292875	24033
-77.0154272	38.4728532	24017
-77.3976277	39.4702139	24021
-76.5297621	38.5227191	24009
-70.1419099	41.3058778	25019
-70.2118803	41.7990145	25001
-70.8649085	42.6427082	25009
-71.018253	42.3385513	25025
-70.7419417	41.9871959	25023
-71.3949161	42.4817182	25017
-71.1811115	42.1717393	25021
-73.2179276	42.371493	25003
-71.088894	41.748588	25005
-72.6636936	42.3394593	25015
-72.5917921	42.5845038	25011
-72.6356476	42.1361975	25013
-70.7014995	41.3809696	25007
-71.940282	42.3116934	25027
-85.5823683	46.9406018	26095
-84.3898162	43.9897504	26051
-84.5766031	45.0217871	26137
-86.197029	46.0211217	26153
-84.6113432	44.6801748	26039
-89.5004631	47.2166022	26131
-85.175639	45.0054553	26009
-85.3037625	46.1678678	26097
-85.3222825	43.9975523	26133
-84.1301067	45.0241337	26119
-84.9868217	45.5900944	26047
-82.6428148	43.4491547	26151
-85.8113997	43.9951867	26085
-84.1269054	44.6872574	26135
-85.450392	45.5131638	26029
-83.3840186	45.4895147	26141
-82.8340784	44.6825347	26001
-84.8383253	43.9911368	26035
-86.3060762	42.2821497	26159
-82.8570449	43.907616	26063
-86.5641076	47.0800765	26003
-85.3145503	42.5828109	26015
-84.4954307	45.4760217	26031
-86.8075751	43.6472546	26127
-88.3618101	46.6958592	26013
-85.7913723	43.5627117	26123
-83.7406755	44.0368327	26011
-84.1280728	44.3332801	26129
-83.436618	43.4879024	26157
-84.6112715	44.3395168	26143
-82.8494444	44.3294821	26069
-88.5405261	46.1702542	26071
-86.6029668	44.3503855	26101
-89.806863	46.461513	26053
-84.0743563	41.8960225	26091
-84.60469	43.2923259	26057
-83.4265739	44.894954	26007
-83.8434233	42.2522168	26161
-85.0123853	42.2429896	26025
-83.9787007	43.6997112	26017
-85.3327509	43.6352949	26107
-85.0854708	44.325424	26113
-85.5700462	44.3313751	26165
-85.0668852	41.9184551	26023
-82.9114562	42.6715526	26099
-83.2619533	42.2846636	26163
-83.2243247	43.0886327	26087
-82.6689135	42.9288035	26147
-83.9117183	42.6025316	26093
-83.3842103	42.6604518	26125
-86.9019375	45.8052288	26041
-83.7063718	43.0210768	26049
-85.547446	43.0324971	26081
-86.6549462	42.9424607	26139
-85.073766	42.9446503	26067
-85.1494679	43.3127822	26117
-84.6374794	41.9274606	26059
-86.6347446	42.5957875	26005
-88.1487965	47.6819737	26083
-88.6519034	46.998427	26061
-87.8661227	46.0128246	26043
-84.4208679	42.2484738	26075
-85.5328544	42.2462657	26077
-84.3738107	42.6035338	26065
-84.8464499	42.5895301	26045
-84.5916949	42.950455	26037
-84.1463518	42.9515446	26155
-86.7508138	43.9966363	26105
-87.5018115	45.5362068	26109
-87.5840278	46.6565964	26103
-84.3794144	43.6482031	26111
-83.4871059	41.916097	26115
-84.8394245	43.6452331	26073
-86.751892	43.2892579	26121
-86.7425435	41.7913818	26021
-84.05541	43.3282667	26145
-84.5206297	46.3218192	26033
-86.000142	41.9172431	26027
-85.5228703	41.9114878	26149
-85.0889915	44.6788808	26079
-85.5538484	44.7186875	26055
-86.051574	45.1461816	26089
-86.4943263	44.6486211	26019
-95.7417568	46.9376289	27005
-96.4748315	45.7699352	27155
-94.2301232	44.5757343	27143
-96.4637757	47.3294529	27107
-95.2542415	44.4035357	27127
-96.2720323	44.4082382	27081
-96.7803493	48.7760403	27069
-95.6901243	45.2758101	27151
-95.1831523	44.0106386	27033
-94.9886078	46.5869861	27159
-94.9005758	46.0665694	27153
-96.0106987	45.9307426	27051
-96.08718	47.8654866	27125
-95.7615809	44.0155943	27101
-94.9132898	47.0955506	27057
-94.9556169	44.7236969	27129
-93.5898443	44.0184598	27161
-95.9923146	45.5934609	27149
-94.613798	43.9781089	27165
-95.4467052	45.5896228	27121
-93.7828956	48.2453743	27071
-94.527346	45.1231555	27093
-90.2901889	47.538569	27031
-96.357761	48.3627284	27089
-96.2570147	44.0153614	27117
-95.1497314	43.671111	27063
-96.176836	44.9998559	27073
-95.8110885	47.3283866	27087
-93.9472338	43.6765219	27043
-96.2632376	43.6695866	27133
-95.862756	44.7157358	27173
-95.371117	47.5758729	27029
-96.0377254	48.069247	27113
-92.7630936	46.1009402	27115
-93.41976	46.6024464	27001
-95.5641082	45.0286254	27023
-94.9046335	48.7681003	27077
-95.8215042	48.7610683	27135
-96.4022263	45.4199252	27011
-94.2666194	46.0204839	27097
-93.2977883	45.9477598	27065
-93.3502887	43.6742019	27047
-95.462156	45.9368293	27041
-92.7595136	43.6662486	27099
-95.00505	47.8795077	27007
-94.3337048	46.9517447	27021
-94.0707182	46.4916528	27035
-92.6710435	46.6038184	27017
-91.4117038	47.5171114	27075
-92.51457	47.578635	27137
-94.5372525	43.6771181	27091
-96.4949007	46.8983772	27027
-93.2985052	44.3507339	27131
-95.7145815	46.4057273	27111
-96.4000265	47.7742536	27119
-93.6111022	47.4908166	27061
-94.2723231	44.8216571	27085
-91.5015556	43.6669899	27055
-94.2456844	44.3588204	27103
-94.0640122	44.0337104	27013
-95.8472678	44.4091953	27083
-93.0624813	44.670893	27037
-93.5337311	44.651805	27139
-93.2427232	45.2741098	27003
-92.890117	45.037929	27163
-92.9038486	45.5054439	27025
-93.2963388	45.5624313	27059
-93.4752279	45.0061209	27053
-93.8000913	44.8213196	27019
-93.6329964	45.9290434	27095
-93.9663965	45.1750914	27171
-93.0999648	45.0152037	27123
-93.7301433	44.3734238	27079
-93.76913	45.4531762	27141
-94.7336472	44.2465415	27015
-93.2204527	44.0152607	27147
-92.7160003	44.4061779	27049
-92.4100985	43.9994987	27109
-92.8693529	44.0207056	27039
-92.2333405	44.289693	27157
-92.0939369	43.6791869	27045
-94.0014397	45.7012249	27009
-94.6104822	45.5552345	27145
-96.476657	46.3623354	27167
-95.0049812	45.1527137	27067
-91.7767076	43.9822682	27169
-95.7631323	43.6776863	27105
-88.4850379	33.8900295	28095
-89.0023393	34.4895325	28145
-89.5886219	33.0904678	28007
-91.3246169	31.1610908	28157
-88.9188185	34.7636183	28139
-89.5334861	32.4119595	28123
-89.8270863	31.5648075	28065
-88.6422679	30.8554305	28039
-88.6348108	31.2128455	28041
-89.5222495	32.7606302	28079
-88.678214	31.642503	28153
-90.8276129	32.8923946	28125
-90.1034306	31.164492	28147
-88.9475579	33.9332767	28017
-90.7955421	31.2039333	28005
-89.7038072	34.0306661	28161
-89.2002848	34.8105184	28009
-89.9630654	34.3652052	28107
-89.821712	31.2301672	28091
-88.236064	34.7376972	28141
-91.0438779	31.7336333	28063
-90.1722434	33.9545292	28135
-90.1075299	31.5500087	28077
-89.3371142	33.9366339	28013
-89.1184115	32.4019702	28101
-88.5660044	33.1065082	28103
-90.8954573	31.4777726	28037
-89.6396251	33.5007144	28097
-90.5234209	33.1309962	28053
-91.0035351	32.7555393	28055
-89.2513319	33.3459638	28019
-90.2901707	34.2528327	28119
-89.1192743	32.752518	28099
-90.9154239	31.9728096	28021
-89.0373913	33.0787236	28159
-89.4948763	32.019029	28129
-90.4535663	31.5352155	28085
-90.603165	34.2286699	28027
-90.8841199	33.7991391	28011
-88.4397227	33.4714237	28087
-88.5811091	34.8865689	28003
-90.9444459	33.273174	28151
-89.918887	33.4407948	28015
-90.2949343	33.5497896	28083
-89.8027405	33.770031	28043
-89.112297	30.790184	28131
-88.6251005	30.4560045	28059
-89.4827905	30.3916415	28045
-89.0833762	30.4165357	28047
-89.2594467	31.1885802	28035
-88.9887554	31.1693073	28111
-89.5488968	31.633331	28031
-89.5063691	31.1975865	28073
-90.5950901	33.6055289	28133
-90.0911968	33.1259415	28051
-90.3879282	32.7656747	28163
-90.0341603	32.6343703	28089
-89.9177086	31.9025047	28127
-89.946063	32.2671233	28121
-90.4487578	31.8669151	28029
-90.4660171	32.2677879	28049
-89.1194302	32.0169894	28061
-89.1685317	31.6166011	28067
-90.3977254	31.1775159	28113
-90.3717697	34.6522011	28143
-89.504231	34.7661897	28093
-89.99324	34.874266	28033
-89.9431054	34.6495527	28137
-88.6256306	32.7501361	28069
-88.6879756	32.0453738	28023
-88.6604487	32.4039981	28075
-91.3517966	31.4862243	28001
-89.4853847	34.353078	28071
-89.5869043	30.7747929	28109
-88.8761514	33.4223134	28105
-89.2839612	33.6120605	28155
-88.3631269	34.2810747	28057
-88.6824388	34.2923703	28081
-88.5221836	34.6205664	28117
-89.0372387	34.2270808	28115
-90.8523838	32.3560946	28149
-88.782468	33.65967	28025
-93.5002266	39.4273754	29033
-92.56434	39.829795	29121
-94.3415972	37.8501957	29217
-93.970053	39.9628387	29061
-92.7653271	38.0265275	29029
-93.2879421	38.3010358	29015
-93.5676313	40.4214135	29129
-92.4298762	38.2166802	29131
-89.8021249	37.7111296	29157
-89.6559485	36.5942608	29143
-91.4897172	37.6030721	29065
-91.5057795	38.4411826	29073
-91.9644783	37.3142565	29215
-93.7926278	38.3864909	29083
-92.0887194	39.7975309	29205
-91.1716071	39.3399592	29163
-92.4585492	36.6495904	29153
-90.3434128	37.4744807	29123
-92.9616205	39.5179685	29041
-93.108019	39.8644404	29115
-90.9457051	36.9448579	29035
-93.8305507	37.1065898	29109
-93.3229883	37.9369099	29085
-92.479989	37.2676331	29229
-93.854878	37.4323495	29057
-91.923601	38.1626154	29125
-93.5482013	39.778587	29117
-91.4018272	36.6853104	29149
-93.5650538	40.1125409	29079
-94.4053211	40.2081271	29075
-90.8970179	37.9426107	29221
-89.9474812	36.8515565	29207
-94.4191982	40.4804994	29227
-93.1097826	40.209587	29211
-93.8500144	37.7336549	29039
-92.1468345	40.1368559	29103
-95.2190716	40.095724	29087
-94.3439556	36.630218	29119
-91.3913284	37.1524984	29203
-93.0145314	40.4786055	29171
-93.4737009	36.751004	29209
-90.4539307	37.1110737	29223
-93.7765602	38.0422304	29185
-93.8343344	36.6993756	29009
-89.2959286	36.826264	29133
-90.1615306	37.8858449	29186
-90.9846823	37.5943638	29093
-92.8748346	38.4208062	29141
-94.3440893	37.5007989	29011
-95.4375546	40.431846	29005
-93.9925818	40.34562	29081
-91.465427	38.9351835	29139
-89.7859419	36.2099162	29155
-90.9722821	37.3664637	29179
-92.1428235	40.4476855	29199
-91.3139328	37.9665605	29055
-92.0064582	39.4982695	29137
-92.5158918	36.9465168	29067
-93.0428188	36.6498267	29213
-89.6856575	37.3841408	29031
-90.0246452	37.3184272	29017
-92.6959255	39.143365	29089
-92.8123231	38.8453861	29053
-92.3102022	38.9898614	29019
-90.4738684	37.8107068	29187
-92.2070224	37.8248346	29169
-91.729472	40.4072747	29045
-91.5247867	39.5534554	29173
-91.6353791	39.8075383	29127
-91.9234458	38.835547	29027
-91.8595036	38.4642535	29151
-92.2800271	38.5032331	29051
-92.5836417	38.6330371	29135
-94.3372594	37.2051967	29097
-94.335034	36.9083713	29145
-94.3431655	39.0053359	29095
-94.3958028	39.6087233	29049
-93.8026388	39.0687048	29107
-94.3392459	38.2572171	29013
-94.3545467	38.6464737	29037
-94.4215024	39.3155512	29047
-93.9957462	39.3084005	29177
-94.7614717	39.3786957	29165
-93.9791785	39.6589977	29025
-90.065394	36.3069045	29069
-92.6035922	40.1906655	29001
-92.5190156	40.4693611	29197
-92.594843	37.6596977	29105
-93.2041639	39.1358403	29195
-94.8831457	40.3611359	29147
-91.8434182	39.214481	29007
-92.4929595	39.4392486	29175
-90.874834	36.6501703	29181
-90.40313	36.7151802	29023
-91.7288031	40.0845592	29111
-91.7903492	37.8663263	29161
-94.4071901	39.8946645	29063
-94.8035511	39.9888628	29003
-94.8081728	39.6603695	29021
-90.2445816	38.6356988	29510
-90.4460731	38.6406881	29189
-91.072832	38.4130031	29071
-90.5436807	38.2576296	29099
-91.1593065	38.761902	29219
-90.9629165	39.0622547	29113
-90.6749153	38.7811023	29183
-93.2852073	38.7273667	29159
-89.5680975	37.0477927	29201
-93.0338146	37.6835825	29059
-93.3406409	37.2581957	29077
-93.1876139	36.9697388	29043
-92.8760795	37.2808043	29225
-93.4008166	37.6167611	29167
-93.8118634	38.741528	29101
-91.8873677	36.7743685	29091
-106.9959912	47.2671843	30033
-105.555344	45.4089262	30075
-108.9676475	48.4282823	30005
-104.5153243	45.5168247	30011
-105.5417385	48.794429	30019
-104.8982713	47.2661301	30021
-109.8571467	46.4970466	30107
-110.5327601	45.4214291	30067
-110.4362004	47.8868343	30015
-112.9905023	48.7056706	30035
-112.2817249	47.8190352	30099
-108.4397631	46.5052807	30065
-114.105795	46.0777441	30081
-107.9288973	48.2501432	30071
-111.4978728	46.3298486	30007
-111.7334723	48.6451246	30101
-115.1803062	47.7564968	30089
-114.0836866	47.6429007	30047
-113.1416236	46.0946716	30023
-104.5634082	47.785633	30083
-112.9310998	46.8442254	30077
-110.9217396	46.5856996	30059
-105.5503521	46.2614136	30017
-110.106321	48.6319595	30041
-105.757222	47.6296277	30055
-115.0656272	47.1519417	30061
-110.30532	47.032558	30045
-107.5181625	45.407869	30003
-111.0369242	48.5596541	30051
-115.4631849	48.5523847	30053
-104.4057182	46.3181841	30025
-112.2207612	48.2286037	30073
-104.9951698	48.2827471	30085
-109.944796	45.8112917	30097
-104.2745184	46.9629657	30109
-106.6704238	48.3498496	30105
-108.2265753	47.1419168	30069
-111.9137914	45.3252895	30057
-104.5339129	48.7055228	30091
-106.6667462	46.1732331	30087
-113.4273564	46.3959554	30039
-109.1745855	46.3806243	30037
-105.5039937	46.8123837	30079
-109.2321376	47.2252211	30027
-107.2857723	46.2294408	30103
-112.8928694	45.1338633	30001
-109.0285543	45.2244683	30009
-108.2766564	45.9369867	30111
-109.3815759	45.6585447	30095
-111.1639214	45.5180536	30031
-112.6600714	45.8962319	30093
-111.3502622	47.3165751	30013
-112.3733673	47.1320133	30049
-112.0594284	46.1242317	30043
-114.0542951	48.3146779	30029
-113.8926911	47.0272632	30063
-101.6274676	40.8576462	31135
-97.0889449	41.57496	31037
-98.951231	41.9068675	31071
-97.5962626	40.1738446	31169
-98.5208533	41.9225747	31183
-101.044217	40.1768964	31087
-103.1348721	42.7112144	31045
-95.7186026	40.1237427	31147
-99.5098521	41.9031834	31115
-103.0119289	41.2142358	31033
-101.6811327	40.180165	31057
-96.3377462	41.8541794	31021
-100.4066834	40.5309469	31063
-102.3029845	41.6333638	31069
-103.7031528	41.1992736	31105
-101.6444493	41.1942448	31101
-99.4208512	42.394749	31149
-98.4985897	40.1806461	31181
-97.8913492	42.6344045	31107
-97.5967418	40.8730557	31185
-100.5247028	41.8557296	31171
-98.9728492	41.2187425	31163
-96.2653668	40.3950099	31097
-98.0468422	40.1764918	31129
-98.9834841	41.5640938	31175
-98.0223294	40.8728173	31081
-98.96208	40.1832031	31061
-99.9964074	41.931945	31009
-98.0508585	40.5236693	31035
-100.4685764	40.1694196	31145
-101.0476532	42.571323	31031
-103.0817795	42.2103804	31013
-99.7268662	41.3938927	31041
-102.332609	41.1119026	31049
-101.6959166	41.5719297	31005
-98.0704764	41.7039345	31011
-99.9239198	42.3595618	31017
-97.1262433	42.210746	31179
-101.7559645	41.9139574	31075
-98.7847662	42.4592867	31089
-101.117324	41.920317	31091
-97.1320395	41.2260724	31023
-96.2452254	40.1378496	31133
-97.2568696	42.6045604	31027
-102.3682795	42.5122888	31161
-95.8527214	40.3873891	31127
-96.7885168	41.9158651	31039
-99.9096631	40.191865	31065
-98.5305655	41.5675715	31077
-97.1431027	40.1757356	31095
-96.5339428	42.1540613	31173
-97.5706627	41.1879253	31143
-98.0580367	42.1832253	31003
-99.4034177	40.1787663	31083
-97.131755	40.5168024	31151
-98.7730221	42.8944477	31015
-99.7183514	42.8754803	31103
-99.4065568	40.5163647	31137
-97.9914083	41.4023855	31125
-97.5967053	40.5250399	31059
-96.1310274	40.6379916	31131
-102.9905936	41.7322039	31123
-101.6941918	40.5303903	31029
-101.0479627	40.5372337	31085
-96.6834528	40.2552337	31067
-97.5134673	41.5768655	31141
-96.6458526	41.5770082	31053
-98.5026645	40.8660265	31079
-98.0310573	41.1697896	31121
-98.5133417	41.2168513	31093
-98.5000441	40.5206322	31001
-98.9476019	40.5091198	31099
-99.0749833	40.855226	31019
-99.8232058	40.5090947	31073
-99.8151537	40.8673784	31047
-96.6886584	40.7835474	31109
-97.140383	40.8719439	31159
-97.6109917	42.2714129	31139
-97.1771094	41.9050454	31167
-97.6068564	41.9099293	31119
-101.1208507	41.6484137	31117
-100.4436647	41.5421555	31113
-100.7444808	41.0503221	31111
-96.1540664	41.2970908	31055
-96.6420968	41.2233882	31155
-96.2245771	41.5339726	31177
-96.1406086	40.9098778	31025
-96.1091254	41.1150635	31153
-103.7262626	41.5397495	31007
-103.7321705	42.4706681	31165
-103.7015494	41.8503306	31157
-96.8558616	42.4852801	31051
-96.5613555	42.3916449	31043
-117.0472398	39.9002105	32015
-118.4094765	40.439639	32027
-117.6323824	37.7789658	32009
-114.8630367	37.634605	32017
-114.900605	39.4182344	32033
-118.4162794	38.516647	32021
-119.7473681	39.1530598	32510
-116.2722082	39.9777878	32011
-115.3514239	41.1411327	32007
-118.2641661	39.5377097	32001
-119.1974246	39.0222125	32019
-119.6090191	38.9051292	32005
-115.013812	36.2142575	32003
-116.4590107	37.9658636	32023
-119.5246462	39.4383853	32029
-119.6632695	40.7313196	32031
-118.1275915	41.4079136	32013
-71.2015596	43.8677742	33003
-71.2894309	44.6525477	33007
-71.0355891	43.2932725	33017
-71.0990801	42.9886636	33015
-71.6800412	43.2995786	33013
-72.2481828	42.9254596	33005
-71.4253661	43.5191091	33001
-71.8424242	43.9264391	33009
-72.2220839	43.3611883	33019
-71.7230554	42.9115317	33011
-75.0094978	40.8534914	34041
-74.6337591	39.4693555	34001
-74.6199378	40.5655273	34035
-74.29828	41.0378896	34031
-74.2462919	40.7874003	34013
-74.1524456	40.2870481	34025
-74.4074303	40.4396214	34023
-74.2588636	39.865669	34029
-74.3086957	40.6598707	34039
-74.6919141	41.1374609	34037
-74.9119695	40.5652832	34019
-74.5472917	40.8588961	34027
-74.0747272	40.9596985	34003
-74.0786014	40.7313751	34017
-74.8463541	39.0858411	34009
-75.3573559	39.5738282	34033
-74.6630063	39.8757858	34005
-74.9612493	39.8024071	34007
-75.1456793	39.7228745	34015
-74.703724	40.2825026	34021
-75.1216277	39.3284336	34011
-103.5480713	35.1070184	35037
-104.7849677	34.8697822	35019
-104.6401105	36.6129638	35007
-103.4757229	36.4880853	35059
-107.1881612	33.1194684	35051
-104.3686961	34.3592729	35011
-108.7519293	31.8980519	35023
-103.8479245	35.8585157	35021
-108.3919284	33.9016208	35003
-106.9391362	33.9916579	35053
-105.7513079	32.6155988	35035
-106.6690805	35.053628	35001
-105.8905574	34.5549784	35057
-106.8831191	35.6850913	35043
-106.8065821	34.7168404	35061
-104.3064338	32.4578347	35015
-103.3460546	34.5729841	35009
-107.7471911	32.1845231	35029
-106.6939829	36.5096687	35039
-108.3245778	36.5116245	35045
-108.2532659	35.5838784	35031
-107.9926805	34.9282721	35006
-103.4132707	32.7956865	35025
-106.8349684	32.349919	35013
-104.9218975	35.9828413	35033
-104.8035189	35.4768585	35047
-106.3079679	35.8700469	35028
-103.4830039	34.0212068	35041
-104.4698374	33.3616045	35005
-105.4498055	33.7408411	35027
-105.9639718	35.5145305	35049
-108.3815043	32.732087	35017
-105.6379865	36.5765287	35055
-75.4441402	43.7826811	36049
-74.9667281	42.1939865	36025
-76.938603	42.4197755	36097
-74.7715769	41.7199928	36105
-78.2285667	42.7013627	36121
-75.6022407	42.4780238	36017
-74.5024556	43.6578786	36041
-78.0261531	42.2478532	36003
-73.7784307	44.1096005	36031
-74.1420253	42.2798211	36039
-73.8553872	43.1061353	36091
-73.5138454	42.7104206	36083
-73.9740095	42.5882401	36001
-74.0435592	42.8175516	36093
-74.4381718	42.591294	36095
-74.4353575	42.9008912	36057
-76.5745866	43.0085456	36011
-78.1927784	43.0009096	36037
-75.8302833	42.1619773	36007
-76.2974556	42.1780565	36107
-78.7781922	42.752759	36029
-78.7921425	43.4567309	36063
-77.3855253	42.2667252	36101
-76.0762398	42.594039	36023
-76.7471791	42.1552804	36015
-73.4394282	43.3123766	36115
-73.8381388	43.5551053	36113
-74.4236782	43.1156093	36035
-73.6268057	42.2477288	36021
-76.4734835	42.4530063	36109
-79.4075949	42.3042159	36013
-74.2654582	41.9472124	36111
-74.31067	44.5943758	36033
-73.9506398	40.6350451	36047
-74.0246616	41.1546276	36087
-73.5894144	40.7296118	36059
-74.1398995	40.5612628	36085
-73.7457526	41.1526862	36119
-73.852939	40.8487111	36005
-73.7438608	41.4279067	36079
-73.9701871	40.7766419	36061
-73.8380168	40.6585662	36081
-72.6922183	40.943554	36103
-75.074311	44.4881125	36089
-78.662332	42.2390986	36009
-75.028841	42.6297762	36077
-73.7056429	44.752712	36019
-73.7400411	41.7547699	36027
-74.3062522	41.4024096	36071
-77.3034967	42.8563575	36069
-77.1043238	42.638237	36123
-77.0631637	43.4587577	36117
-77.7697795	42.7274845	36051
-77.6646584	43.4644839	36055
-78.2297258	43.5022867	36073
-76.827088	42.7822943	36099
-76.1961336	43.0065163	36067
-76.2092618	43.4614431	36075
-75.6635749	42.9100255	36053
-75.4342824	43.2427273	36065
-75.011683	43.407489	36043
-76.0529678	43.996389	36045
-79.9066023	35.3344151	37123
-77.1196022	35.8473006	37117
-79.339609	36.3942984	37033
-77.6816876	35.481959	37079
-76.9623641	36.0590432	37015
-76.1536867	35.4081567	37095
-76.6027521	36.128979	37041
-84.0614491	35.1371499	37039
-78.3711743	34.9892978	37163
-82.1635541	36.013102	37121
-81.9202847	36.07209	37011
-81.4993343	36.4434687	37009
-83.7522638	35.0529971	37043
-81.1322987	36.4893563	37005
-77.9335434	34.9344033	37061
-78.6393077	34.2616017	37047
-76.981616	36.3635174	37091
-83.8309147	35.3483644	37075
-76.1653454	35.8704196	37177
-78.5394885	34.5919375	37017
-82.3039535	35.8893259	37199
-82.1676211	35.2779011	37149
-83.421901	35.1529593	37113
-76.5722906	35.844713	37187
-78.0998993	36.3981051	37185
-80.2543742	35.3104492	37167
-82.9813074	35.5588823	37087
-82.7126299	35.8642073	37115
-82.4797406	35.3364146	37089
-82.5304234	35.6093706	37021
-81.7098875	36.2353679	37189
-82.816666	35.2101025	37175
-79.4005733	36.0439535	37001
-80.8338317	35.2468623	37119
-80.8745203	35.8062493	37097
-81.1772556	35.2933443	37071
-81.2268916	35.4884913	37109
-80.5217214	35.6413551	37159
-80.5527284	35.3883455	37025
-80.1097633	34.9749722	37007
-80.5304264	34.9918204	37179
-83.4656136	35.5688491	37173
-83.1199622	35.2810521	37099
-78.9656233	36.3863503	37145
-79.2514542	35.7049939	37037
-79.120034	36.0625255	37135
-78.8781246	36.0338282	37063
-78.6576338	36.299884	37077
-76.2606906	36.265199	37139
-76.4032445	36.1808969	37143
-78.8287187	35.0501921	37051
-78.8716104	35.3686348	37085
-79.2419635	35.0172328	37093
-81.9195825	35.4027469	37161
-78.0086695	35.3541896	37191
-79.7827539	36.3818062	37157
-79.7886652	36.079065	37081
-79.8062153	35.7099148	37151
-77.3727387	35.5924897	37147
-78.4054343	36.3654806	37181
-81.7061795	35.746182	37023
-81.1774668	35.9209506	37003
-81.5125411	35.966395	37027
-81.2149057	35.6618826	37035
-77.4994691	34.7631087	37133
-75.7675364	35.6062688	37055
-77.6355095	35.2400677	37107
-79.4773366	34.8400226	37165
-79.1008811	34.6392096	37155
-82.0480438	35.6822711	37111
-76.5358602	34.8583428	37031
-80.6864631	36.415416	37171
-78.2277653	34.0387542	37019
-76.6652684	35.1475747	37137
-77.0813197	35.1168292	37049
-77.3561946	35.0322677	37103
-81.1660949	36.2088833	37193
-79.4927248	35.3082717	37125
-78.650624	35.7898464	37183
-78.3673482	35.5134188	37101
-78.2830903	36.0882406	37069
-77.6448423	36.2514375	37083
-77.3983518	36.4217739	37131
-79.7556946	35.004636	37153
-77.6027422	35.9170773	37065
-77.9875546	35.9659447	37127
-79.1721174	35.4763365	37105
-81.5571145	35.3346302	37045
-75.9412242	36.3721739	37053
-76.1624876	36.3423438	37029
-76.7023552	36.4421353	37073
-76.8420144	35.4823128	37013
-77.8642088	34.183442	37129
-77.8881063	34.5125561	37141
-77.9215978	35.7003569	37195
-80.2569608	36.1324661	37067
-80.5425524	35.9293554	37059
-80.2662145	36.3935052	37169
-80.6651641	36.1587653	37197
-80.207107	35.7951312	37057
-101.8333279	47.3071473	38057
-100.2378424	46.2842552	38029
-102.6123216	47.3545572	38025
-98.2322863	47.4563342	38039
-101.6390494	46.3578269	38037
-99.4164868	46.1086815	38051
-99.966497	48.2388827	38069
-102.454238	46.4357038	38041
-97.7222304	48.3769789	38099
-98.4965182	46.1077559	38021
-103.4032148	47.7424751	38053
-101.3530871	47.5304586	38055
-101.061284	46.1106181	38085
-98.9004745	47.7234355	38027
-97.71892	47.4510624	38091
-98.739031	48.2661631	38071
-100.8312572	48.7944116	38009
-98.5260571	46.4641952	38045
-102.5331983	46.0968146	38001
-103.8446117	46.9389237	38033
-99.5045846	46.469278	38047
-103.5093256	48.8147537	38023
-99.8404634	48.7682715	38079
-98.2044278	47.9186666	38063
-99.731198	46.9382725	38043
-102.3648952	48.2100726	38061
-99.3511517	48.071743	38005
-98.4637903	48.7684388	38019
-99.2481583	48.6821831	38095
-98.8728755	47.4714315	38031
-97.1647538	47.4462146	38097
-99.6822135	47.5808513	38103
-102.5200874	48.7864534	38013
-97.6475541	46.4492764	38073
-97.6300507	46.1082035	38081
-103.462462	46.4458338	38087
-98.0701946	46.94255	38003
-97.5454045	48.7668959	38067
-103.5059433	46.1101438	38011
-100.3309858	47.5813594	38083
-100.4695326	46.9788291	38015
-101.2982647	46.7108188	38059
-101.3314198	47.1180789	38065
-103.3640163	47.007044	38007
-102.6620262	46.8170312	38089
-97.2523747	46.9270033	38017
-97.450851	47.9260026	38035
-98.9561228	46.9722235	38093
-100.6332668	48.2338417	38049
-101.5405369	48.2166858	38101
-101.6581522	48.7127815	38075
-96.9379599	46.2652192	38077
-103.5013332	48.3557649	38105
-83.601359	39.1844221	39071
-83.313681	40.8397816	39175
-81.0915651	40.2923175	39067
-83.6640773	40.6604152	39065
-82.0283968	39.0898068	39105
-84.6447584	39.7388104	39135
-83.0529107	39.0713413	39131
-83.4780816	38.8344683	39001
-81.9300012	40.5655971	39075
-84.1298791	41.0245334	39137
-84.5843235	41.5649587	39171
-84.5821249	41.1189483	39125
-84.0688996	41.3315843	39069
-81.0909834	39.7262526	39111
-81.8616967	39.6249458	39115
-81.452493	39.7672317	39121
-82.4859614	39.2520418	39163
-81.5349279	41.1218471	39153
-81.1969618	41.1689703	39133
-82.2701271	40.843273	39005
-80.7455916	41.9066369	39007
-82.0458439	39.3326037	39009
-83.766343	40.3875532	39091
-82.9247827	40.8485244	39033
-81.497875	40.0566648	39059
-81.3656673	40.8141314	39151
-81.090787	40.5798841	39019
-84.6320588	40.5353325	39107
-83.0595362	39.3238969	39141
-84.5657341	39.4397469	39017
-83.8667723	38.9313769	39015
-84.5441868	39.1969272	39061
-84.1494847	39.0520537	39025
-84.1699063	39.4256516	39165
-81.8997641	41.1161743	39103
-81.3926429	41.9241163	39085
-81.7242168	41.7603919	39035
-81.1735054	41.4993217	39055
-82.179722	41.4388045	39093
-82.2379525	39.7431874	39127
-83.0528267	39.648947	39129
-83.3670416	40.2959008	39159
-82.4834473	39.4903424	39073
-83.4008847	39.8966074	39097
-82.626685	39.747694	39045
-83.0090858	39.9698749	39049
-82.7977288	40.5252659	39117
-82.4834352	40.0915047	39089
-83.0074622	40.2789411	39041
-81.9301092	40.2967096	39031
-84.2905915	39.7537357	39113
-84.2284135	40.0533257	39109
-83.8948943	39.6874785	39057
-84.4864334	41.3216789	39039
-83.6660335	41.0004711	39063
-83.1427763	41.3553193	39143
-84.6212484	40.1315415	39037
-82.5171856	38.6038659	39087
-82.614142	39.0134773	39079
-84.1061032	40.7716274	39003
-82.5427812	40.774159	39139
-81.4906359	39.4506764	39167
-83.1688034	40.5880337	39101
-82.4223929	40.4036198	39083
-81.4711052	40.4474903	39157
-82.594641	41.1450798	39077
-82.3017463	38.8170456	39053
-82.998675	38.8148886	39145
-80.778455	40.770073	39029
-82.5258973	41.5540061	39043
-84.2041425	40.3366802	39149
-83.783676	39.9170315	39023
-83.1275469	41.1199923	39147
-84.1242667	41.5972639	39051
-83.4689033	41.6823213	39095
-83.6226821	41.3601834	39173
-83.0126127	41.5454953	39123
-83.7676037	40.1327753	39021
-84.5857751	40.8555203	39161
-84.2240177	40.561309	39011
-83.4618927	39.5552462	39047
-80.7635272	40.3993836	39081
-80.9677268	40.0176819	39013
-83.7956823	39.4302248	39027
-81.8871942	40.8296612	39169
-80.7703956	41.0108798	39099
-80.7703998	41.3063744	39155
-81.9435064	39.9660457	39119
-96.770533	34.0270068	40095
-95.2722625	34.8751365	40077
-94.6950743	34.8973562	40079
-97.7881508	36.7882544	40053
-95.6717865	35.3691078	40091
-96.2511829	35.0529339	40063
-94.6510258	35.8980428	40001
-99.5529675	34.9338533	40055
-97.312723	34.7093497	40049
-96.6028575	35.1583657	40133
-102.5176984	36.7483904	40025
-99.8441936	34.745971	40057
-99.014385	35.9779598	40043
-96.3277619	35.466804	40107
-99.6628052	36.8003504	40059
-97.9345565	35.9494357	40073
-96.0365577	34.3924691	40005
-98.9816168	34.9214893	40075
-95.2356382	36.303804	40097
-95.4080818	34.377899	40127
-97.2363345	36.384901	40103
-94.7660863	34.1170728	40089
-97.0715567	34.4857664	40099
-98.931701	34.3710852	40141
-95.1095765	35.2322953	40061
-98.3234449	36.7297032	40003
-100.4830555	36.7483343	40007
-97.8388896	34.1050824	40067
-96.6542545	34.3134553	40069
-99.7415716	35.7085544	40129
-98.4289343	35.877782	40011
-95.2015531	36.7638896	40035
-98.3810447	35.1679202	40015
-95.6133123	36.7896148	40105
-98.9914359	35.2894967	40149
-98.863649	36.7269843	40151
-95.5542077	34.0276453	40023
-96.288039	34.5828612	40029
-94.808217	36.3933755	40041
-98.5420147	36.3131189	40093
-96.691971	34.7214461	40123
-99.4122347	34.5940059	40065
-97.2879273	34.2518484	40019
-97.2450928	33.9578039	40085
-95.9061545	36.7043803	40147
-97.8556068	34.4813609	40137
-96.2641365	33.9640035	40013
-99.6900574	35.2706008	40009
-97.7884503	36.3780539	40047
-94.7507569	35.5024345	40135
-101.4838549	36.7463169	40139
-98.3734379	34.290676	40033
-98.4766117	34.66263	40031
-95.7481302	34.9255401	40121
-94.8026814	36.8357635	40115
-95.3839106	35.6175506	40101
-97.4094007	35.5546109	40109
-96.8813917	35.7031175	40081
-97.4498032	35.0164359	40087
-97.8868902	35.0210581	40051
-97.9798891	35.5433544	40017
-97.4507644	35.9141514	40083
-97.3230884	35.2063756	40027
-97.1438616	36.8148851	40071
-96.957007	35.2113928	40125
-96.9752553	36.0792254	40119
-94.9967964	35.9043668	40021
-95.9659468	35.6435003	40111
-96.408112	36.6242995	40113
-95.5140982	35.9634785	40145
-96.6966693	36.3137038	40117
-95.9418132	36.1203177	40143
-96.3797931	35.9077324	40037
-95.6013835	36.3777941	40131
-98.9973857	35.6456012	40039
-99.2736609	36.4256189	40153
-99.7501388	36.2242576	40045
-118.9871695	43.0644492	41025
-123.7592988	45.4558895	41057
-120.6785124	45.3992158	41055
-117.1855796	45.593753	41063
-120.319901	45.43059	41021
-117.6919334	44.7034268	41001
-120.3897896	42.7884009	41037
-121.1786315	44.6451505	41031
-120.0268608	44.7364146	41069
-119.0140572	44.4963261	41023
-122.5372084	44.4888982	41043
-123.7050366	46.0245094	41007
-121.2255751	43.9151181	41017
-124.2109292	42.4664387	41015
-124.0941335	43.1859095	41011
-123.4246641	44.4938816	41003
-122.8976901	43.9283286	41039
-123.5716197	42.3869829	41033
-118.7338795	45.5911997	41059
-119.6023111	45.4254956	41049
-121.6559762	45.5117753	41027
-121.6461682	42.6837613	41035
-117.9991488	45.3040809	41061
-122.6756106	42.4116214	41029
-123.9112121	44.6410607	41041
-117.6031915	43.1886252	41045
-123.081079	45.941932	41009
-122.4173625	45.5477107	41051
-123.0976146	45.5535419	41067
-123.3163993	45.2478274	41071
-122.1951274	45.1604934	41005
-120.3715849	44.1630537	41013
-123.154476	43.2863277	41019
-122.5762602	44.9008984	41047
-123.3986729	44.9003752	41053
-121.1650693	45.1645359	41065
-79.012419	41.1380282	42065
-77.8944358	41.7485866	42105
-80.2256552	39.8477067	42059
-75.8009686	41.8196651	42115
-77.2572881	41.7668593	42117
-77.4004377	40.530673	42067
-78.1983225	41.4382909	42023
-79.249705	41.513304	42053
-76.5117166	41.4392848	42113
-79.4203691	41.1981594	42031
-78.4947466	39.9986336	42009
-75.2924932	41.6466021	42127
-78.1226171	39.9107505	42057
-75.7050387	40.9183666	42025
-75.3074468	40.7527913	42095
-75.5906269	40.6142409	42077
-78.3095974	40.4986536	42013
-76.6652253	41.0292837	42093
-76.4042599	41.0455174	42037
-78.5724631	41.8145902	42083
-77.7245208	39.9267722	42055
-78.473749	41.0002489	42033
-75.3290651	41.0562401	42089
-80.0963858	42.1179519	42049
-77.2177296	39.8694707	42001
-77.2663284	40.3977795	42099
-77.2634419	40.1648047	42041
-76.7926343	40.4125646	42043
-77.9685953	40.4223108	42061
-79.0875451	40.6514319	42063
-78.7104783	40.5102221	42021
-76.250198	40.0419921	42071
-76.4648185	40.3714482	42075
-77.0554751	40.962179	42119
-77.6518322	40.6016153	42087
-77.69636	41.262624	42035
-80.107795	41.687876	42039
-80.3344455	40.9927352	42073
-75.0315143	41.3259485	42103
-79.7658126	41.4007143	42121
-75.1333459	40.0093755	42101
-75.749752	39.9740287	42029
-75.10706	40.3368872	42017
-75.3702011	40.2099992	42091
-75.3988178	39.9166853	42045
-79.4666879	40.3110682	42129
-80.2521319	40.2000054	42125
-79.4641285	40.8123805	42005
-79.9189776	40.9138467	42019
-80.3507209	40.6841401	42007
-79.6401194	39.9189072	42051
-79.9804515	40.4697574	42003
-76.2177878	40.703682	42107
-75.9268598	40.4139565	42011
-78.6539366	41.4273317	42047
-76.5021231	41.7915044	42015
-76.008731	41.5251726	42131
-75.6096661	41.4402841	42069
-75.9760345	41.1727868	42079
-77.0729288	40.7554068	42109
-79.0284859	39.9812968	42111
-77.8478769	40.9091275	42027
-76.709877	40.8515244	42097
-79.2981823	41.8342984	42123
-77.0552624	41.3438824	42081
-76.7288887	39.9217514	42133
-80.2527863	41.3000142	42085
-71.5786246	41.8697678	44007
-71.2836888	41.5025036	44005
-71.6202819	41.396792	44009
-71.5809243	41.6742448	44003
-71.2866369	41.7068313	44001
-81.1438217	32.7783341	45049
-79.3540014	34.0836195	45067
-81.4342278	33.2605516	45011
-79.3749638	34.3901723	45033
-82.3161961	33.8975992	45065
-80.2512086	34.1586401	45061
-81.0531607	33.2030211	45009
-81.3632651	32.9797573	45005
-80.6552438	32.8350184	45029
-79.716474	33.6264617	45089
-82.4540577	34.229041	45001
-80.1592269	34.6370178	45025
-81.9682452	33.7764976	45037
-81.632983	33.5500134	45003
-79.6794351	34.60167	45069
-79.9536554	33.2077	45015
-79.94248	32.8004582	45019
-80.4046966	33.0821859	45035
-81.1612488	34.6893424	45023
-80.7036885	34.6868182	45057
-81.1831873	34.9701875	45091
-81.1270007	34.3956685	45039
-80.8980371	34.0290952	45079
-81.7279033	34.0052784	45081
-81.2662769	33.8994765	45063
-80.5908847	34.3383561	45055
-80.7803468	33.6747804	45017
-79.9621155	34.3321854	45031
-79.7102329	34.0285346	45041
-81.6076469	35.0497962	45021
-79.2963325	33.4175309	45043
-82.6386029	34.521235	45007
-82.0054976	34.4836761	45059
-82.3720772	34.8926452	45045
-82.7233774	34.8853677	45077
-82.1278759	34.1557959	45047
-80.6894218	32.358112	45013
-81.021627	32.43059	45053
-78.9766749	33.9092694	45051
-81.5996761	34.2898805	45071
-80.8029131	33.436135	45075
-83.0615395	34.7487656	45073
-81.9910522	34.9332708	45083
-80.3823757	33.9161395	45085
-80.2178886	33.6646821	45027
-81.6158961	34.6903965	45087
-101.1796647	45.6856708	46031
-98.5951429	43.2061853	46023
-99.8762186	43.3497292	46123
-96.6902393	44.7562899	46039
-99.2039983	44.0443062	46017
-99.4727359	44.5371743	46069
-103.5014361	44.8962264	46019
-103.5126087	43.2216189	46047
-102.4679947	45.4833865	46105
-98.3396152	44.9237717	46115
-97.5814295	45.355161	46037
-99.0045751	44.5467133	46059
-98.0917093	44.0189419	46111
-101.6608274	44.9897638	46137
-99.9620034	45.0527131	46107
-102.5616865	43.3335802	46102
-97.1232229	44.0284497	46079
-99.2065908	43.1751423	46053
-99.092909	43.7298732	46015
-97.7493828	43.3367101	46067
-101.677181	43.1869121	46007
-98.3584331	43.3915064	46043
-96.9475513	45.6233973	46109
-99.2114212	45.7842491	46089
-97.499313	44.3629687	46077
-103.4738711	45.5966105	46063
-97.5808695	45.7370443	46091
-97.608122	44.0215411	46097
-96.6760536	44.0124293	46101
-100.0278563	45.4276046	46129
-100.0021074	45.7855747	46021
-103.46225	43.6849428	46033
-100.7609555	43.5846896	46095
-97.7249124	44.8552107	46025
-100.6861382	43.951991	46075
-99.1535637	45.0654764	46049
-101.5954424	44.282881	46055
-100.7076636	43.2087936	46121
-99.8419253	43.8948122	46085
-100.1313985	44.722325	46119
-96.7722606	45.1726366	46051
-98.5775872	43.7247191	46003
-97.8841987	42.985799	46009
-101.6263229	43.677506	46071
-100.8379534	45.148049	46041
-98.3521746	45.5892542	46013
-99.205362	45.4116802	46045
-96.7977971	44.3766745	46011
-98.6231702	44.0634099	46073
-98.2794224	44.4182649	46005
-97.7968454	43.6806116	46061
-98.1558683	43.6804393	46035
-100.7491628	44.4155468	46117
-99.9756842	44.3844521	46065
-102.7141689	44.6052822	46093
-102.8238015	44.0023492	46103
-96.6508287	42.8311064	46127
-97.3580479	43.6804155	46087
-97.1501851	43.3086698	46125
-96.7222862	43.2794204	46083
-96.7957261	43.6674723	46099
-103.8049474	44.348767	46081
-96.980468	42.9161495	46027
-97.1988375	44.9662852	46029
-97.178598	44.6806187	46057
-97.3883614	43.006603	46135
-88.4523791	35.9657478	47017
-87.8693256	35.6637521	47135
-87.8198433	35.2428473	47181
-85.4557854	35.9270486	47185
-83.2274928	36.5213528	47067
-88.3876742	35.6539945	47077
-88.5637397	35.1753751	47109
-87.035319	35.2027228	47055
-84.50352	36.435234	47151
-87.4671159	35.8023275	47081
-88.0712321	36.0709478	47005
-85.4584092	35.6992335	47175
-88.988697	35.2187853	47069
-85.5457173	36.5457493	47027
-87.7904526	36.0408218	47085
-85.7103793	35.3933855	47061
-87.7055983	36.2857824	47083
-87.4969827	35.5232441	47101
-86.5934033	35.1427838	47103
-85.8335959	35.9822191	47041
-85.2059104	35.5935612	47007
-84.8161015	35.512203	47121
-85.075741	36.5593638	47137
-88.1856958	35.2018926	47071
-88.1102917	35.6031362	47039
-81.8612467	36.4532029	47091
-84.9377641	36.3698921	47049
-89.4855365	36.3339054	47095
-89.6277318	35.7629507	47097
-83.6606975	36.501572	47025
-84.249705	35.4478181	47123
-84.6199488	35.4244722	47107
-89.2826913	35.5866782	47075
-85.410082	35.3723358	47153
-85.618399	35.1334215	47115
-85.2018432	35.163472	47065
-87.8118894	36.4584642	47161
-87.3808865	36.5003535	47125
-84.5411124	35.1094371	47139
-84.8594137	35.1539144	47011
-85.6741278	36.3542499	47087
-85.4961801	36.1409404	47141
-85.2830756	36.3448504	47133
-84.9947614	35.9523984	47035
-84.9495484	35.60059	47143
-89.3983058	36.054196	47045
-82.8475235	36.1794867	47059
-89.1324936	35.8187949	47033
-88.9338117	35.9916316	47053
-88.6113533	35.420253	47023
-88.8334238	35.6060563	47113
-82.4950374	36.2956649	47179
-82.4182181	36.1001287	47171
-82.1265932	36.2847441	47019
-82.931485	36.4520892	47073
-82.3013363	36.5096806	47163
-83.9377209	35.9927265	47093
-84.6392616	36.138697	47129
-84.1592495	36.4015922	47013
-83.8360878	36.2841401	47173
-84.1954177	36.1167307	47001
-84.3140848	35.7350854	47105
-84.5239292	35.8472504	47145
-83.9229731	35.6881849	47009
-87.396546	35.2204764	47099
-86.765865	35.4683433	47117
-88.7211938	36.3035963	47183
-85.7773428	35.6782498	47177
-89.895397	35.1837942	47157
-89.4138027	35.1969933	47047
-89.766803	35.5002588	47167
-83.4411426	36.0483379	47089
-83.5095458	36.2775091	47057
-83.2660711	36.2183967	47063
-87.1008077	36.2551687	47021
-86.7847898	36.1691287	47037
-85.9419149	36.2566451	47159
-86.0009596	36.5377572	47111
-87.0777632	35.6156963	47119
-86.4597975	36.473443	47165
-86.1566909	36.3930297	47169
-86.4172127	35.8433688	47149
-86.8980679	35.8948075	47187
-86.8693538	36.5275092	47147
-86.0624044	35.808394	47015
-87.3641546	36.1455325	47043
-86.2912423	36.149527	47189
-83.1192242	35.916198	47029
-88.3002878	36.325295	47079
-83.5184957	35.7953454	47155
-86.4582939	35.5136604	47003
-86.358684	35.2888885	47127
-86.0782018	35.4887654	47031
-86.0992032	35.1559259	47051
-89.1500236	36.3579958	47131
-102.0415461	31.3538163	48461
-98.1711758	33.2321615	48237
-96.1449568	31.7017487	48161
-93.73925	30.7867182	48351
-98.8365596	32.3246454	48133
-102.5940204	36.2863696	48111
-99.8168285	33.9633063	48155
-94.3568533	32.7981821	48315
-95.8369057	32.5587866	48467
-100.2081658	34.5246235	48075
-98.5496169	31.9516447	48093
-99.205796	33.1706954	48447
-99.812549	29.8300967	48385
-100.7697199	33.1847797	48263
-99.3470045	32.7438198	48417
-94.8373376	30.7845525	48373
-94.7312653	33.116466	48343
-95.1516869	31.096675	48455
-96.9236334	29.3825778	48285
-100.2764416	34.0919063	48101
-99.7303563	33.6118897	48275
-97.7692171	32.2180714	48425
-101.7438647	34.5263193	48437
-102.830449	33.6084401	48079
-103.0549246	31.8328615	48495
-100.9243924	32.3041168	48335
-95.6733504	33.3859329	48119
-100.2721351	34.9633577	48087
-98.1269608	28.3515349	48297
-95.4215995	31.3230362	48225
-96.5089347	29.596296	48089
-101.3569304	36.2728469	48195
-98.7475708	27.0532308	48247
-98.2011868	30.7896305	48053
-100.8158457	34.9550364	48129
-99.8588613	30.8852677	48327
-100.2531067	35.3925926	48483
-99.7598304	28.8646523	48507
-100.2538069	33.1795797	48433
-100.2453455	33.6142675	48269
-93.8519129	31.3432997	48403
-97.7250138	33.6783558	48337
-97.4919205	29.4619121	48177
-94.1631796	31.3824492	48405
-100.7931519	34.0578993	48345
-99.3598557	31.2054766	48307
-98.1117562	31.7073424	48193
-97.6376407	31.9008189	48035
-101.4042113	30.7175316	48105
-94.1425794	31.7901394	48419
-99.9827145	31.8451193	48399
-100.2792102	35.8159564	48211
-100.2726827	36.2801998	48295
-96.593623	31.5475427	48293
-99.2373018	30.7039159	48319
-96.9843946	30.791242	48331
-102.3480182	34.0688615	48279
-101.439199	32.7385899	48033
-97.130668	31.9826809	48217
-101.3032742	34.0737305	48153
-98.399217	30.2664556	48031
-102.4877739	31.4227965	48103
-100.8158636	36.2787442	48357
-98.2152756	27.0349936	48047
-97.3616543	29.0823457	48123
-102.6100473	35.8402444	48205
-95.1631363	30.5743884	48407
-102.7848533	34.5321628	48369
-103.1051127	31.5130687	48475
-98.8393443	32.7380521	48429
-97.1624723	28.3221157	48391
-98.6783895	33.1587778	48503
-98.6846901	30.7075845	48299
-99.2081888	33.6188024	48023
-100.7638926	34.6556227	48191
-98.5788529	28.384922	48311
-95.0484293	33.6196255	48387
-95.2190662	33.1758457	48159
-99.8636485	31.3188831	48095
-102.2587856	34.5336207	48069
-98.5946231	31.4948885	48333
-101.205893	34.5251725	48045
-99.7456973	34.2899036	48197
-99.7658713	28.4235871	48127
-102.8303446	34.0675209	48017
-104.2616192	30.0058912	48377
-97.8522048	28.9089957	48255
-95.988082	30.5432314	48185
-94.3756561	30.7692953	48457
-102.8322422	33.1623979	48501
-100.4177003	29.3470865	48271
-94.3575786	33.0836979	48067
-99.3466223	31.9142052	48083
-102.0725126	30.2323427	48443
-100.6352305	31.8771104	48081
-99.0967743	28.3510976	48283
-99.7463959	30.479472	48267
-100.4031198	32.7404728	48151
-101.3011341	33.183792	48169
-96.9768226	30.3214983	48287
-95.9303719	30.9668782	48313
-100.5272161	30.8962331	48413
-100.3073732	29.9858774	48137
-100.5133594	30.5221852	48435
-96.58908	28.9598019	48239
-101.8992648	36.2785929	48421
-95.3821664	32.7835881	48499
-95.79544	32.8705795	48379
-104.191873	30.6253574	48243
-102.339284	33.171229	48445
-101.5214944	31.8680062	48173
-104.5269447	31.4459085	48109
-103.2524579	29.8089965	48043
-95.9956219	31.3004926	48289
-102.6315614	32.7439423	48165
-98.8192922	31.1551375	48411
-100.7876173	33.6153628	48125
-96.9212309	29.8778861	48149
-102.7181533	30.773298	48371
-94.3051563	32.1639784	48365
-101.5143954	31.3751911	48383
-94.0222943	30.7529323	48241
-99.730774	33.1759638	48207
-99.8744297	32.7437089	48253
-99.8904299	32.2971255	48441
-99.372249	32.2931499	48059
-98.0908141	27.7335157	48249
-98.4973933	27.6811232	48131
-101.3553558	35.4054961	48065
-101.893804	35.3986751	48375
-102.5976203	35.4019206	48359
-101.3566363	34.964179	48011
-101.8955472	34.962529	48381
-102.6402058	32.3122581	48003
-95.8534183	32.2116334	48213
-97.6050646	30.6490817	48491
-97.3106392	30.1007718	48021
-97.6912697	30.2395128	48453
-97.628141	29.8323986	48055
-98.0292673	30.0612247	48209
-96.0015316	28.7747601	48321
-94.1493306	29.8539997	48245
-93.8940999	30.1223229	48361
-94.3931782	30.3296483	48199
-97.7425858	28.4160769	48025
-101.4387208	32.3034298	48227
-96.1049882	33.5911611	48147
-101.3627461	35.837047	48233
-96.4102717	30.2150752	48477
-97.4789584	26.1029227	48061
-98.998456	31.7641372	48049
-96.3023935	30.6567132	48041
-96.6220912	30.4934867	48051
-96.5149408	31.025481	48395
-97.5162143	27.7400315	48355
-97.5171566	28.0117944	48409
-96.4769087	32.048448	48349
-97.8059049	32.7770964	48367
-97.3649587	32.3798207	48251
-96.0842298	33.1233077	48231
-96.5794437	33.1945322	48085
-97.6539968	33.2190947	48497
-96.4044017	32.8986766	48397
-96.7784238	32.7669866	48113
-96.7969403	32.3468783	48139
-96.2883773	32.5989442	48257
-97.2912241	32.7721191	48439
-97.1211403	33.205132	48121
-101.1433237	29.8752853	48465
-101.8905018	35.8356759	48341
-100.316678	28.7297873	48323
-96.2296745	29.2784805	48481
-106.2414235	31.7664803	48141
-105.3775489	31.4508678	48229
-98.9418512	30.3250913	48171
-97.2103433	33.6391964	48097
-97.8316766	32.430149	48221
-102.6075637	34.9407663	48117
-94.8884558	29.233453	48167
-95.434647	29.1678175	48039
-94.6694454	29.6963741	48071
-95.50295	30.2988009	48339
-94.8440607	30.1585081	48291
-95.3930371	29.857273	48201
-95.9821493	30.0135901	48473
-95.7710149	29.5266017	48157
-96.2701696	29.8919013	48015
-95.5698246	30.7431631	48471
-95.1563425	31.8438807	48073
-99.3533388	30.059953	48265
-97.4812697	31.0427479	48027
-97.7980223	31.3911774	48099
-98.2408885	31.1967308	48281
-97.5911434	26.8902129	48261
-97.6606203	27.4387348	48273
-101.9487714	32.742528	48115
-99.3407518	27.7607987	48479
-102.3433978	33.605932	48219
-94.8162759	32.4863971	48183
-94.7563823	32.1094232	48401
-94.9411837	32.7353495	48459
-94.3744344	32.5479914	48203
-101.8184933	33.1784124	48305
-101.8199438	33.6114688	48303
-101.2987099	33.609144	48107
-94.6111337	31.2518963	48005
-98.18099	26.3963839	48215
-102.0024538	31.8142693	48329
-101.9618363	32.3098298	48317
-98.3179673	32.7522042	48363
-94.9667825	33.214599	48449
-94.979085	32.9745813	48063
-94.6202497	31.6205598	48347
-102.5425068	31.8653008	48135
-95.6617267	31.8412614	48001
-100.8123736	35.4025424	48179
-100.8366824	35.838596	48393
-95.5703477	33.6672628	48277
-99.1087876	28.8693343	48163
-103.712706	31.308366	48389
-103.5612293	31.8449361	48301
-101.8228879	34.0684364	48189
-96.5795739	28.4417191	48057
-97.5947313	26.4818607	48489
-98.7402346	26.5309027	48427
-96.9675012	28.1226209	48007
-100.4637879	31.3988233	48451
-100.9813037	31.3034241	48235
-101.0549114	31.8357735	48431
-98.535381	28.8914775	48013
-97.946771	29.583532	48187
-98.5201465	29.4486708	48029
-98.260544	29.8054913	48091
-99.1110845	29.3536614	48325
-98.7092693	29.9435246	48259
-98.0867336	29.173883	48493
-99.2482849	29.756389	48019
-96.675693	33.624524	48181
-100.9133465	32.7443531	48415
-98.2205073	32.2366609	48143
-95.5654337	33.1489673	48223
-100.4181078	32.3123379	48353
-94.422393	33.4460648	48037
-95.2700409	32.3770156	48423
-99.768427	29.3503081	48463
-99.2424397	34.0849199	48487
-97.4304145	28.6607	48175
-96.9711977	28.7963699	48469
-96.9341275	31.2519298	48145
-97.2015108	31.5495958	48309
-98.7080098	33.9882125	48485
-98.2129174	33.7859042	48077
-98.6872669	33.6163054	48009
-99.1826027	26.9969806	48505
-109.5734502	38.9743261	49019
-110.4295838	40.2893927	49013
-109.5057855	40.890099	49009
-110.7210999	39.0090246	49015
-110.990877	38.2598402	49055
-109.7915742	37.6026332	49037
-111.5728826	39.3825309	49039
-112.1293755	38.3358805	49031
-111.815329	37.2750892	49025
-113.2389481	38.357535	49001
-111.2402269	41.6275976	49033
-111.4509076	37.8316645	49017
-113.133092	38.9567436	49027
-111.8119299	38.7468245	49041
-113.3067405	37.9093044	49021
-111.1615683	40.3348838	49051
-110.9684862	40.8720603	49043
-111.7453987	41.7341174	49005
-112.2019434	41.0375594	49011
-111.5778846	41.0910273	49029
-111.876883	41.2703252	49057
-113.126226	41.276061	49003
-110.5884845	39.673284	49007
-112.790471	39.71412	49023
-111.6685082	40.1204248	49049
-113.4878003	37.2625308	49053
-111.9242397	40.6678828	49035
-113.1239786	40.4677525	49045
-109.5177482	40.1258872	49047
-72.721955	42.9953348	50025
-72.1121676	44.4687907	50005
-73.1415807	44.0312479	50001
-72.25163	44.8284417	50019
-72.6389224	44.6037037	50015
-71.7327362	44.7240209	50009
-72.6095138	44.2749884	50023
-73.1114603	43.0353254	50003
-73.300759	44.8017867	50013
-73.0694099	44.4633289	50007
-72.9094023	44.8589643	50011
-72.3696871	44.0033924	50017
-72.5988211	43.5726846	50027
-73.0382023	43.5808577	50021
-79.4477537	37.8145174	51163
-75.9240177	37.3027754	51131
-76.9418713	37.9394802	51057
-76.8801717	37.1197611	51181
-78.3689592	36.6872563	51117
-76.5280819	37.6069753	51119
-80.3502662	36.9314331	51063
-78.0538655	37.1411668	51135
-80.7278307	36.7319632	51035
-80.286413	36.6671385	51141
-79.7312032	38.0683679	51017
-77.3523482	38.0303193	51033
-81.215324	36.6522288	51077
-78.4918718	38.6232085	51139
-81.5397861	36.8423183	51173
-78.4329574	37.2248813	51147
-78.5291687	37.573928	51029
-79.3581337	37.7293448	51530
-76.3796872	37.8569736	51133
-77.5359753	36.696182	51595
-78.2528364	37.5201891	51049
-80.9143083	36.6656397	51640
-80.008669	37.7879048	51005
-78.0096224	38.250193	51137
-81.0830007	36.8998674	51197
-78.9396142	36.766461	51083
-79.4443196	37.7823316	51678
-79.9854337	37.7810603	51580
-77.959795	37.9727041	51109
-83.1301117	36.7017206	51105
-78.5739867	38.856204	51171
-75.7578073	37.7659435	51001
-82.0959342	36.9334198	51167
-82.0381508	37.2681198	51027
-77.8614832	36.7642043	51025
-78.2405281	36.9455547	51111
-76.4126628	37.7048433	51103
-76.7305609	37.9428936	51159
-77.5602774	36.6803363	51081
-82.3492199	37.1367011	51051
-76.8039326	38.109311	51193
-78.6585682	37.0090421	51037
-79.5644718	38.3662431	51091
-77.1626355	38.2771799	51099
-82.6215601	36.9745607	51195
-82.625996	36.9315489	51720
-80.698321	37.3180719	51071
-80.7134439	37.0633853	51155
-80.3877913	37.1755344	51121
-80.5591473	37.1201194	51750
-81.5629237	37.1253949	51185
-81.1258532	37.1306124	51021
-78.4701629	38.2979805	51079
-78.4853806	38.0376579	51540
-78.2834938	37.830584	51065
-78.8834397	37.7890795	51125
-78.5535056	38.0241841	51003
-79.3985019	36.8217206	51143
-79.4080707	36.5833337	51590
-78.8733028	38.4362547	51660
-78.8853213	38.5075848	51165
-82.1575641	36.6169541	51520
-81.9503218	36.7478138	51191
-82.6136238	36.7127756	51169
-78.8109404	37.3707253	51011
-79.0954282	37.2101515	51031
-79.1546672	37.6293036	51009
-79.5272234	37.3122568	51019
-79.1954582	37.3990161	51680
-79.8636475	36.6835269	51690
-79.7592313	36.7814785	51089
-76.9055814	37.7177719	51097
-77.2209931	37.1873255	51149
-77.6354922	37.0734984	51053
-77.2597319	36.9266454	51183
-77.0910539	37.7082604	51101
-77.9774619	37.3319271	51007
-77.4760085	37.531399	51760
-77.4913168	37.7602149	51085
-77.3968043	37.2616846	51570
-77.5858474	37.3784338	51041
-77.6519216	37.6312689	51087
-77.9176263	37.7188141	51075
-77.3923681	37.2047302	51730
-77.9128553	37.5494041	51145
-77.05417	37.3610537	51036
-76.9993262	37.510158	51127
-77.2989443	37.2910098	51670
-79.9439958	37.3435877	51161
-79.8827149	36.9911862	51067
-80.2310507	37.4736031	51045
-80.0552407	37.2853329	51775
-79.9581739	37.278458	51770
-79.7975457	37.5654822	51023
-79.1475571	38.1719106	51015
-78.9014197	38.0671571	51820
-79.0618761	38.1579778	51790
-76.2446413	36.9230149	51710
-76.0252078	36.7799845	51810
-76.7778878	37.3248367	51095
-76.2972931	37.0479606	51650
-76.5616481	37.2190813	51199
-76.2688078	37.4253479	51115
-76.5219802	37.0761357	51700
-76.5235051	37.4035413	51073
-76.9413956	36.6840142	51620
-76.6347808	36.6971573	51800
-76.7081925	37.269481	51830
-76.3035337	37.1283599	51735
-76.7075688	36.9014184	51093
-77.1038135	36.7200678	51175
-76.3569725	36.8593388	51740
-76.3017884	36.6793761	51550
-77.4866583	38.2992718	51630
-78.2769614	38.4120586	51113
-78.1688241	38.6845215	51157
-77.6572264	38.1824314	51177
-77.1756027	38.884722	51610
-77.2732524	38.8295203	51059
-77.9907479	39.1153068	51043
-77.8215005	38.7440956	51061
-77.6388976	39.0812	51107
-78.207594	38.9082214	51187
-77.0836695	38.8192511	51510
-77.4795791	38.7011187	51153
-77.4513342	38.4132608	51179
-77.1007034	38.8783374	51013
-77.4826328	38.7468077	51683
-77.9564758	38.4859303	51047
-77.448767	38.7689451	51685
-77.2990252	38.8531833	51600
-78.1763562	39.1738688	51840
-78.2638291	39.2036601	51069
-117.5367111	46.4294779	53023
-123.7824193	46.5565866	53049
-123.4244583	46.2946377	53069
-120.7793049	45.8704463	53039
-118.5335894	48.4732563	53019
-119.7422347	48.5484533	53047
-117.9116345	46.2928505	53013
-117.2321913	48.5438247	53051
-118.4176925	47.5827433	53043
-123.5270572	47.8057075	53031
-123.1037693	48.5071904	53055
-123.8267349	47.1137324	53027
-121.8364325	48.8426531	53073
-122.6496339	47.6395948	53035
-122.3774443	46.5800714	53041
-120.6767092	47.1244411	53037
-118.9069436	46.5345799	53021
-119.5166594	46.2281252	53005
-117.2277813	46.1818612	53003
-122.6784596	46.1967854	53015
-119.467788	47.2136328	53025
-121.8157703	48.4932917	53057
-122.6706492	48.1585538	53029
-122.8301524	46.9358216	53067
-118.5128614	47.0112378	53001
-123.8898599	48.1109034	53009
-122.4859533	45.7717295	53011
-121.9532319	46.0247853	53059
-117.5353898	46.9059441	53075
-121.936784	48.070464	53061
-122.1532402	47.0514128	53053
-121.833996	47.4905993	53033
-123.1738498	47.3541257	53045
-117.8544544	48.388727	53065
-117.4033714	47.6203752	53063
-118.4803697	46.2546057	53071
-120.619041	47.8609739	53007
-119.6946219	47.7417625	53017
-120.7401446	46.4565581	53077
-82.1589891	37.7211608	54059
-80.2316057	38.9025302	54097
-80.7975148	38.2914318	54067
-80.6353994	39.59818	54103
-80.4505897	37.9244177	54025
-80.0101207	38.332606	54075
-80.7316597	38.6993304	54007
-79.9969466	39.1397248	54001
-78.8417292	39.0113612	54031
-81.1154775	38.8441591	54013
-80.856325	37.6559986	54089
-81.3544939	38.7429497	54087
-81.6581833	37.3827274	54047
-79.5599678	39.1111751	54093
-79.3406175	38.6744501	54071
-80.8772193	39.465634	54095
-80.4954773	38.9888773	54041
-81.1611724	39.3681331	54073
-80.8494132	38.9158671	54021
-81.0663167	39.1771118	54085
-80.5503295	37.5540622	54063
-81.5490317	37.6036601	54109
-80.4490515	38.483459	54101
-79.195064	39.1059882	54023
-81.0860508	38.0309328	54019
-81.2646719	37.7624694	54081
-81.106456	37.4034477	54055
-81.5235156	38.3280675	54039
-81.6777168	38.8342339	54035
-81.7135382	38.0228143	54005
-82.0776231	38.1717696	54043
-81.0818663	38.4598259	54015
-80.3864982	39.279182	54033
-80.7012316	39.2634805	54017
-80.0465539	39.3324778	54091
-78.9566899	39.4047806	54057
-79.8677881	38.7810953	54083
-80.2434018	39.5058387	54049
-78.0377535	39.4479382	54003
-78.2573449	39.5550021	54065
-82.2433966	38.4195778	54011
-81.906109	38.5105128	54079
-82.4226659	38.1436416	54099
-79.6688649	39.4690296	54077
-80.0590736	39.6336448	54061
-81.940853	37.8305905	54045
-81.516234	39.2116023	54107
-81.3829749	39.0200337	54105
-82.0290067	38.770914	54053
-77.86322	39.3073985	54037
-80.578691	40.2726454	54009
-80.5701643	40.5169584	54029
-80.6207278	40.0989316	54069
-80.6717944	39.8544259	54051
-78.6119886	39.3121395	54027
-89.0677254	45.2623814	55067
-91.8348898	44.6274362	55091
-89.7672276	43.9737568	55001
-89.5345333	45.7161762	55085
-89.501254	46.049848	55125
-90.2612985	46.32655	55051
-91.761294	44.3856333	55011
-89.2397862	44.1128231	55137
-90.9512302	43.24991	55023
-89.4090953	43.8260529	55077
-90.1302916	42.6555782	55065
-90.4356927	43.3761994	55103
-92.447066	45.4620407	55095
-87.0486828	45.0934165	55029
-91.1471302	45.8649127	55113
-91.3588668	44.3030501	55121
-90.5048529	45.2116558	55119
-90.6199687	43.9451751	55081
-90.1139837	43.9328362	55057
-90.3596497	45.6790725	55099
-90.8219835	43.5993661	55123
-88.9703796	43.7802469	55047
-92.3757305	45.8668974	55013
-91.8528921	45.4371917	55005
-91.1367448	45.472734	55107
-90.6796907	46.5444245	55003
-91.7964217	45.8924885	55129
-90.6099532	44.7393462	55019
-88.7733265	45.6668806	55041
-88.9670053	44.4780043	55135
-91.1772815	46.6341992	55007
-90.7995104	44.3245897	55053
-88.4649883	44.4182258	55087
-88.2121322	44.0784104	55015
-89.9433184	43.428001	55111
-88.7019394	43.4296276	55027
-87.4250046	42.5797034	55059
-91.8924773	46.4632185	55031
-91.2835054	45.0690918	55017
-91.2864137	44.7263547	55035
-88.493284	43.7547219	55039
-87.9961303	44.4740244	55009
-88.2065162	44.9965754	55083
-87.1633039	44.5010324	55061
-88.4069879	45.8718277	55037
-89.0752844	42.6698802	55105
-91.1117584	43.9082222	55063
-90.1336915	43.0010208	55049
-89.6050743	42.6755218	55045
-89.3304721	43.4718818	55021
-89.4178523	43.0674684	55025
-87.5773525	44.156137	55071
-87.991198	45.3468989	55075
-91.8976451	44.9477513	55033
-87.4993036	43.3607524	55089
-87.4815541	43.0176601	55079
-88.2329166	43.391156	55131
-88.3042404	43.0183677	55133
-92.4472842	45.0289589	55109
-92.4262793	44.7253365	55093
-88.6681488	44.0857068	55139
-90.6942288	42.8700275	55043
-87.4208775	42.7541215	55101
-88.7558134	44.7896407	55115
-88.6692512	44.9913041	55078
-87.7315164	43.741232	55117
-89.4980699	44.4762457	55097
-88.7739847	43.0138045	55055
-89.757823	44.8980363	55073
-89.7423088	45.3384167	55069
-88.5417306	42.6681095	55127
-90.0388252	44.4614126	55141
-109.5935975	44.4923865	56029
-108.4350765	43.7202092	56017
-105.5247521	42.9846234	56009
-107.669052	43.8788305	56043
-106.5885406	44.0440477	56019
-106.9331526	41.7035904	56007
-104.3535403	42.0894553	56015
-104.9539626	42.1315927	56031
-104.4683727	43.062159	56027
-107.9948477	44.5251167	56003
-109.9161701	42.7679284	56035
-110.6829614	42.2299932	56023
-106.7682192	42.9776447	56025
-104.660395	41.2928302	56021
-110.5589468	41.2847255	56041
-104.5672975	44.5892657	56011
-105.5170141	44.1919995	56005
-104.5700202	43.8462133	56045
-110.426087	44.048662	56039
-105.7218826	41.6655141	56001
-108.6089349	43.054831	56013
-108.8756774	41.6603282	56037
-106.8812114	44.7813692	56033
-170.6257058	-14.2681144	60010
-170.7842335	-14.335468	60050
-169.5073268	-14.2196936	60020
-168.1512918	-14.5365298	60030
-171.0690136	-11.0544359	60040
144.7719021	13.4417451	66010
145.2129037	14.1524934	69100
145.601021	14.9367835	69120
145.7771923	15.1980954	69110
146.001994	16.028784	69085
-65.432474	18.125418	72147
-65.30772	18.3265989	72049
-66.9355468	18.1739559	72093
-67.0795736	18.3776374	72099
-66.9706926	18.3314222	72131
-67.1312824	18.2869054	72011
-67.1437616	18.4801911	72005
-67.2773016	18.3405618	72117
-66.7029886	18.270865	72141
-67.0141381	18.4838703	72071
-67.1837074	18.3756809	72003
-66.8696454	18.2771024	72081
-66.9276025	18.466357	72115
-66.7982102	18.4411409	72065
-66.863134	18.4454691	72027
-66.6749944	18.4340042	72013
-66.3575862	18.1037997	72043
-66.2622515	17.9714853	72123
-66.0419453	17.9720599	72015
-66.1374675	17.9739287	72057
-65.9866425	18.0003111	72109
-66.58687	18.2111522	72073
-66.9775799	18.2275938	72083
-67.8933331	18.1641255	72097
-67.1161994	18.1346949	72067
-66.4722435	18.1307185	72149
-66.4904965	17.9979735	72075
-66.6066625	18.0017167	72113
-66.7581652	18.1816112	72001
-67.0372633	18.1077999	72125
-66.9476086	18.0844832	72121
-67.2098839	18.0088725	72023
-67.0401109	17.9785111	72079
-66.2446686	18.3645557	72135
-66.2639743	18.1306472	72009
-65.588454	18.3863776	72053
-66.5582299	18.4699891	72017
-65.9085417	18.2241334	72077
-66.3978832	18.4551279	72145
-66.4205568	18.3190261	72101
-66.1931933	18.45691	72137
-66.3092822	18.2000184	72019
-65.90328	18.4750387	72087
-66.1140555	18.3443567	72061
-66.4368987	18.2187334	72107
-65.871189	18.1871483	72085
-66.1516668	18.103624	72035
-66.0690807	18.4222485	72127
-65.9811768	18.2725815	72063
-66.0509643	18.2111085	72025
-65.7862286	18.1354025	72069
-66.148819	18.4446135	72033
-66.1616217	18.174404	72041
-65.9687781	18.3967757	72031
-66.5155884	18.2959127	72039
-66.2194806	18.2250315	72045
-65.8851394	18.329872	72029
-66.4928837	18.444646	72091
-65.7984342	18.3763694	72119
-65.9761674	18.1471074	72129
-66.3261795	18.3039098	72047
-65.8964028	17.9997862	72095
-65.5308947	18.2737491	72037
-66.3366734	18.4361633	72143
-65.7099036	18.3679961	72089
-66.2534399	18.2899204	72105
-66.1284959	18.2565236	72007
-65.8598713	18.0598584	72151
-66.0037874	18.3353871	72139
-66.1677473	18.3507217	72021
-65.735749	18.2110697	72103
-66.5600846	18.3739534	72054
-66.2619727	18.4743757	72051
-66.3875885	17.9529217	72133
-66.7281249	18.0266179	72111
-66.9229889	17.9480521	72055
-66.8579009	18.0856688	72153
-66.7982933	18.0053378	72059
-64.9712508	18.326748	78030
-64.735261	18.3304347	78020
-64.7467405	17.7353214	78010
\.


--
-- Data for Name: county_population; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.county_population (county_fips_code, state_fips_code, pop2020) FROM stdin;
01001	01	56145
01003	01	229287
01005	01	24589
01007	01	22136
01009	01	57879
01011	01	9976
01013	01	19504
01015	01	113469
01017	01	32865
01019	01	26294
01021	01	44397
01023	01	12418
01025	01	23291
01027	01	13112
01029	01	14967
01031	01	53230
01033	01	55411
01035	01	11851
01037	01	10650
01039	01	36930
01041	01	13681
01043	01	84515
01045	01	48959
01047	01	36098
01049	01	71658
01051	01	82158
01053	01	36281
01055	01	102371
01057	01	16241
01059	01	31507
01061	01	26411
01063	01	7990
01065	01	14670
01067	01	17223
01069	01	106580
01071	01	51582
01073	01	655342
01075	01	13764
01077	01	93368
01079	01	32857
01081	01	166831
01083	01	102228
01085	01	9641
01087	01	17895
01089	01	379453
01091	01	18733
01093	01	29703
01095	01	96990
01097	01	412716
01099	01	20459
01101	01	224639
01103	01	119883
01105	01	8687
01107	01	19793
01109	01	32966
01111	01	22920
01113	01	58237
01115	01	90739
01117	01	221428
01119	01	12225
01121	01	79985
01123	01	40133
01125	01	210758
01127	01	63143
01129	01	15976
01131	01	10206
01133	01	23508
02013	02	3401
02016	02	5680
02020	02	287095
02050	02	18437
02060	02	788
02063	02	6427
02066	02	2919
02068	02	2081
02070	02	4833
02090	02	95651
02100	02	2614
02105	02	2141
02110	02	31849
02122	02	59414
02130	02	13747
02150	02	12992
02158	02	8328
02164	02	1493
02170	02	110213
02180	02	9909
02185	02	9294
02188	02	7644
02195	02	3296
02198	02	6147
02220	02	8405
02230	02	1179
02240	02	6957
02275	02	2510
02282	02	637
02290	02	5077
04001	04	71875
04003	04	127450
04005	04	142481
04007	04	54303
04009	04	39211
04011	04	9341
04012	04	21480
04013	04	4579081
04015	04	217206
04017	04	112112
04019	04	1061175
04021	04	480828
04023	04	46808
04025	04	240226
04027	04	217824
05001	05	17383
05003	05	19339
05005	05	42242
05007	05	288774
05009	05	37625
05011	05	10639
05013	05	5113
05015	05	28276
05017	05	9924
05019	05	22103
05021	05	14375
05023	05	24935
05025	05	7957
05027	05	23331
05029	05	21037
05031	05	112245
05033	05	63409
05035	05	47616
05037	05	16142
05039	05	6802
05041	05	11110
05043	05	17977
05045	05	126919
05047	05	17897
05049	05	12381
05051	05	99789
05053	05	18449
05055	05	45597
05057	05	21253
05059	05	33787
05061	05	13109
05063	05	37757
05065	05	13613
05067	05	16636
05069	05	65377
05071	05	26513
05073	05	6596
05075	05	16410
05077	05	8513
05079	05	12944
05081	05	12180
05083	05	21410
05085	05	73921
05087	05	16644
05089	05	16790
05091	05	43177
05093	05	40066
05095	05	6584
05097	05	9006
05099	05	8099
05101	05	7602
05103	05	23167
05105	05	10327
05107	05	17299
05109	05	10643
05111	05	23283
05113	05	19707
05115	05	64334
05117	05	7966
05119	05	392980
05121	05	18247
05123	05	24682
05125	05	123968
05127	05	10164
05129	05	7842
05131	05	127590
05133	05	16702
05135	05	17424
05137	05	12674
05139	05	38219
05141	05	16541
05143	05	243216
05145	05	78729
05147	05	6264
05149	05	21181
06001	06	1662323
06003	06	1119
06005	06	40083
06007	06	212744
06009	06	46308
06011	06	21558
06013	06	1152333
06015	06	27968
06017	06	192925
06019	06	1000918
06021	06	28283
06023	06	134977
06025	06	180267
06027	06	18046
06029	06	901362
06031	06	152692
06033	06	64479
06035	06	30016
06037	06	9943046
06039	06	157761
06041	06	257332
06043	06	17160
06045	06	86061
06047	06	279252
06049	06	8763
06051	06	14534
06053	06	430906
06055	06	135965
06057	06	99606
06059	06	3166857
06061	06	402950
06063	06	18967
06065	06	2489188
06067	06	1559146
06069	06	64055
06071	06	2189183
06073	06	3332427
06075	06	866606
06077	06	767967
06079	06	282249
06081	06	758308
06083	06	444766
06085	06	1907105
06087	06	269925
06089	06	179027
06091	06	2920
06093	06	43245
06095	06	446935
06097	06	489819
06099	06	550081
06101	06	96385
06103	06	64494
06105	06	12216
06107	06	468680
06109	06	54515
06111	06	841387
06113	06	219728
06115	06	80160
08001	08	519883
08003	08	16180
08005	08	657452
08007	08	14196
08009	08	3555
08011	08	5356
08013	08	327171
08014	08	72236
08015	08	20661
08017	08	1795
08019	08	9586
08021	08	8143
08023	08	3921
08025	08	5696
08027	08	5183
08029	08	31067
08031	08	735538
08033	08	2096
08035	08	360750
08037	08	54929
08039	08	27313
08041	08	728310
08043	08	47867
08045	08	60366
08047	08	6235
08049	08	15794
08051	08	17593
08053	08	808
08055	08	6883
08057	08	1389
08059	08	583283
08061	08	1458
08063	08	7121
08065	08	7987
08067	08	56564
08069	08	360428
08071	08	14420
08073	08	5680
08075	08	21974
08077	08	155603
08079	08	773
08081	08	13144
08083	08	26408
08085	08	43322
08087	08	28941
08089	08	18201
08091	08	5001
08093	08	18955
08095	08	4367
08097	08	17894
08099	08	12106
08101	08	169823
08103	08	6342
08105	08	11296
08107	08	25560
08109	08	6938
08111	08	748
08113	08	8105
08115	08	2260
08117	08	30631
08119	08	25529
08121	08	4875
08123	08	333983
08125	08	10047
09001	09	942426
09003	09	889226
09005	09	179610
09007	09	161657
09009	09	851948
09011	09	264999
09013	09	150600
09015	09	116540
10001	10	183643
10003	10	561531
10005	10	241635
11001	11	712816
12001	12	271218
12003	12	29566
12005	12	171322
12007	12	28593
12009	12	608459
12011	12	1958105
12013	12	14078
12015	12	194711
12017	12	153010
12019	12	221770
12021	12	392973
12023	12	72654
12027	12	38520
12029	12	17057
12031	12	966728
12033	12	322364
12035	12	118451
12037	12	12201
12039	12	45277
12041	12	18885
12043	12	14198
12045	12	13534
12047	12	14521
12049	12	26822
12051	12	42813
12053	12	198792
12055	12	106639
12057	12	1497957
12059	12	19594
12061	12	162518
12063	12	46085
12065	12	14543
12067	12	8482
12069	12	375492
12071	12	790767
12073	12	295460
12075	12	42214
12077	12	8364
12079	12	18707
12081	12	411219
12083	12	373513
12085	12	162088
12086	12	2707303
12087	12	73900
12089	12	91113
12091	12	212820
12093	12	42297
12095	12	1404396
12097	12	385315
12099	12	1507600
12101	12	570412
12103	12	976802
12105	12	744552
12107	12	74815
12109	12	278715
12111	12	337186
12113	12	189139
12115	12	443465
12117	12	474171
12119	12	139018
12121	12	44851
12123	12	21600
12125	12	15182
12127	12	561497
12129	12	34319
12131	12	76648
12133	12	25932
13001	13	18325
13003	13	8393
13005	13	11036
13007	13	2971
13009	13	45099
13011	13	19352
13013	13	85588
13015	13	109426
13017	13	16614
13019	13	19408
13021	13	152737
13023	13	12955
13025	13	19202
13027	13	15357
13029	13	40755
13031	13	80839
13033	13	22648
13035	13	25426
13037	13	6231
13039	13	55388
13043	13	10985
13045	13	121633
13047	13	67996
13049	13	13430
13051	13	289463
13053	13	10551
13055	13	24843
13057	13	265274
13059	13	127795
13061	13	2866
13063	13	292646
13065	13	6582
13067	13	762944
13069	13	43218
13071	13	45542
13073	13	160377
13075	13	17291
13077	13	150849
13079	13	12231
13081	13	22034
13083	13	16057
13085	13	27113
13087	13	26457
13089	13	762009
13091	13	20452
13093	13	13174
13095	13	86477
13097	13	147988
13099	13	10037
13101	13	4002
13103	13	65765
13105	13	19335
13107	13	22507
13109	13	10638
13111	13	26521
13113	13	115821
13115	13	98604
13117	13	250847
13119	13	23504
13121	13	1077402
13123	13	31978
13125	13	2984
13127	13	85568
13129	13	58780
13131	13	24491
13133	13	18837
13135	13	942627
13137	13	46047
13139	13	206591
13141	13	8494
13143	13	30383
13145	13	36080
13147	13	26406
13149	13	11973
13151	13	239139
13153	13	160110
13155	13	9387
13157	13	76199
13159	13	14483
13161	13	15213
13163	13	15267
13165	13	8746
13167	13	9667
13169	13	28787
13171	13	19261
13173	13	10737
13175	13	47512
13177	13	30234
13179	13	63004
13181	13	8031
13183	13	20171
13185	13	118268
13187	13	34186
13189	13	21162
13191	13	14387
13193	13	12712
13195	13	30457
13197	13	8516
13199	13	21164
13201	13	5622
13205	13	21602
13207	13	28042
13209	13	9012
13211	13	19636
13213	13	40032
13215	13	196442
13217	13	113295
13219	13	41124
13221	13	15383
13223	13	173359
13225	13	27950
13227	13	33127
13229	13	19522
13231	13	19121
13233	13	42840
13235	13	11191
13237	13	22520
13239	13	2271
13241	13	17273
13243	13	6682
13245	13	202079
13247	13	90939
13249	13	5196
13251	13	14012
13253	13	8060
13255	13	67414
13257	13	26107
13259	13	6689
13261	13	29282
13263	13	6143
13265	13	1562
13267	13	25365
13269	13	8074
13271	13	15781
13273	13	8523
13275	13	44372
13277	13	40719
13279	13	26973
13281	13	12247
13283	13	6822
13285	13	70214
13287	13	7882
13289	13	8103
13291	13	25358
13293	13	26527
13295	13	70116
13297	13	96875
13299	13	35826
13301	13	5232
13303	13	20150
13305	13	30023
13307	13	2595
13309	13	7751
13311	13	31094
13313	13	103837
13315	13	8502
13317	13	9694
13319	13	8812
13321	13	19972
15001	15	203340
15003	15	963826
15005	15	87
15007	15	71851
15009	15	167902
16001	16	494399
16003	16	4447
16005	16	88795
16007	16	6143
16009	16	9430
16011	16	47202
16013	16	23426
16015	16	8065
16017	16	46817
16019	16	122134
16021	16	12656
16023	16	2646
16025	16	1130
16027	16	237053
16029	16	7123
16031	16	24277
16033	16	852
16035	16	8846
16037	16	4249
16039	16	27448
16041	16	14215
16043	16	13218
16045	16	18703
16047	16	15618
16049	16	16823
16051	16	30581
16053	16	24578
16055	16	170628
16057	16	40830
16059	16	8054
16061	16	3838
16063	16	5358
16065	16	40318
16067	16	21216
16069	16	40755
16071	16	4520
16073	16	12133
16075	16	24771
16077	16	7643
16079	16	12911
16081	16	12501
16083	16	88411
16085	16	11792
16087	16	10360
17001	17	64783
17003	17	5497
17005	17	16262
17007	17	52777
17009	17	6546
17011	17	32303
17013	17	4616
17015	17	14241
17017	17	11925
17019	17	209192
17021	17	32075
17023	17	15268
17025	17	13079
17027	17	37398
17029	17	50383
17031	17	5108284
17033	17	18512
17035	17	10649
17037	17	104491
17039	17	15368
17041	17	19510
17043	17	917481
17045	17	16858
17047	17	6356
17049	17	34065
17051	17	21264
17053	17	12949
17055	17	38060
17057	17	33690
17059	17	4793
17061	17	12702
17063	17	50993
17065	17	8084
17067	17	17422
17069	17	3808
17071	17	6535
17073	17	48411
17075	17	26711
17077	17	56675
17079	17	9465
17081	17	37235
17083	17	21616
17085	17	21239
17087	17	12358
17089	17	531010
17091	17	108594
17093	17	130638
17095	17	49053
17097	17	693593
17099	17	107571
17101	17	15467
17103	17	33647
17105	17	35414
17107	17	28383
17109	17	29295
17111	17	305888
17113	17	171256
17115	17	103015
17117	17	44567
17119	17	262635
17121	17	37045
17123	17	11309
17125	17	13173
17127	17	13636
17129	17	12068
17131	17	15225
17133	17	34739
17135	17	28045
17137	17	33400
17139	17	14347
17141	17	50306
17143	17	177652
17145	17	20664
17147	17	16355
17149	17	15239
17151	17	4142
17153	17	5201
17155	17	5716
17157	17	31351
17159	17	15507
17161	17	140907
17163	17	258046
17165	17	23182
17167	17	193882
17169	17	6738
17171	17	4950
17173	17	21299
17175	17	5262
17177	17	43831
17179	17	130777
17181	17	16498
17183	17	74855
17185	17	11190
17187	17	16696
17189	17	13764
17191	17	16031
17193	17	13364
17195	17	54656
17197	17	688726
17199	17	66415
17201	17	281295
17203	17	38091
18001	18	35839
18003	18	382187
18005	18	84447
18007	18	8741
18009	18	11782
18011	18	69347
18013	18	15112
18015	18	20228
18017	18	37388
18019	18	119266
18021	18	26246
18023	18	32206
18025	18	10629
18027	18	33505
18029	18	49824
18031	18	26584
18033	18	43670
18035	18	113454
18037	18	42542
18039	18	206161
18041	18	22892
18043	18	78936
18045	18	16511
18047	18	22761
18049	18	20018
18051	18	33825
18053	18	65225
18055	18	32203
18057	18	344238
18059	18	79553
18061	18	40682
18063	18	173251
18065	18	48033
18067	18	82732
18069	18	36395
18071	18	44222
18073	18	33440
18075	18	20416
18077	18	32110
18079	18	27515
18081	18	160607
18083	18	36522
18085	18	78988
18087	18	40119
18089	18	487536
18091	18	109663
18093	18	45496
18095	18	129681
18097	18	966183
18099	18	46108
18101	18	10079
18103	18	35328
18105	18	148219
18107	18	38365
18109	18	70707
18111	18	13907
18113	18	47832
18115	18	5892
18117	18	19651
18119	18	20833
18121	18	16871
18123	18	19154
18125	18	12378
18127	18	170980
18129	18	25275
18131	18	12388
18133	18	37469
18135	18	24191
18137	18	28448
18139	18	16649
18141	18	271484
18143	18	23788
18145	18	44871
18147	18	20225
18149	18	23049
18151	18	34831
18153	18	20578
18155	18	10724
18157	18	196115
18159	18	15227
18161	18	7119
18163	18	182447
18165	18	15329
18167	18	106608
18169	18	30784
18171	18	8194
18173	18	63269
18175	18	28213
18177	18	65778
18179	18	28142
18181	18	24165
18183	18	34378
19001	19	7059
19003	19	3588
19005	19	13642
19007	19	12430
19009	19	5481
19011	19	25414
19013	19	130786
19015	19	26277
19017	19	25311
19019	19	21287
19021	19	19772
19023	19	14333
19025	19	9473
19027	19	19914
19029	19	12817
19031	19	18485
19033	19	42103
19035	19	11190
19037	19	11834
19039	19	9353
19041	19	15976
19043	19	17321
19045	19	46392
19047	19	16834
19049	19	96963
19051	19	9051
19053	19	7769
19055	19	16937
19057	19	38708
19059	19	17549
19061	19	97590
19063	19	9095
19065	19	19258
19067	19	15480
19069	19	9971
19071	19	6729
19073	19	8795
19075	19	12217
19077	19	10737
19079	19	14716
19081	19	10507
19083	19	16575
19085	19	13928
19087	19	19697
19089	19	9176
19091	19	9473
19093	19	6833
19095	19	16138
19097	19	19205
19099	19	37148
19101	19	18347
19103	19	153740
19105	19	20617
19107	19	10085
19109	19	14680
19111	19	33480
19113	19	227854
19115	19	11011
19117	19	8518
19119	19	11756
19121	19	16521
19123	19	22370
19125	19	33168
19127	19	39495
19129	19	14766
19131	19	10647
19133	19	8598
19135	19	7770
19137	19	9935
19139	19	42394
19141	19	13679
19143	19	5987
19145	19	15073
19147	19	8845
19149	19	25219
19151	19	6607
19153	19	494281
19155	19	93328
19157	19	18381
19159	19	4801
19161	19	9603
19163	19	173216
19165	19	11430
19167	19	35043
19169	19	98237
19171	19	16801
19173	19	6092
19175	19	12157
19177	19	7069
19179	19	34985
19181	19	52265
19183	19	21992
19185	19	6415
19187	19	35934
19189	19	10277
19191	19	19862
19193	19	103138
19195	19	7359
19197	19	12416
20001	20	12399
20003	20	7949
20005	20	16015
20007	20	4358
20009	20	25658
20011	20	14435
20013	20	9482
20015	20	66992
20017	20	2586
20019	20	3230
20021	20	19681
20023	20	2600
20025	20	1963
20027	20	8025
20029	20	8642
20031	20	8158
20033	20	1690
20035	20	34628
20037	20	38730
20039	20	2776
20041	20	18266
20043	20	7496
20045	20	122530
20047	20	2750
20049	20	2507
20051	20	28671
20053	20	6034
20055	20	35917
20057	20	33094
20059	20	25703
20061	20	32218
20063	20	2621
20065	20	2389
20067	20	7077
20069	20	5954
20071	20	1196
20073	20	5868
20075	20	2425
20077	20	5336
20079	20	34291
20081	20	3923
20083	20	1779
20085	20	13171
20087	20	19032
20089	20	2833
20091	20	607220
20093	20	3745
20095	20	6974
20097	20	2456
20099	20	19586
20101	20	1518
20103	20	82246
20105	20	2986
20107	20	9654
20109	20	2732
20111	20	33045
20113	20	28448
20115	20	11652
20117	20	9652
20119	20	4029
20121	20	34334
20123	20	5879
20125	20	31502
20127	20	5559
20129	20	2538
20131	20	10121
20133	20	15929
20135	20	2768
20137	20	5328
20139	20	15770
20141	20	3439
20143	20	5712
20145	20	6366
20147	20	5181
20149	20	24722
20151	20	9127
20153	20	2511
20155	20	61793
20157	20	4536
20159	20	9362
20161	20	73202
20163	20	4827
20165	20	2947
20167	20	6804
20169	20	53926
20171	20	4790
20173	20	519907
20175	20	21038
20177	20	175999
20179	20	2520
20181	20	5777
20183	20	3544
20185	20	4046
20187	20	1969
20189	20	5388
20191	20	22578
20193	20	7702
20195	20	2758
20197	20	6906
20199	20	1536
20201	20	5427
20203	20	2074
20205	20	8362
20207	20	3015
20209	20	165265
21001	21	19555
21003	21	21303
21005	21	22833
21007	21	7769
21009	21	44300
21011	21	12481
21013	21	25482
21015	21	135396
21017	21	19901
21019	21	46516
21021	21	30367
21023	21	8286
21025	21	12550
21027	21	20537
21029	21	82182
21031	21	12703
21033	21	12687
21035	21	39300
21037	21	94020
21039	21	4692
21041	21	10730
21043	21	26542
21045	21	16066
21047	21	71478
21049	21	36463
21051	21	19631
21053	21	10110
21055	21	8847
21057	21	6523
21059	21	101978
21061	21	12235
21063	21	7372
21065	21	14109
21067	21	324735
21069	21	14603
21071	21	34974
21073	21	51118
21075	21	5952
21077	21	8779
21079	21	17719
21081	21	25387
21083	21	36818
21085	21	26480
21087	21	10995
21089	21	34865
21091	21	8742
21093	21	111309
21095	21	25566
21097	21	18920
21099	21	19013
21101	21	44740
21103	21	16067
21105	21	4364
21107	21	44662
21109	21	13340
21111	21	767452
21113	21	54057
21115	21	22002
21117	21	167949
21119	21	14512
21121	21	31022
21123	21	14431
21125	21	61238
21127	21	15436
21129	21	7268
21131	21	9637
21133	21	21213
21135	21	13262
21137	21	24466
21139	21	9041
21141	21	27416
21143	21	8133
21145	21	65644
21147	21	17071
21149	21	9075
21151	21	94265
21153	21	12017
21155	21	19314
21157	21	31163
21159	21	11031
21161	21	17035
21163	21	28616
21165	21	6502
21167	21	21889
21169	21	10058
21171	21	10549
21173	21	28186
21175	21	13142
21177	21	30457
21179	21	46450
21181	21	7234
21183	21	23899
21185	21	66999
21187	21	11017
21189	21	4331
21191	21	14586
21193	21	25456
21195	21	57057
21197	21	12218
21199	21	65530
21201	21	2136
21203	21	16750
21205	21	24682
21207	21	17998
21209	21	58470
21211	21	49611
21213	21	18635
21215	21	19585
21217	21	25707
21219	21	12448
21221	21	14776
21223	21	8481
21225	21	14443
21227	21	134510
21229	21	12147
21231	21	20209
21233	21	12923
21235	21	36451
21237	21	7106
21239	21	26765
22001	22	61918
22003	22	25440
22005	22	128665
22007	22	21621
22009	22	39966
22011	22	37881
22013	22	12983
22015	22	127275
22017	22	237479
22019	22	203310
22021	22	9839
22023	22	7003
22025	22	9226
22027	22	15508
22029	22	18914
22031	22	27650
22033	22	439729
22035	22	6589
22037	22	18882
22039	22	33276
22041	22	19723
22043	22	22254
22045	22	68991
22047	22	32070
22049	22	15574
22051	22	432346
22053	22	31208
22055	22	246518
22057	22	97596
22059	22	15021
22061	22	46552
22063	22	143737
22065	22	10635
22067	22	24227
22069	22	37655
22071	22	389476
22073	22	152439
22075	22	23113
22077	22	21529
22079	22	128567
22081	22	8286
22083	22	20014
22085	22	23803
22087	22	47647
22089	22	52987
22091	22	10081
22093	22	20727
22095	22	42516
22097	22	81440
22099	22	52954
22101	22	48330
22103	22	263446
22105	22	136765
22107	22	4178
22109	22	109859
22111	22	22170
22113	22	59378
22115	22	47894
22117	22	45773
22119	22	37943
22121	22	26792
22123	22	10646
22125	22	15465
22127	22	13839
23001	23	108547
23003	23	66804
23005	23	298111
23007	23	29986
23009	23	55088
23011	23	122955
23013	23	39951
23015	23	34775
23017	23	58132
23019	23	151655
23021	23	16996
23023	23	36044
23025	23	50635
23027	23	39923
23029	23	31473
23031	23	209066
24001	24	70057
24003	24	582777
24005	24	826017
24009	24	93072
24011	24	33492
24013	24	169092
24015	24	103419
24017	24	164436
24019	24	31853
24021	24	265161
24023	24	28852
24025	24	256805
24027	24	328200
24029	24	19192
24031	24	1051816
24033	24	909612
24035	24	51167
24037	24	114687
24039	24	25453
24041	24	36972
24043	24	151146
24045	24	103990
24047	24	52403
24510	24	586131
25001	25	213164
25003	25	124571
25005	25	566765
25007	25	17461
25009	25	791263
25011	25	70267
25013	25	463986
25015	25	161401
25017	25	1609379
25019	25	11376
25021	25	709409
25023	25	523738
25025	25	801582
25027	25	829212
26001	26	10505
26003	26	9015
26005	26	118927
26007	26	28238
26009	26	23449
26011	26	14953
26013	26	8164
26015	26	62061
26017	26	102387
26019	26	17852
26021	26	153025
26023	26	43424
26025	26	133580
26027	26	51584
26029	26	26105
26031	26	25365
26033	26	36958
26035	26	30771
26037	26	79753
26039	26	13981
26041	26	35612
26043	26	25112
26045	26	110148
26047	26	33342
26049	26	404794
26051	26	25424
26053	26	13842
26055	26	93592
26057	26	40283
26059	26	45658
26061	26	35126
26063	26	30653
26065	26	290609
26067	26	64553
26069	26	25140
26071	26	11066
26073	26	69504
26075	26	156920
26077	26	265988
26079	26	18003
26081	26	658708
26083	26	2119
26085	26	11587
26087	26	87635
26089	26	21743
26091	26	97808
26093	26	192335
26095	26	6126
26097	26	10839
26099	26	870791
26101	26	24738
26103	26	65834
26105	26	29164
26107	26	43907
26109	26	22608
26111	26	83441
26113	26	15152
26115	26	150568
26117	26	63476
26119	26	9337
26121	26	173883
26123	26	49348
26125	26	1253459
26127	26	26819
26129	26	20923
26131	26	5656
26133	26	23466
26135	26	8368
26137	26	24765
26139	26	294635
26141	26	12665
26143	26	23986
26145	26	189868
26147	26	159293
26149	26	60848
26151	26	40747
26153	26	8104
26155	26	67738
26157	26	52289
26159	26	75474
26161	26	366473
26163	26	1740623
26165	26	33743
27001	27	15848
27003	27	359921
27005	27	34456
27007	27	47442
27009	27	40958
27011	27	4923
27013	27	68241
27015	27	24846
27017	27	35769
27019	27	106565
27021	27	29928
27023	27	11758
27025	27	56794
27027	27	64690
27029	27	9017
27031	27	5417
27033	27	11242
27035	27	65644
27037	27	431807
27039	27	20987
27041	27	38328
27043	27	13601
27045	27	21135
27047	27	30364
27049	27	46318
27051	27	6026
27053	27	1268408
27055	27	18632
27057	27	21783
27059	27	41429
27061	27	45268
27063	27	9768
27065	27	16416
27067	27	43130
27069	27	4214
27071	27	12059
27073	27	6527
27075	27	10639
27077	27	3754
27079	27	28741
27081	27	5568
27083	27	25271
27085	27	35710
27087	27	5473
27089	27	9321
27091	27	19484
27093	27	23341
27095	27	26146
27097	27	33187
27099	27	40150
27101	27	8155
27103	27	34482
27105	27	21400
27107	27	6338
27109	27	159298
27111	27	58741
27113	27	13874
27115	27	29359
27117	27	9121
27119	27	30900
27121	27	11277
27123	27	547903
27125	27	4046
27127	27	15079
27129	27	14403
27131	27	67084
27133	27	9301
27135	27	15117
27137	27	198538
27139	27	150689
27141	27	98811
27143	27	14715
27145	27	162038
27147	27	36596
27149	27	9765
27151	27	9176
27153	27	24732
27155	27	3218
27157	27	21642
27159	27	13807
27161	27	18550
27163	27	265476
27165	27	10792
27167	27	6161
27169	27	50485
27171	27	140249
27173	27	9580
28001	28	30275
28003	28	36889
28005	28	12205
28007	28	18004
28009	28	8351
28011	28	30142
28013	28	14241
28015	28	9732
28017	28	16951
28019	28	8063
28021	28	8911
28023	28	15299
28025	28	19352
28027	28	21564
28029	28	27933
28031	28	18518
28033	28	188275
28035	28	75009
28037	28	7657
28039	28	24425
28041	28	13477
28043	28	20610
28045	28	48000
28047	28	208801
28049	28	227966
28051	28	16726
28053	28	7827
28055	28	1220
28057	28	23261
28059	28	143802
28061	28	16332
28063	28	6997
28065	28	10890
28067	28	67993
28069	28	9521
28071	28	54408
28073	28	64165
28075	28	73751
28077	28	12480
28079	28	22741
28081	28	85466
28083	28	27854
28085	28	33936
28087	28	58309
28089	28	106871
28091	28	24441
28093	28	35301
28095	28	35123
28097	28	9661
28099	28	28996
28101	28	20866
28103	28	10236
28105	28	49789
28107	28	33848
28109	28	55876
28111	28	11862
28113	28	38997
28115	28	32461
28117	28	25013
28119	28	6760
28121	28	155975
28123	28	28061
28125	28	4160
28127	28	26629
28129	28	15779
28131	28	18360
28133	28	24740
28135	28	13707
28137	28	28539
28139	28	21748
28141	28	19275
28143	28	9392
28145	28	28866
28147	28	14294
28149	28	44841
28151	28	42837
28153	28	20317
28155	28	9676
28157	28	8351
28159	28	17845
28161	28	11982
28163	28	26982
29001	29	25399
29003	29	17586
29005	29	5096
29007	29	24835
29009	29	35818
29011	29	11592
29013	29	16242
29015	29	19627
29017	29	12111
29019	29	182991
29021	29	86530
29023	29	42178
29025	29	9051
29027	29	44887
29029	29	46414
29031	29	79512
29033	29	8554
29035	29	5991
29037	29	106806
29039	29	14322
29041	29	7360
29043	29	90655
29045	29	6830
29047	29	253463
29049	29	20553
29051	29	76191
29053	29	17102
29055	29	23739
29057	29	7568
29059	29	17219
29061	29	8283
29063	29	10944
29065	29	15481
29067	29	13344
29069	29	28878
29071	29	104469
29073	29	14566
29075	29	6484
29077	29	294997
29079	29	9595
29081	29	8321
29083	29	22076
29085	29	9586
29087	29	4232
29089	29	10001
29091	29	40262
29093	29	10098
29095	29	705925
29097	29	121648
29099	29	226543
29101	29	54219
29103	29	3940
29105	29	35895
29107	29	33006
29109	29	38175
29111	29	9810
29113	29	60119
29115	29	11830
29117	29	14413
29119	29	22900
29121	29	15095
29123	29	12113
29125	29	8795
29127	29	28423
29129	29	3558
29131	29	25791
29133	29	12691
29135	29	15585
29137	29	8672
29139	29	11294
29141	29	20716
29143	29	16693
29145	29	58451
29147	29	21743
29149	29	10411
29151	29	13535
29153	29	9083
29155	29	15600
29157	29	19194
29159	29	42490
29161	29	44414
29163	29	17552
29165	29	106532
29167	29	32490
29169	29	52709
29171	29	4688
29173	29	10299
29175	29	24409
29177	29	22915
29179	29	6198
29181	29	13300
29183	29	406204
29185	29	9689
29186	29	17924
29187	29	66485
29189	29	994020
29195	29	22858
29197	29	4534
29199	29	4871
29201	29	38288
29203	29	8203
29205	29	5919
29207	29	29001
29209	29	32465
29211	29	6033
29213	29	56104
29215	29	25112
29217	29	20388
29219	29	36594
29221	29	24604
29223	29	12769
29225	29	39859
29227	29	1953
29229	29	18325
29510	29	297645
30001	30	9483
30003	30	13063
30005	30	6568
30007	30	6444
30009	30	10921
30011	30	1235
30013	30	81346
30015	30	5699
30017	30	11292
30019	30	1638
30021	30	8555
30023	30	9204
30025	30	2826
30027	30	11104
30029	30	105851
30031	30	116806
30033	30	1268
30035	30	13594
30037	30	827
30039	30	3317
30041	30	16358
30043	30	12360
30045	30	1994
30047	30	30986
30049	30	70229
30051	30	2369
30053	30	20343
30055	30	1648
30057	30	8959
30059	30	1831
30061	30	4544
30063	30	121630
30065	30	4669
30067	30	16760
30069	30	500
30071	30	3919
30073	30	5782
30075	30	1681
30077	30	6817
30079	30	1067
30081	30	45002
30083	30	11043
30085	30	10964
30087	30	8836
30089	30	12157
30091	30	3261
30093	30	35180
30095	30	9888
30097	30	3684
30099	30	6249
30101	30	4686
30103	30	695
30105	30	7359
30107	30	2157
30109	30	939
30111	30	162990
31001	31	31321
31003	31	6264
31005	31	466
31007	31	786
31009	31	457
31011	31	5096
31013	31	10696
31015	31	1860
31017	31	2981
31019	31	50114
31021	31	6477
31023	31	7960
31025	31	26232
31027	31	8414
31029	31	3840
31031	31	5781
31033	31	9111
31035	31	6216
31037	31	10587
31039	31	8798
31041	31	10626
31043	31	20070
31045	31	8361
31047	31	23510
31049	31	1793
31051	31	5596
31053	31	36222
31055	31	574332
31057	31	1671
31059	31	5519
31061	31	2940
31063	31	2587
31065	31	4653
31067	31	21431
31069	31	1847
31071	31	1956
31073	31	1986
31075	31	630
31077	31	2319
31079	31	61028
31081	31	9237
31083	31	3311
31085	31	916
31087	31	2773
31089	31	9956
31091	31	647
31093	31	6488
31095	31	7099
31097	31	5057
31099	31	6652
31101	31	7983
31103	31	759
31105	31	3495
31107	31	8304
31109	31	320650
31111	31	34347
31113	31	747
31115	31	650
31117	31	474
31119	31	34813
31121	31	7809
31123	31	4625
31125	31	3532
31127	31	7044
31129	31	4134
31131	31	15965
31133	31	2601
31135	31	2867
31137	31	9006
31139	31	7184
31141	31	33364
31143	31	5201
31145	31	10627
31147	31	7791
31149	31	1377
31151	31	13987
31153	31	188856
31155	31	21927
31157	31	35299
31159	31	17186
31161	31	5150
31163	31	2986
31165	31	1200
31167	31	5880
31169	31	4887
31171	31	739
31173	31	7220
31175	31	4103
31177	31	20901
31179	31	9492
31181	31	3419
31183	31	790
31185	31	13511
32001	32	25363
32003	32	2315963
32005	32	49088
32007	32	53006
32009	32	886
32011	32	2065
32013	32	16962
32015	32	5514
32017	32	5159
32019	32	58319
32021	32	4518
32023	32	48054
32027	32	6573
32029	32	4207
32031	32	477082
32033	32	9466
32510	32	56034
33001	33	61551
33003	33	49167
33005	33	76228
33007	33	31174
33009	33	90691
33011	33	418735
33013	33	152622
33015	33	311307
33017	33	131533
33019	33	43267
34001	34	262945
34003	34	930394
34005	34	446596
34007	34	506809
34009	34	91546
34011	34	147008
34013	34	800501
34015	34	293245
34017	34	671666
34019	34	124797
34021	34	367239
34023	34	822736
34025	34	618381
34027	34	491087
34029	34	614237
34031	34	500382
34033	34	62451
34035	34	329331
34037	34	140002
34039	34	555394
34041	34	105624
35001	35	681666
35003	35	3623
35005	35	64711
35006	35	26354
35007	35	11927
35009	35	48793
35011	35	1673
35013	35	221262
35015	35	58418
35017	35	27007
35019	35	4275
35021	35	638
35023	35	4106
35025	35	71830
35027	35	19939
35028	35	19462
35029	35	23905
35031	35	70824
35033	35	4478
35035	35	67967
35037	35	8197
35039	35	38521
35041	35	18350
35043	35	148904
35045	35	123312
35047	35	27144
35049	35	151946
35051	35	10867
35053	35	16541
35055	35	32593
35057	35	15486
35059	35	4026
35061	35	77574
36001	36	303654
36003	36	45587
36005	36	1401142
36007	36	189420
36009	36	75863
36011	36	76029
36013	36	126032
36015	36	82622
36017	36	46730
36019	36	79778
36021	36	59534
36023	36	47173
36025	36	43938
36027	36	293293
36029	36	917241
36031	36	36891
36033	36	49965
36035	36	52812
36037	36	56994
36039	36	47177
36041	36	4345
36043	36	60945
36045	36	108095
36047	36	2538934
36049	36	26187
36051	36	62398
36053	36	70478
36055	36	740900
36057	36	49170
36059	36	1351334
36061	36	1611989
36063	36	208396
36065	36	227346
36067	36	459214
36069	36	110091
36071	36	385234
36073	36	39978
36075	36	116346
36077	36	58701
36079	36	98532
36081	36	2225821
36083	36	158108
36085	36	475327
36087	36	326225
36089	36	107185
36091	36	230298
36093	36	155358
36095	36	31132
36097	36	17685
36099	36	33991
36101	36	94657
36103	36	1474273
36105	36	75802
36107	36	47904
36109	36	101058
36111	36	177716
36113	36	63756
36115	36	60606
36117	36	89339
36119	36	965802
36121	36	39465
36123	36	24780
37001	37	171346
37003	37	37441
37005	37	11194
37007	37	24097
37009	37	27166
37011	37	17571
37013	37	47073
37015	37	18712
37017	37	32911
37019	37	149039
37021	37	263477
37023	37	90418
37025	37	221479
37027	37	82100
37029	37	10984
37031	37	69558
37033	37	22443
37035	37	160307
37037	37	75748
37039	37	29073
37041	37	13815
37043	37	11505
37045	37	99035
37047	37	54754
37049	37	101233
37051	37	336364
37053	37	29052
37055	37	37547
37057	37	169234
37059	37	43286
37061	37	58794
37063	37	327306
37065	37	50829
37067	37	383843
37069	37	71859
37071	37	226568
37073	37	11464
37075	37	8474
37077	37	60486
37079	37	20928
37081	37	540521
37083	37	49479
37085	37	137058
37087	37	62972
37089	37	118445
37091	37	23108
37093	37	55830
37095	37	4843
37097	37	185770
37099	37	44033
37101	37	216246
37103	37	9250
37105	37	62353
37107	37	55720
37109	37	88097
37111	37	45782
37113	37	35994
37115	37	21740
37117	37	22178
37119	37	1128945
37121	37	14881
37123	37	27238
37125	37	103352
37127	37	94859
37129	37	236613
37131	37	19088
37133	37	203943
37135	37	149077
37137	37	12715
37139	37	40372
37141	37	64671
37143	37	13667
37145	37	39925
37147	37	182924
37149	37	21030
37151	37	144557
37153	37	44332
37155	37	129999
37157	37	91285
37159	37	142495
37161	37	67076
37163	37	63382
37165	37	34637
37167	37	63239
37169	37	45743
37171	37	71683
37173	37	14179
37175	37	34498
37177	37	3774
37179	37	244562
37181	37	44718
37183	37	1132271
37185	37	19522
37187	37	11485
37189	37	56441
37191	37	123967
37193	37	68043
37195	37	81979
37197	37	37625
37199	37	18099
38001	38	2188
38003	38	10402
38005	38	6762
38007	38	890
38009	38	6287
38011	38	2986
38013	38	2118
38015	38	96212
38017	38	183904
38019	38	3713
38021	38	4705
38023	38	2277
38025	38	4465
38027	38	2179
38029	38	3187
38031	38	3165
38033	38	1737
38035	38	69481
38037	38	2215
38039	38	2207
38041	38	2438
38043	38	2458
38045	38	4033
38047	38	1880
38049	38	5695
38051	38	2440
38053	38	15242
38055	38	9416
38057	38	8174
38059	38	31503
38061	38	10502
38063	38	2789
38065	38	1926
38067	38	6658
38069	38	3928
38071	38	11388
38073	38	5173
38075	38	2283
38077	38	16156
38079	38	14165
38081	38	3913
38083	38	1275
38085	38	4173
38087	38	747
38089	38	32107
38091	38	1890
38093	38	20498
38095	38	2108
38097	38	7959
38099	38	10437
38101	38	68466
38103	38	3709
38105	38	38700
39001	39	27531
39003	39	101980
39005	39	53362
39007	39	96513
39009	39	65481
39011	39	45680
39013	39	65932
39015	39	43414
39017	39	385648
39019	39	26897
39021	39	38960
39023	39	133593
39025	39	207449
39027	39	41921
39029	39	101118
39031	39	36449
39033	39	41338
39035	39	1227883
39037	39	51205
39039	39	37778
39041	39	213554
39043	39	73719
39045	39	159709
39047	39	28579
39049	39	1324624
39051	39	41889
39053	39	29802
39055	39	93271
39057	39	170122
39059	39	38779
39061	39	817985
39063	39	75407
39065	39	31469
39067	39	15014
39069	39	26904
39071	39	43304
39073	39	28095
39075	39	44004
39077	39	57979
39079	39	32493
39081	39	64939
39083	39	62423
39085	39	229569
39087	39	59091
39089	39	178100
39091	39	45326
39093	39	312172
39095	39	428294
39097	39	44559
39099	39	226075
39101	39	64820
39103	39	180912
39105	39	22678
39107	39	41274
39109	39	107516
39111	39	13586
39113	39	531610
39115	39	14305
39117	39	35411
39119	39	86020
39121	39	14364
39123	39	40253
39125	39	18648
39127	39	36215
39129	39	58658
39131	39	27695
39133	39	162583
39135	39	40836
39137	39	33654
39139	39	120891
39141	39	76420
39143	39	58351
39145	39	74347
39147	39	54938
39149	39	48337
39151	39	369772
39153	39	538866
39155	39	196800
39157	39	91776
39159	39	60021
39161	39	28159
39163	39	12972
39165	39	238412
39167	39	59652
39169	39	115694
39171	39	36565
39173	39	131113
39175	39	21711
40001	40	21955
40003	40	5718
40005	40	13912
40007	40	5207
40009	40	21468
40011	40	9447
40013	40	48998
40015	40	28684
40017	40	153192
40019	40	48353
40021	40	49019
40023	40	14646
40025	40	2145
40027	40	287066
40029	40	5587
40031	40	121099
40033	40	5676
40035	40	14194
40037	40	71485
40039	40	28648
40041	40	43136
40043	40	4815
40045	40	3830
40047	40	60869
40049	40	27691
40051	40	55906
40053	40	4372
40055	40	5704
40057	40	2557
40059	40	3611
40061	40	12652
40063	40	13126
40065	40	24305
40067	40	5949
40069	40	10824
40071	40	43274
40073	40	15806
40075	40	8741
40077	40	10132
40079	40	49935
40081	40	35045
40083	40	48777
40085	40	10230
40087	40	41348
40089	40	32772
40091	40	19635
40093	40	7579
40095	40	17114
40097	40	41152
40099	40	13955
40101	40	67610
40103	40	11113
40105	40	10076
40107	40	11765
40109	40	804041
40111	40	38234
40113	40	46642
40115	40	30879
40117	40	16381
40119	40	81755
40121	40	43679
40123	40	38397
40125	40	72998
40127	40	10970
40129	40	3570
40131	40	93155
40133	40	24248
40135	40	41538
40137	40	43100
40139	40	19997
40141	40	7229
40143	40	657589
40145	40	82925
40147	40	52222
40149	40	10830
40151	40	8687
40153	40	19812
41001	41	16284
41003	41	93239
41005	41	421596
41007	41	40423
41009	41	52876
41011	41	64711
41013	41	25105
41015	41	23305
41017	41	201769
41019	41	111364
41021	41	1975
41023	41	7180
41025	41	7373
41027	41	23280
41029	41	221844
41031	41	24856
41033	41	88053
41035	41	68739
41037	41	7949
41039	41	382986
41041	41	50583
41043	41	131054
41045	41	30983
41047	41	349204
41049	41	11700
41051	41	815637
41053	41	87744
41055	41	1801
41057	41	27442
41059	41	77752
41061	41	26551
41063	41	7181
41065	41	26403
41067	41	603514
41069	41	1387
41071	41	107664
42001	42	102742
42003	42	1211358
42005	42	64162
42007	42	162575
42009	42	47817
42011	42	421017
42013	42	121007
42015	42	60221
42017	42	627987
42019	42	189135
42021	42	128672
42023	42	4330
42025	42	64081
42027	42	161496
42029	42	526759
42031	42	38305
42033	42	78612
42035	42	37957
42037	42	64842
42039	42	83697
42041	42	255857
42043	42	279874
42045	42	566753
42047	42	29607
42049	42	268426
42051	42	128126
42053	42	6965
42055	42	155637
42057	42	14501
42059	42	35621
42061	42	44590
42063	42	83664
42065	42	43108
42067	42	24619
42069	42	208989
42071	42	546192
42073	42	85083
42075	42	141663
42077	42	370802
42079	42	316982
42081	42	113209
42083	42	40333
42085	42	108545
42087	42	46064
42089	42	170154
42091	42	833869
42093	42	18042
42095	42	305892
42097	42	90258
42099	42	46212
42101	42	1578487
42103	42	56072
42105	42	16453
42107	42	140709
42109	42	40317
42111	42	72916
42113	42	5913
42115	42	40006
42117	42	40381
42119	42	44294
42121	42	50328
42123	42	38911
42125	42	206803
42127	42	51163
42129	42	347087
42131	42	26557
42133	42	450448
44001	44	48350
44003	44	164646
44005	44	81836
44007	44	636547
44009	44	125746
45001	45	24404
45003	45	172895
45005	45	8331
45007	45	204353
45009	45	13906
45011	45	20805
45013	45	195656
45015	45	235987
45017	45	14554
45019	45	417981
45021	45	57316
45023	45	32232
45025	45	45606
45027	45	33415
45029	45	37481
45031	45	66509
45033	45	30367
45035	45	165737
45037	45	27120
45039	45	22059
45041	45	137588
45043	45	63353
45045	45	532486
45047	45	71074
45049	45	18053
45051	45	365449
45053	45	31588
45055	45	67472
45057	45	100926
45059	45	67883
45061	45	16701
45063	45	303946
45065	45	9430
45067	45	30158
45069	45	25581
45071	45	38445
45073	45	80015
45075	45	85343
45077	45	127983
45079	45	419051
45081	45	20315
45083	45	326205
45085	45	106360
45087	45	26991
45089	45	29825
45091	45	289105
46003	46	2730
46005	46	18513
46007	46	3399
46009	46	6848
46011	46	35603
46013	46	38738
46015	46	5254
46017	46	1956
46019	46	10538
46021	46	1380
46023	46	9262
46025	46	3802
46027	46	14246
46029	46	28186
46031	46	4031
46033	46	9017
46035	46	19812
46037	46	5345
46039	46	4346
46041	46	5789
46043	46	2906
46045	46	3817
46047	46	6708
46049	46	2306
46051	46	7000
46053	46	4219
46055	46	1861
46057	46	6234
46059	46	3127
46061	46	3489
46063	46	1311
46065	46	17336
46067	46	7282
46069	46	1281
46071	46	3321
46073	46	1985
46075	46	938
46077	46	4987
46079	46	12488
46081	46	26221
46083	46	63019
46085	46	3797
46087	46	5520
46089	46	2363
46091	46	4884
46093	46	28588
46095	46	2089
46097	46	2202
46099	46	196659
46101	46	6525
46102	46	14070
46103	46	115926
46105	46	2832
46107	46	2163
46109	46	10331
46111	46	2322
46115	46	6319
46117	46	3121
46119	46	1391
46121	46	10313
46123	46	5377
46125	46	8368
46127	46	16192
46129	46	5336
46135	46	22742
46137	46	2656
47001	47	77558
47003	47	50179
47005	47	16131
47007	47	15223
47009	47	134751
47011	47	109071
47013	47	39837
47015	47	14847
47017	47	27779
47019	47	56418
47021	47	41101
47023	47	17432
47025	47	32023
47027	47	7629
47029	47	36225
47031	47	57632
47033	47	14180
47035	47	61603
47037	47	694176
47039	47	11601
47041	47	20837
47043	47	54376
47045	47	36693
47047	47	41620
47049	47	18787
47051	47	42485
47053	47	49159
47055	47	29530
47057	47	23565
47059	47	69571
47061	47	13485
47063	47	65110
47065	47	371662
47067	47	6493
47069	47	24836
47071	47	25583
47073	47	56775
47075	47	17002
47077	47	28076
47079	47	32056
47081	47	25387
47083	47	8292
47085	47	18590
47087	47	11864
47089	47	55307
47091	47	17849
47093	47	475609
47095	47	6988
47097	47	25451
47099	47	44432
47101	47	12363
47103	47	34540
47105	47	54910
47107	47	54208
47109	47	25696
47111	47	24827
47113	47	98360
47115	47	28924
47117	47	35016
47119	47	99590
47121	47	12532
47123	47	47177
47125	47	214251
47127	47	6438
47129	47	21431
47131	47	30131
47133	47	22566
47135	47	8099
47137	47	5061
47139	47	16835
47141	47	80929
47143	47	33443
47145	47	53841
47147	47	72275
47149	47	339261
47151	47	22090
47153	47	15176
47155	47	99244
47157	47	936017
47159	47	20285
47161	47	13859
47163	47	158755
47165	47	195561
47167	47	61918
47169	47	11455
47171	47	17755
47173	47	20187
47175	47	5947
47177	47	41605
47179	47	130367
47181	47	16524
47183	47	33334
47185	47	27707
47187	47	245348
47189	47	148130
48001	48	57805
48003	48	18879
48005	48	86796
48007	48	23814
48009	48	8730
48011	48	1869
48013	48	51724
48015	48	29972
48017	48	6697
48019	48	23861
48021	48	91601
48023	48	3518
48025	48	32513
48027	48	369927
48029	48	2026823
48031	48	12269
48033	48	706
48035	48	18603
48037	48	93481
48039	48	380518
48041	48	232555
48043	48	9237
48045	48	1487
48047	48	6964
48049	48	37633
48051	48	18514
48053	48	49653
48055	48	43979
48057	48	21001
48059	48	14110
48061	48	424180
48063	48	13060
48065	48	5854
48067	48	29879
48069	48	7396
48071	48	45590
48073	48	52875
48075	48	7143
48077	48	10550
48079	48	2897
48081	48	3323
48083	48	8100
48085	48	1072069
48087	48	2877
48089	48	21610
48091	48	164812
48093	48	13750
48095	48	2827
48097	48	41393
48099	48	76737
48101	48	1363
48103	48	4765
48105	48	3513
48107	48	5567
48109	48	2149
48111	48	7273
48113	48	2635888
48115	48	12974
48117	48	18277
48119	48	5349
48121	48	919324
48123	48	20174
48125	48	2140
48127	48	9925
48129	48	3308
48131	48	11058
48133	48	18388
48135	48	167701
48137	48	1923
48139	48	191760
48141	48	841286
48143	48	43224
48145	48	17275
48147	48	35913
48149	48	25547
48151	48	3784
48153	48	5672
48155	48	1135
48157	48	839706
48159	48	10821
48161	48	19874
48163	48	20379
48165	48	21996
48167	48	345089
48169	48	6222
48171	48	26960
48173	48	1439
48175	48	7626
48177	48	20948
48179	48	21658
48181	48	138318
48183	48	124229
48185	48	29614
48187	48	170608
48189	48	32754
48191	48	2939
48193	48	8557
48195	48	5279
48197	48	4011
48199	48	58305
48201	48	4738253
48203	48	66386
48205	48	5443
48207	48	5754
48209	48	241365
48211	48	3777
48213	48	83792
48215	48	875200
48217	48	37006
48219	48	22921
48221	48	63527
48223	48	37170
48225	48	22835
48227	48	36540
48229	48	4906
48231	48	99807
48233	48	20677
48235	48	1564
48237	48	9056
48239	48	14854
48241	48	35375
48243	48	2220
48245	48	250127
48247	48	5184
48249	48	40452
48251	48	179575
48253	48	19875
48255	48	15562
48257	48	143198
48259	48	48523
48261	48	379
48263	48	786
48265	48	52869
48267	48	4396
48269	48	283
48271	48	3670
48273	48	30338
48275	48	3683
48277	48	49905
48279	48	12710
48281	48	21789
48283	48	7500
48285	48	20216
48287	48	17397
48289	48	17493
48291	48	91547
48293	48	23340
48295	48	3111
48297	48	12324
48299	48	21958
48301	48	181
48303	48	314772
48305	48	6025
48307	48	7823
48309	48	259730
48311	48	721
48313	48	14427
48315	48	9960
48317	48	5816
48319	48	4344
48321	48	36725
48323	48	58378
48325	48	52358
48327	48	2124
48329	48	177863
48331	48	24708
48333	48	4840
48335	48	8202
48337	48	19962
48339	48	626351
48341	48	20654
48343	48	12393
48345	48	1185
48347	48	64753
48349	48	50694
48351	48	13414
48353	48	14835
48355	48	363148
48357	48	9598
48359	48	2135
48361	48	82878
48363	48	29320
48365	48	23187
48367	48	148198
48369	48	9522
48371	48	15718
48373	48	52995
48375	48	116004
48377	48	6508
48379	48	12552
48381	48	139899
48383	48	3833
48385	48	3411
48387	48	11995
48389	48	15949
48391	48	6877
48393	48	813
48395	48	17155
48397	48	109888
48399	48	10401
48401	48	54324
48403	48	10507
48405	48	8248
48407	48	29301
48409	48	67069
48411	48	6039
48413	48	2761
48415	48	16662
48417	48	3300
48419	48	24915
48421	48	3027
48423	48	235806
48425	48	9139
48427	48	64266
48429	48	9334
48431	48	1315
48433	48	1348
48435	48	3738
48437	48	7340
48439	48	2123347
48441	48	139200
48443	48	702
48445	48	12183
48447	48	1487
48449	48	32926
48451	48	120010
48453	48	1300503
48455	48	14883
48457	48	21591
48459	48	42166
48461	48	3623
48463	48	26742
48465	48	49028
48467	48	57533
48469	48	91936
48471	48	72164
48473	48	57452
48475	48	12097
48477	48	35771
48479	48	277681
48481	48	41685
48483	48	4946
48485	48	133205
48487	48	12552
48489	48	21161
48491	48	617855
48493	48	52023
48495	48	7887
48497	48	71084
48499	48	46291
48501	48	8702
48503	48	17904
48505	48	14172
48507	48	11840
49001	49	6761
49003	49	57007
49005	49	130004
49007	49	20760
49009	49	1026
49011	49	359232
49013	49	19894
49015	49	10147
49017	49	5050
49019	49	9796
49021	49	56814
49023	49	12122
49025	49	7914
49027	49	13327
49029	49	12462
49031	49	1473
49033	49	2452
49035	49	1165517
49037	49	15278
49039	49	31393
49041	49	21780
49043	49	42499
49045	49	74512
49047	49	35970
49049	49	651059
49051	49	35300
49053	49	184913
49055	49	2759
49057	49	262658
50001	50	36851
50003	50	35338
50005	50	29705
50007	50	164306
50009	50	6123
50011	50	49685
50013	50	7169
50015	50	25341
50017	50	28837
50019	50	26897
50021	50	57764
50023	50	58328
50025	50	42015
50027	50	54988
51001	51	32238
51003	51	110652
51005	51	14701
51007	51	13014
51009	51	31667
51011	51	16043
51013	51	240119
51015	51	76544
51017	51	4119
51019	51	79811
51021	51	6239
51023	51	33633
51025	51	16037
51027	51	20613
51029	51	17168
51031	51	55304
51033	51	30860
51035	51	30074
51036	51	6821
51037	51	11820
51041	51	358245
51043	51	14622
51045	51	5077
51047	51	53569
51049	51	9933
51051	51	14078
51053	51	28688
51057	51	10943
51059	51	1150847
51061	51	71361
51063	51	15777
51065	51	27422
51067	51	56167
51069	51	91119
51071	51	16663
51073	51	37459
51075	51	24431
51077	51	15493
51079	51	20131
51081	51	11280
51083	51	33633
51085	51	108262
51087	51	333766
51089	51	50309
51091	51	2200
51093	51	37725
51095	51	77612
51097	51	6942
51099	51	27381
51101	51	17641
51103	51	10618
51105	51	23238
51107	51	422784
51109	51	38132
51111	51	12267
51113	51	13312
51115	51	8766
51117	51	30679
51119	51	10569
51121	51	98391
51125	51	14755
51127	51	23648
51131	51	11673
51133	51	12069
51135	51	15160
51137	51	37695
51139	51	23933
51141	51	17493
51143	51	59850
51145	51	30148
51147	51	23006
51149	51	38686
51153	51	475533
51155	51	33935
51157	51	7260
51159	51	9071
51161	51	94509
51163	51	22757
51165	51	82346
51167	51	26647
51169	51	21629
51171	51	43905
51173	51	30090
51175	51	17636
51177	51	138449
51179	51	156748
51181	51	6385
51183	51	10925
51185	51	40529
51187	51	40475
51191	51	53695
51193	51	18149
51195	51	37206
51197	51	28620
51199	51	69199
51510	51	158726
51520	51	17329
51530	51	6402
51540	51	46950
51550	51	247011
51570	51	17205
51580	51	5639
51590	51	39869
51595	51	5257
51600	51	23429
51610	51	14631
51620	51	7833
51630	51	29492
51640	51	6296
51650	51	135464
51660	51	53204
51670	51	22375
51678	51	7279
51680	51	81561
51683	51	40869
51685	51	18004
51690	51	12355
51700	51	179062
51710	51	242803
51720	51	3985
51730	51	30446
51735	51	12257
51740	51	95094
51750	51	18255
51760	51	232226
51770	51	99058
51775	51	25340
51790	51	25190
51800	51	93913
51810	51	451231
51820	51	22741
51830	51	15259
51840	51	27700
53001	53	20027
53003	53	22820
53005	53	206426
53007	53	77574
53009	53	78067
53011	53	496865
53013	53	4048
53015	53	111371
53017	53	43560
53019	53	7759
53021	53	97075
53023	53	2290
53025	53	99377
53027	53	75950
53029	53	86014
53031	53	32700
53033	53	2274315
53035	53	272787
53037	53	49204
53039	53	22697
53041	53	82109
53043	53	11090
53045	53	68224
53047	53	42620
53049	53	22984
53051	53	14144
53053	53	913890
53055	53	17492
53057	53	130789
53059	53	12107
53061	53	830393
53063	53	528225
53065	53	46360
53067	53	294074
53069	53	4498
53071	53	61292
53073	53	231016
53075	53	49500
53077	53	251879
54001	54	16444
54003	54	122125
54005	54	21055
54007	54	13702
54009	54	21674
54011	54	91589
54013	54	6945
54015	54	8341
54017	54	8368
54019	54	42062
54021	54	7811
54023	54	11510
54025	54	34319
54027	54	23190
54029	54	28571
54031	54	13633
54033	54	66870
54035	54	28453
54037	54	57486
54039	54	176253
54041	54	15805
54043	54	20043
54045	54	31688
54047	54	16916
54049	54	55962
54051	54	30103
54053	54	26335
54055	54	58258
54057	54	26722
54059	54	22951
54061	54	106819
54063	54	13229
54065	54	17873
54067	54	24340
54069	54	41182
54071	54	6932
54073	54	7438
54075	54	8190
54077	54	33380
54079	54	56428
54081	54	72920
54083	54	28387
54085	54	9499
54087	54	13482
54089	54	12444
54091	54	16699
54093	54	6816
54095	54	8533
54097	54	24230
54099	54	39054
54101	54	8058
54103	54	14904
54105	54	5705
54107	54	82938
54109	54	20123
55001	55	20498
55003	55	15415
55005	55	45090
55007	55	15242
55009	55	264610
55011	55	13033
55013	55	15557
55015	55	50209
55017	55	64737
55019	55	34720
55021	55	57668
55023	55	16021
55025	55	552536
55027	55	87336
55029	55	27889
55031	55	43702
55033	55	45452
55035	55	105260
55037	55	4298
55039	55	102902
55041	55	8960
55043	55	51021
55045	55	36603
55047	55	18908
55049	55	23640
55051	55	5698
55053	55	20630
55055	55	85038
55057	55	26908
55059	55	169671
55061	55	20386
55063	55	118502
55065	55	16646
55067	55	19119
55069	55	27566
55071	55	78757
55073	55	135593
55075	55	40262
55077	55	15585
55078	55	4546
55079	55	945016
55081	55	46582
55083	55	38383
55085	55	35751
55087	55	188766
55089	55	90043
55091	55	7271
55093	55	42700
55095	55	43794
55097	55	71032
55099	55	13245
55101	55	195802
55103	55	17258
55105	55	163084
55107	55	14022
55109	55	91838
55111	55	64449
55113	55	16700
55115	55	40786
55117	55	115240
55119	55	20318
55121	55	29681
55123	55	30861
55125	55	22356
55127	55	103953
55129	55	15712
55131	55	136445
55133	55	406172
55135	55	50664
55137	55	24326
55139	55	171631
55141	55	72560
56001	56	38950
56003	56	11575
56005	56	46676
56007	56	14711
56009	56	13804
56011	56	7593
56013	56	39317
56015	56	13235
56017	56	4425
56019	56	8588
56021	56	100595
56023	56	20253
56025	56	80815
56027	56	2275
56029	56	29331
56031	56	8578
56033	56	30863
56035	56	9856
56037	56	42673
56039	56	23497
56041	56	20215
56043	56	7760
56045	56	6743
\.


--
-- Data for Name: fips_code_county; Type: TABLE DATA; Schema: public; Owner: -
--

--
-- Data for Name: fips_code_state; Type: TABLE DATA; Schema: public; Owner: -
--


--
-- Data for Name: msa; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.msa (msa_id, url_name, name, state_fips_code) FROM stdin;
1280	BuffaloNiagara	Buffalo Area	36
9320	YoungstownWarren	Youngstown/Warren	39
5720	NorfolkVA	Norfolk Area	51
4920	Memphis	Memphis	47
1560	Chattanooga	Chattanooga	47
875	Bergen	Bergen/Passaic	34
840	Beaumont	Beaumont/Port Arthur Area	48
9000	Wheeling	Wheeling	39
7920	Springfield_MO	Springfield, MO	29
1040	BayArea	Bay Area	06
4280	Lexington	Lexington	21
3760	KansasCity	Kansas City Area	29
6280	Pittsburgh	Pittsburgh	42
5360	Nashville	Nashville	47
240	Allentown	Allentown Area	42
3720	Kalamazoo	Kalamazoo/Battle Creek	26
2120	DesMoines	Des Moines	19
4400	Little Rock	Little Rock	05
380	Anchorage	Anchorage Area	02
1010	Bismarck	Bismarck	38
4640	Lynchburg	Lynchburg	51
1540	Charlottesville	Charlottesville	51
8003	Springfield_MA	Springfield MA	25
1520	Charlotte	Greater Charlotte Area	37
600	AugustaAiken	Augusta/Aiken	13
8320	TerreHaute	Terre Haute	18
8840	DC	Greater DC Area	11
7600	Seattle	Seattle Area	53
1050	NYC	New York City	36
40	Abilene	Abilene Area	48
8160	Syracuse	Syracuse	36
3160	Greenville	Greenville Area	45
1640	Cincinnati	Cincinnati Area	39
6160	Philly	Philadelphia	42
4680	Macon	Macon	13
3660	JohnsonCity	Johnson City/Kingsport/Bristol	47
1840	Columbus_OH	Columbus (OH)	39
7040	StLouis	St. Louis	17
1480	Charleston	Charleston	54
2080	Denver	Denver	08
5880	OklahomaCity	Oklahoma City	40
7560	Scranton	Scranton	42
4520	Louisville	Louisville	18
6640	RaleighChapelHill	Raleigh/Chapel Hill Area	37
4040	Lansing	Lansing Area	26
500	Athens	Athens Area	13
3000	GrandRapids	Grand Rapids Area	26
3290	Hickory	Hickory/Morganton/Lenoir	37
120	AlbanyGA	Albany (GA) Area	13
3480	Indianapolis	Indianapolis Area	18
8280	Tampa	Tampa Area	12
9040	Wichita	Wichita	20
1440	Charleston	Greater Charleston Area	45
3283	Hartford	Greater Hartford Area	09
6840	Rochester	Rochester	36
460	Appleton	Appleton	55
1080	Boise	Boise City	16
560	AtlanticMay	Atlantic/Cape May	34
1900	Cumberland	Cumberland	24
5960	Orlando	Orlando	12
4120	Las Vegas	Las Vegas	32
3600	Jacksonville	Jacksonville	12
1680	Cleveland	Cleveland	39
1760	Columbia	Columbia (SC)	45
760	BatonRouge	Baton Rouge	22
6800	Roanoke	Roanoke	51
5120	MinneapolisStPaul	Minneapolis/St. Paul	27
440	AnnArbor	Ann Arbor Area	26
640	Austin	Greater Austin	48
220	Alexandria	Alexandria Area	22
720	Baltimore	Greater Baltimore	24
1600	Chicago	Chicagoland Area	17
320	Amarillo	Amarillo Area	48
2160	Detroit	Detroit Area	26
2000	Dayton	Dayton Area	39
6760	RichmondPetersburg	Richmond/Petersburg	51
1000	Birmingham	Birmingham	01
5015	MiddlesexNJ	Middlesex Area	34
3360	Houston	Houston Area	48
480	Asheville	Asheville Area	37
7160	SLT	Salt Lake City	49
450	Anniston	Anniston Area	01
5560	NewOrleans	New Orleans	22
6960	Saginaw	Saginaw Area	26
5240	Montgomery	Montgomery	01
1660	Clarksville	Clarksville	47
80	Akron	Akron Area	39
7680	Shreveport	Shreveport	22
7240	SanAntonio	San Antonio	48
5080	Milwaukee	Milwaukee Area	55
4420	Longview	Longview/Marshall	48
6440	Portland	Portland	41
5640	Newark	Newark	34
1800	Columbus_GA	Columbus (GA)	13
3880	Lafayette	Lafayette (LA)	22
1123	Boston	Greater Boston Area	25
200	Albuquerque	Albuquerque Area	35
8560	Tulsa	Tulsa	40
7520	Savannah	Savannah	13
160	AlbanyNY	Albany (NY) Area	36
6120	PeoriaPekin	Peoria/Pekin	17
820	Atlanta	Atlanta Area	13
1880	CorpusChristi	Corpus Christi	48
3840	Knoxville	Knoxville	47
1920	Dallas	Greater Dallas	48
6880	Rockford	Rockford	17
3240	Harrisburg	Harrisburg Area	42
960	Binghamton	Binghamton	36
8080	Steubenville	Steubenville	54
3560	Jackson	Jackson	28
1303	Burlington	Burlington	50
6483	ProvidenceRI	Providence Area	44
920	Biloxi	Biloxi/Gulfport/Pascogoula	28
2760	FortWayne	Fort Wayne	18
3400	HuntingtonAshland	Huntingon/Ashland	39
3120	Greensboro	Greensboro Area	37
5920	Omaha	Omaha	31
8400	Toledo	Toledo	39
6920	Sacramento	Sacramento Area	06
\.


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
-- Data for Name: state_population; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.state_population (state_fips_code, pop2020) FROM stdin;
01	4921532
02	731158
04	7421401
05	3030522
06	39368078
08	5807719
09	3557006
10	986809
11	712816
12	21733312
13	10710017
15	1407006
16	1826913
17	12587530
18	6754953
19	3163561
20	2913805
21	4477251
22	4645318
23	1350141
24	6055802
25	6893574
26	9966555
27	5657342
28	2966786
29	6151548
30	1080577
31	1937552
32	3138259
33	1366275
34	8882371
35	2106319
36	19336776
37	10600823
38	765309
39	11693217
40	3980783
41	4241507
42	12783254
44	1057125
45	5218040
46	892717
47	6886834
48	29360759
49	3249879
50	623347
51	8590563
53	7693612
54	1784787
55	5832655
56	582328
\.
