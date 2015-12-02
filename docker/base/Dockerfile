FROM java:8

ENV JMETER_VERSION 2.13

RUN wget --output-document=/jmeter.tgz \
    http://mirrors.ukfast.co.uk/sites/ftp.apache.org//jmeter/binaries/apache-jmeter-${JMETER_VERSION}.tgz
RUN tar xf /jmeter.tgz
RUN mv /apache-jmeter-${JMETER_VERSION} /jmeter
RUN rm /jmeter.tgz

ENV PATH $PATH:/jmeter/bin
