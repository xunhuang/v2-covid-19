import './App.css';

import Disqus from 'disqus-react';
import React from 'react';
import { BrowserRouter as Router, Redirect, Route, RouteComponentProps, Switch } from 'react-router-dom';
import { RecoilRoot } from 'recoil';

import { CountyPage } from './CountyPage';
import { AppHeaderSection } from './HeaderFooter/AppHeaderSection';
import { Footer } from './HeaderFooter/Footer';
import { MetroPage } from './MetroPage';
import { StatePage } from './StatePage';
import { FullDiv } from './styles/HomeStyles';
import { FrontPage } from './USPage/FrontPage';
import { USPage } from './USPage/USPage';

interface IRoute {
  path: string;
  component: any;
  name: string; // Used to update page infon and title.
}

const routes: IRoute[] = [
  {
    path: "/",
    component: FrontPage,
    name: "Front Page",
  },
  {
    path: "/US",
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
  {
    path: "/metro/:msa_id",
    component: MetroPage,
    name: "State",
  },
];

export interface IApplicationProps {}
const App: React.FunctionComponent<IApplicationProps> = (props) => {
  return (
    <div className="App">
      <header className="App-header">
        <RecoilRoot>
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
                <Route render={() => <Redirect to="/" />} />
              </Switch>
            </Router>
            <FooterSection />
          </FullDiv>
        </RecoilRoot>
      </header>
    </div>
  );
};

const FooterSection = () => {
  const disqusShortname = "covid19direct";
  const disqusConfig = {
    url: "https://covid-19.direct",
    identifier: "article-id",
    title: "main page",
  };
  return (
    <FullDiv>
      <Disqus.DiscussionEmbed
        shortname={disqusShortname}
        config={disqusConfig}
      />
      <Footer></Footer>
    </FullDiv>
  );
};

export default App;
