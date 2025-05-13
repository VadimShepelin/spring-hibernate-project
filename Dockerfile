FROM tomcat:8.0-alpine

RUN sed -i 's/port="8080"/port="8084"/g' /usr/local/tomcat/conf/server.xml
RUN mkdir -p /usr/local/tomcat/webapps/ROOT
COPY index.html /usr/local/tomcat/webapps/ROOT/index.html

EXPOSE 8084

CMD ["catalina.sh", "run"]