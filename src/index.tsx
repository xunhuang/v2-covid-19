import './index.css';

import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client';
import { getAnalytics, logEvent } from 'firebase/analytics';
import { initializeApp } from 'firebase/app';
import ReactDOM from 'react-dom';

import App from './App';
import reportWebVitals from './reportWebVitals';

try {
  const firebaseConfig = JSON.parse(process.env.REACT_APP_FIREBASE!);
  if (firebaseConfig) {
    const app = initializeApp(firebaseConfig);
    const analytics = getAnalytics(app);
    logEvent(analytics, "app_loaded");
  }
} catch (ex) {
  console.log("No valid firebase config. No biggie, analytics only");
}

const cache = new InMemoryCache();

const init = async () => {
  // await before instantiating ApolloClient, else queries might run before the cache is persisted
  // await persistCache({
  //   cache,
  //   storage: new LocalStorageWrapper(window.localStorage),
  //   maxSize: false,
  //   debug: true,
  // });
  // cache.reset();

  // Continue setting up Apollo as usual.

  const client = new ApolloClient({
    uri:
      process.env.REACT_APP_GRAPHQL_ENDPOINT ||
      "https://helloworld-capsc6nslq-uc.a.run.app/graphql",
    cache: cache,
    connectToDevTools: true,
  });

  const ApolloApp = (AppComponent: any) => (
    <ApolloProvider client={client}>
      <AppComponent />
    </ApolloProvider>
  );

  ReactDOM.render(ApolloApp(App), document.getElementById("root"));
  reportWebVitals();
};

init();