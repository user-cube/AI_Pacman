#!/bin/bash

function kill()
{
    killall python3
}

function deploy()
{
    source venv/bin/activate &
    python3 server.py --ghosts 0 --level 1 --port 8080 &
    sleep 1 
    python3 server.py --ghosts 1 --level 1 --port 8081 &
    sleep 1
    python3 server.py --ghosts 2 --level 2 --port 8082 &
    sleep 1
    python3 server.py --ghosts 4 --level 0 --port 8083 &
    sleep 1
    python3 server.py --ghosts 4 --level 1 --port 8084 &
    sleep 1
    python3 server.py --ghosts 4 --level 2 --port 8085 &
    sleep 1
    python3 server.py --ghosts 1 --level 1 --port 8086 --map data/map2.bmp &
    sleep 1
    python3 server.py --ghosts 2 --level 1 --port 8087 --map data/map2.bmp &
    sleep 1
    python3 server.py --ghosts 4 --level 0 --port 8088 --map data/map2.bmp &
    sleep 1
    python3 server.py --ghosts 4 --level 1 --port 8089 --map data/map2.bmp &
    sleep 1
    python3 server.py --ghosts 4 --level 2 --port 8090 --map data/map2.bmp &
    sleep 1
    python3 server.py --ghosts 1 --level 3 --port 8091 &
    sleep 1
    python3 server.py --ghosts 2 --level 3 --port 8092 &
    sleep 1
    python3 server.py --ghosts 3 --level 3 --port 8093 &
    sleep 1
    python3 server.py --ghosts 4 --level 3 --port 8094 &
    sleep 1
    python3 server.py --ghosts 1 --level 3 --port 8095 --map data/map2.bmp &
    sleep 1
    python3 server.py --ghosts 2 --level 3 --port 8096 --map data/map2.bmp &
    sleep 1
    python3 server.py --ghosts 3 --level 3 --port 8097 --map data/map2.bmp &
    sleep 1
    python3 server.py --ghosts 4 --level 3 --port 8098 --map data/map2.bmp
     
}

trap "kill ; exit 0" SIGINT

deploy
