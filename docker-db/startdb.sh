export PGPASSWORD=mysecretpassword 
export PGHOST=localhost 
export PGUSER=postgres 
export PGDB=postgres 
export DOCKER_NAME=postgres_name

docker kill $DOCKER_NAME ; docker rm $DOCKER_NAME
docker run --name $DOCKER_NAME -p 5432:5432 -e POSTGRES_PASSWORD=$PGPASSWORD -d postgres
sleep 5

