#!/bin/sh
npm install
npm rebuild node-sass --force
ionic state restore
BUILD_TARGET=development gulp config
ionic setup sass -l
nohup ionic serve --nobrowser --nolivereload
tail -f /dev/null