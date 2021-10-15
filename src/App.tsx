import './App.css';

import Disqus from 'disqus-react';
import React from 'react';
import { BrowserRouter as Router, Route, RouteComponentProps, Switch } from 'react-router-dom';

import { CountyPage } from './CountyPage';
import { AppHeaderSection } from './HeaderFooter/AppHeaderSection';
import { Footer } from './HeaderFooter/Footer';
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
          <FooterSection />
        </FullDiv>
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
