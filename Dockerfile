# escape=`
FROM node:6.10.3
WORKDIR /var/www/html/
RUN apt install git
RUN npm install -g ionic@2.1.18
RUN npm install -g bower --allow-root
RUN npm install -g cordova
RUN npm install -g sass
RUN npm install -g gulp
COPY [".", "/var/www/html/"]
EXPOSE 8100
EXPOSE 8101
EXPOSE 80
VOLUME rcredits-mobile
# RUN useradd -m -d /var/www/html/ commongood
# RUN /bin/su - commongood -c 'bower install --allow-root'
WORKDIR /var/www/html/rcredits-mobile
CMD ["sh", "/var/www/html/stuff_to_be_run_in_docker.sh"]