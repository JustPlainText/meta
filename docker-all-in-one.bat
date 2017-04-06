cd ../front
call ng build
docker build -t "front" .
cd ../back
call gradle build buildDocker
cd ../meta
docker-compose up