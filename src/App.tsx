import './App.css';

import { TextField } from '@mui/material';
import Autocomplete from '@mui/material/Autocomplete';
import React from 'react';
import { BrowserRouter as Router, Route, RouteComponentProps, Switch, useHistory } from 'react-router-dom';

import { CountyPage } from './CountyPage';
import { useSearchBarDataQuery } from './generated/graphql';
import { StatePage } from './StatePage';
import { FullDiv } from './styles/HomeStyles';
import { USPage } from './USPage/USPage';

interface IRoute {
  path: string;
  component: any;
  name: string; // Used to update page infon and title.
}

const routes: IRoute[] = [
  {
    path: "/",
    component: USPage,
    name: "US Page",
  },
  {
    path: "/state/:state_fips_code",
    component: StatePage,
    name: "State",
  },
  {
    path: "/county/:county_fips_code",
    component: CountyPage,
    name: "State",
  },
];

const AppHeaderSection = () => {
  // return <h1>COVID 19!!!!</h1>;
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
      label: `${county?.countyName},${county?.stateName}(${county?.confirmedCases})`,
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

export interface IApplicationProps {}
const App: React.FunctionComponent<IApplicationProps> = (props) => {
  return (
    <div className="App">
      <header className="App-header">
        <FullDiv>
          <Router>
            <AppHeaderSection />
            <Switch>
              {routes.map((route, index) => (
                <Route
                  key={index}
                  path={route.path}
                  exact={true}
                  render={(routeProps: RouteComponentProps<any>) => {
                    return <route.component {...routeProps} />;
                  }}
                />
              ))}
            </Switch>
          </Router>
        </FullDiv>
      </header>
    </div>
  );
};

export default App;
