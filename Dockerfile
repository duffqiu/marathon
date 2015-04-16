FROM duffqiu/scala:latest
MAINTAINER duffqiu@gmail.com

RUN yum -y  update
RUN yum install -y wget tar

# install Marathon from mesosphere
#RUN rpm -Uvh http://repos.mesosphere.io/el/7/noarch/RPMS/mesosphere-el-repo-7-1.noarch.rpm
#RUN yum -y install marathon

RUN wget --no-cookies --no-check-certificate  http://downloads.mesosphere.io/marathon/v0.8.1/marathon-0.8.1.tgz -O marathon.tgz

RUN tar zxf marathon.tgz

RUN rm -rf marathon.tgz

WORKDIR /marathon

ENTRYPOINT ["./bin/start"]
