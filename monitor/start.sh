# 停止容器
docker stop alertmanager
# 删除容器
docker rm alertmanager
# 删除镜像
docker rmi hong0220/hong-alertmanager:0.0.1

docker stop grafana
docker rm grafana
docker rmi hong0220/hong-grafana:0.0.1

docker stop prometheus
docker rm prometheus
docker rmi hong0220/hong-prometheus:0.0.1

docker stop node-exporter
docker rm node-exporter
docker rmi hong0220/hong-node-exporter:0.0.1

docker stop cadvisor
docker rm cadvisor
docker rmi hong0220/hong-cadvisor:0.0.1

docker stop mysql
docker rm mysql
docker rmi hong0220/hong-mysql:0.0.1

docker stop mysqld-exporter
docker rm mysqld-exporter
docker rmi hong0220/hong-mysqld-exporter:0.0.1


cd alertmanager
docker build -t hong0220/hong-alertmanager:0.0.1 .
cd ..

cd grafana
docker build -t hong0220/hong-grafana:0.0.1 .
cd ..

cd prometheus
docker build -t hong0220/hong-prometheus:0.0.1 .
cd ..

cd node-exporter
docker build -t hong0220/hong-node-exporter:0.0.1 .
cd ..

cd cadvisor
docker build -t hong0220/hong-cadvisor:0.0.1 .
cd ..

cd mysql
docker build -t hong0220/hong-mysql:0.0.1 .
cd ..

cd mysqld-exporter
docker build -t hong0220/hong-mysqld-exporter:0.0.1 .
cd ..

docker-compose up