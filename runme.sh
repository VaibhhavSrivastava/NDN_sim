#!/bin/bash


echo "Enter username: "
read -s username


echo "Enter Password: "
read -s passName

basedir=$PWD
echo $PWD

nohup python3 $basedir/router.py &

echo $passName | ./pass.sh ssh -o StrictHostKeyChecking=no $username@rasp-025.berry.scss.tcd.ie "nohup python3 $basedir/truck1_create_sensor.py>/dev/null 2>&1 &"
echo $passName | ./pass.sh ssh -o StrictHostKeyChecking=no $username@rasp-040.berry.scss.tcd.ie "nohup python3 $basedir/truck2_create_sensor.py>/dev/null 2>&1 &"
echo $passName | ./pass.sh ssh -o StrictHostKeyChecking=no $username@rasp-041.berry.scss.tcd.ie "nohup python3 $basedir/bike_create_sensor.py>/dev/null 2>&1 &"
echo $passName | ./pass.sh ssh -o StrictHostKeyChecking=no $username@rasp-042.berry.scss.tcd.ie "nohup python3 $basedir/car_create_sensor.py>/dev/null 2>&1 &"
echo $passName | ./pass.sh ssh -o StrictHostKeyChecking=no $username@rasp-043.berry.scss.tcd.ie "nohup python3 $basedir/road_create_sensor.py>/dev/null 2>&1 &"
echo $passName | ./pass.sh ssh -o StrictHostKeyChecking=no $username@rasp-045.berry.scss.tcd.ie "nohup python3 $basedir/router.py>/dev/null 2>&1 &"





