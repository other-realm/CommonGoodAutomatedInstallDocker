#!/bin/sh
# cd /var/www/html/rcredits-mobile
npm install
npm rebuild node-sass --force
ionic state restore
# /bin/su - commongood -c '
BUILD_TARGET=development gulp config
ionic setup sass -l
# ionic serve
# ionic info
# ionic run android -- --minSdkVersion=16
nohup ionic serve --nobrowser --nolivereload
tail -f /dev/null