import './App.css';

import React from 'react';
import { BrowserRouter as Router, Route, RouteComponentProps, Switch } from 'react-router-dom';

import { AppHeaderSection } from './AppHeaderSection';
import { CountyPage } from './CountyPage';
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
