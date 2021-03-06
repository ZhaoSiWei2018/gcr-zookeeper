FROM k8s.gcr.io/kubernetes-zookeeper:1.0-3.4.10
RUN apt-get update
RUN apt-get install -y tzdata

RUN rm -f /etc/localtime
RUN rm -f /etc/timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo "Asia/Shanghai" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN mkdir -p /work/admin/zookeeper
RUN chmod 777 -R /work/admin/zookeeper
