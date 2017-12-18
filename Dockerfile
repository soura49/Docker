FROM amazonlinux:latest
RUN mkdir -p /Poc/Dependencies
COPY jdk-8u151-linux-x64 /local
RUN ln -s jdk1.8.0_25 /local/jdk1.8.0_25
RUN export JAVA_HOME=/local/jdk1.8.0_25
RUN export JRE_HOME=/local/jdk1.8.0_25/jre
RUN export PATH=$PATH:/local/jdk1.8.0_25/bin:/local/jdk1.8.0_25/jre/bin
COPY Elecktron-sdk1.1.1.java.rrg.zip /poc/Dependencies
COPY Elektron-SDK_1.1.1 /poc/Dependencies
COPY -R tos_packages /Poc
RUN export TOS=/poc/tos_packages
RUN export ROBOT=/poc/tos_packages/
