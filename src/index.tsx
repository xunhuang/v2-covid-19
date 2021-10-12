import './index.css';

import { ApolloClient, ApolloProvider, InMemoryCache } from '@apollo/client';
import ReactDOM from 'react-dom';

import App from './App';
import reportWebVitals from './reportWebVitals';

const client = new ApolloClient({
  uri: "http://localhost:5000/graphql",
  // uri: "https://helloworld-capsc6nslq-uc.a.run.app/graphql",

  cache: new InMemoryCache(),
});
const ApolloApp = (AppComponent: any) => (
  <ApolloProvider client={client}>
    <AppComponent />
  </ApolloProvider>
);

ReactDOM.render(ApolloApp(App), document.getElementById("root"));
reportWebVitals();
