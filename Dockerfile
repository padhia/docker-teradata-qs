FROM centos:centos7

ADD tdrestd*rpm /tmp

RUN yum -y install java-headless && yum clean all
RUN rpm -ivh /tmp/tdrestd*rpm
RUN rm /tmp/tdrestd*rpm

EXPOSE 1080

CMD cd /opt/teradata/rest/daemon/bin && export CATALINA_HOME=/opt/teradata/rest/daemon && export CATALINA_PID="/var/opt/teradata/rest/daemon/tdrestd.pid" && su -s /bin/bash -c "exec /opt/teradata/rest/daemon/bin/catalina.sh run" tdrest
