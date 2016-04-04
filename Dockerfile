FROM jenkins:1.642.3
MAINTAINER Gottfried Ganßauge <Gottfried.Ganssauge@haufe-lexware.com>
COPY jenkins_plugins.txt /tmp/jenkins_plugins.txt
USER jenkins
RUN /usr/local/bin/plugins.sh /tmp/jenkins_plugins.txt
USER root
RUN rm /tmp/jenkins_plugins.txt && \
    cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime
USER jenkins
