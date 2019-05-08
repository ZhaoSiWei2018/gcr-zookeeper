FROM k8s.gcr.io/kubernetes-zookeeper:1.0-3.4.10
RUN rm -f /etc/localtime
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN rm -f /etc/timezone
RUN echo "Asia/Shanghai" > /etc/timezone

RUN mkdir -p /work/admin/zookeeper
RUN chmod 777 -R /work/admin/zookeeper
