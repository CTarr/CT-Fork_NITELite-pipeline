#!/bin/bash
# Short script to test scripting works

docker pull ubuntu
echo "Available images:"
docker image list

echo
echo "Current system parameters:"
uname -a
echo

echo
echo "alpine system parameters:"
docker run alpine uname -a
echo

echo
echo "miniconda system parameters:"
docker run continuumio/miniconda3 /bin/bash -c "uname -a"
echo

echo
echo "nitelite-pipeline system parameters:"
docker compose -f ./build/docker-compose.yaml run interior-nitelite-pipeline bash -c "uname -a"
echo
