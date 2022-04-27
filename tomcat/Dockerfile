FROM tomcat:9.0-jdk11-openjdk

COPY . /tmp/

RUN chmod +x /tmp/build.sh && bash /tmp/build.sh && rm -rf /tmp/*