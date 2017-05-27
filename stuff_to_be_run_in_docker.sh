#!/bin/sh
npm install
npm rebuild node-sass --force
ionic state restore
# /bin/su - commongood -c '
bower install --allow-root
ionic setup sass -l
# ionic serve
# ionic info
# ionic run android -- --minSdkVersion=16
nohup ionic serve --nobrowser --nolivereload $> ionic.log &