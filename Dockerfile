FROM centos:centos7

COPY query-service-*.rpm /tmp

RUN yum -y install java-headless && \
    yum clean all && \
	rpm -ivh /tmp/query-service-*.rpm && \
	rm /tmp/query-service-*.rpm

EXPOSE 1080
EXPOSE 1443

USER tdrest

CMD /opt/teradata/rest/bin/run.sh tdrest
