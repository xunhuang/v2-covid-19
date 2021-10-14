const express = require("express");
const { postgraphile } = require("postgraphile");

const cors = require('cors');


const app = express();

// node-postgres Pool config (https://node-postgres.com/api/pool,
// https://node-postgres.com/api/client)
const pgConfig = {
  // host: process.env.PGHOST || "localhost",
  // port: process.env.PGPORT || 5432,
  // user: process.env.PGUSER || "postgres",
  // database: process.env.PGDATABASE || "postgres",
  // password: process.env.PGPASSWORD || "mysecretpassword",

  // host: process.env.PGHOST || "kashin.db.elephantsql.com",
  // port: process.env.PGPORT || 5432,
  // user: process.env.PGUSER || "grqssupe",
  // database: process.env.PGDATABASE || "grqssupe",
  // password: process.env.PGPASSWORD || "wVuhYC8zcz31f1PR36tqsuKBoK7GTJFX",

  host: process.env.PGHOST || "/cloudsql/myrandomwatch-b4b41:us-central1:firstpostpostdb",
  // port: process.env.PGPORT || 5432,
  user: process.env.PGUSER || "postgres",
  database: process.env.PGDATABASE || "postgres",
  password: process.env.PGPASSWORD || "3DdeMKqEsqyOE5jL",
};

// Your PostGraphile config:
// https://www.graphile.org/postgraphile/usage-library/#api-postgraphilepgconfig-schemaname-options
const postgraphileOptions = {
enhanceGraphiql:true,
graphiql: true,
};

app.use(cors({
    origin: '*'
}));

app.use(postgraphile(pgConfig, "public", postgraphileOptions));


app.listen(8080);
