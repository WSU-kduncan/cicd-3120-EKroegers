FROM ubuntu
RUN apt-get update 
RUN apt-get install -y apache2 
RUN apt-get install -y apache2-utils 
RUN apt-get clean 
EXPOSE 3000 
CMD ["apache2ctl", "-D", "FOREGROUND"]
