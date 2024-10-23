FROM docker.io/ubuntu 
RUN apt-get update -y 
RUN  touch  file{1..10}.txt
RUN mkdir dir1
RUN apt update -y
RUN apt install apache2 -y
RUN  echo "Hello world " > /var/www/html/index.html
CMD ["apache2ctl","-D","FOREGROUND"]
