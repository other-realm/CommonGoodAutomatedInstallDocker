#!/bin/sh
#git clone https://github.com/other-realm/rcredits-mobile.git
docker build -t commongood .
docker run -p 12345:8100 --name commongood otherrealm/commongood