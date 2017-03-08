#!/bin/bash
if docker images -f "dangling=true" | grep ago --quiet; then
    docker rmi -f $(docker images -f "dangling=true" -q)
fi
