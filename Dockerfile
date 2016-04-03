FROM jenkins:2.0-beta-2
MAINTAINER Gottfried Ganßauge <Gottfried.Ganssauge@haufe-lexware.com>
COPY jenkins_plugins.txt /tmp/jenkins_plugins.txt
USER root
RUN cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime
USER jenkins
RUN /usr/local/bin/plugins.sh /tmp/jenkins_plugins.txt
USER root
RUN rm /tmp/jenkins_plugins.txt
USER jenkins
