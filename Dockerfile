
FROM location of the base image
COPY open-jdk.zip /application
CMD unzip open-jdk.zip
CMD export JAVA_HOME=/application/jre/bin/java
CMD export PATH=$PATH:$JAVAHOME
COPY manoj.jar /application/
COPY run.sh /application/
