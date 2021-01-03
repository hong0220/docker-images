docker stop mysql
docker rm mysql
docker rmi hong0220/hong-mysql:0.0.1

cd mysql
docker build -t hong0220/hong-mysql:0.0.1 .
cd ..

docker-compose up