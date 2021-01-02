docker stop consul
docker rm consul
docker rmi hong0220/hong-consul:0.0.1

cd consul
docker build -t hong0220/hong-consul:0.0.1 .
cd ..

docker-compose up