docker rm cg -f
docker build -t commongood .
docker run -d -p 8888:8100 -i --name cg otherrealm/commongood
