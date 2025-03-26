#!/bin/bash

podman rm minecraftum
podman run --pull always --name minecraftum -p 19151:25565 -p 24454:24454 -v /opt/minecraftum/data/:/app/ localhost:32000/minecraftum:latest