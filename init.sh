#!/bin/sh
cd minecraft
wget https://serverjars.com/api/fetchJar/vanilla/vanilla/$VERSION -O server.jar

curl -L $MAPURL > map.zip
unzip map.zip -d world

java -jar server.jar nogui
sed -i 's/^eula=.*/eula=true/' eula.txt
sed -i "s/^pvp=.*/pvp=$PVP/" server.properties
sed -i 's/^enable-command-block=.*/enable-command-block=true/' server.properties
java -jar server.jar nogui