FROM centos:latest
RUN mkdir -p /Poc/Dependencies
COPY jdk-8u151-linux-x64 /local
RUN ln -s jdk1.8.0_25 /local/jdk1.8.0_25
RUN export JAVA_HOME=/local/jdk1.8.0_25
RUN export JRE_HOME=/local/jdk1.8.0_25/jre
RUN export PATH=$PATH:/local/jdk1.8.0_25/bin:/local/jdk1.8.0_25/jre/bin
COPY S3folder_name /Poc/Dependencies/
