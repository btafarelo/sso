FROM tomcat:jdk11-openjdk

COPY webapp build.sh /tmp/

RUN chmod +x /tmp/build.sh && bash /tmp/build.sh && rm -f /tmp/build.sh