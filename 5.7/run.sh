mkdir -p /data/docker && cd /data/docker
git clone https://github.com/docker-library/percona.git
cd /data/docker/percona/5.7/
docker build -t percona57 .
#run percona container for the first time only
docker run --name p57 -e MYSQL_ROOT_PASSWORD=p@ssword01 -d percona57
docker commit -p p57 percona57:2

docker run -id --name p572 percona57:2
