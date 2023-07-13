FROM amazoncorretto:11

RUN yum install -y wget tar vim gzip

# step1. install jmeter
ARG JMETER_VERSION=5.5

WORKDIR /jmeter

RUN wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-$JMETER_VERSION.tgz && \
    tar xvf apache-jmeter-$JMETER_VERSION.tgz && \
    rm apache-jmeter-$JMETER_VERSION.tgz

# step2. install jmeter plugin
RUN wget -O /jmeter/apache-jmeter-$JMETER_VERSION/lib/ext/jmeter-plugins-influxdb2-listener-2.6.jar https://github.com/mderevyankoaqa/jmeter-influxdb2-listener-plugin/releases/download/v2.6/jmeter-plugins-influxdb2-listener-2.6.jar

# step3. set environment
ENV JMETER_HOME=/jmeter/apache-jmeter-5.5
ENV PATH=$JMETER_HOME/bin:$PATH

WORKDIR $JMETER_HOME
