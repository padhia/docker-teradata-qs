FROM centos:centos7

ADD tdrestd*rpm /tmp

RUN yum -y install java-headless && \
    yum clean all && \
	rpm -ivh /tmp/tdrestd*rpm && \
	rm /tmp/tdrestd*rpm

EXPOSE 1080

USER tdrest
ENV CATALINA_HOME=/opt/teradata/rest/daemon CATALINA_PID="/var/opt/teradata/rest/daemon/tdrestd.pid"
WORKDIR /opt/teradata/rest/daemon/bin

CMD /bin/bash -c "exec /opt/teradata/rest/daemon/bin/catalina.sh run"
