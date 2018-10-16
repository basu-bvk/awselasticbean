# Docker file for tomcat
FROM tomcat:8.0.43-jre8

# Extracting the war started
ADD . /usr/local/my_app/
RUN unzip /usr/local/my_app/target/testapp.war -d /usr/local/tomcat/webapps/testapp
RUN rm -rf /usr/local/my_app
# Extracting the war ended

EXPOSE 8080
RUN chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]