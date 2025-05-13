FROM tomcat:8.0-alpine

RUN mkdir -p /usr/local/tomcat/webapps/ROOT
COPY index.html /usr/local/tomcat/webapps/ROOT/index.html

EXPOSE 8084

CMD ["catalina.sh", "run"]