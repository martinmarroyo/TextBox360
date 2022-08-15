@ECHO off
REM Building the image
ECHO Starting TextBox360...
CD ..
docker build -q -t marroyo777/textbox360:0.1 .
REM Starting the containers
docker run -d --name textbox360 marroyo777/textbox360:0.1
cls
docker exec -it textbox360 /bin/sh
