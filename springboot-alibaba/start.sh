docker stop mysql
docker rm mysql
docker rmi hong0220/hong-mysql:0.0.1

docker stop nacos
docker rm nacos
#docker rmi nacos/nacos-server:1.1.4

docker stop sentinel
docker rm sentinel
#docker rmi bladex/sentinel-dashboard:1.7.2

cd mysql
docker build -t hong0220/hong-mysql:0.0.1 .
cd ..

docker-compose up