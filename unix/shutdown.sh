#!/bin/bash
echo Stopping TextBox360...
docker stop textbox360
docker container rm textbox360
echo TextBox360 has closed. Thank you for playing and come again!