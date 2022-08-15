#!/bin/bash
echo Starting TextBox360...
cd ..
docker build -q -t marroyo777/textbox360:0.1 .
docker run -d --name textbox360 marroyo777/textbox360:0.1
clear
docker exec -it textbox360 /bin/sh