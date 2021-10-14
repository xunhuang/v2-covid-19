
npm install --force

# Optional 
To initialize a docker postgres container, the following will 
- create docker container
- create a schema
- initialize data for the queries

cd docker-db
sh startdb.sh

To stop docker db 
docker kill postgres_name ; docker rm postgres_name

# this depends on a DB instance running tweak the params if necessary
npm run db   (this will not stop)
npm run generate

To see the graphiql interface http://localhost:5000/graphiql

npm start 


--- 

to connect to the cloud sql proxy

```
./cloud_sql_proxy -instances=myrandomwatch-b4b41:us-central1:firstpostpostdb=tcp:5432
```