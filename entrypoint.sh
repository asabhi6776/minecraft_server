#!/bin/bash

VERSION = "1.19.2"
BUILD = "141"

wget -O /minecraft/server.jar https://api.papermc.io/v2/projects/paper/versions/1.19.2/builds/141/downloads/paper-1.19.2-141.jar

cat > /minecraft/eula.txt << EOF
#By changing the setting below to TRUE you are indicating your agreement to our EULA (https://account.mojang.com/documents/minecraft_eula).
#Wed Feb 16 14:40:43 IST 2022
eula=true
EOF

java -jar server.jar
