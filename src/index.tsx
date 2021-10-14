import './index.css';

import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client';
import ReactDOM from 'react-dom';

import App from './App';
import reportWebVitals from './reportWebVitals';

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
    uri: "http://localhost:5000/graphql",
    // uri: "https://helloworld-capsc6nslq-uc.a.run.app/graphql",

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