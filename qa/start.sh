#docker stop jenkins
#docker rm jenkins
#docker rmi hong0220/hong-jenkins:0.0.1

docker stop centos
docker rm centos
docker rmi hong0220/hong-centos:0.0.1

#cd jenkins
#docker build -t hong0220/hong-jenkins:0.0.1 .
#cd ..

cd centos
docker build -t hong0220/hong-centos:0.0.1 .
cd ..

docker-compose up