cd ../../front
call npm install
call ng build
docker build -t "jptttttt/front" .
cd ../back
call gradle build
docker build -t "jptttttt/back" .
cd ../meta/docker-compose
docker-compose up
