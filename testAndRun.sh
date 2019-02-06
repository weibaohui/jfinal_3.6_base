#!/usr/bin/env bash
docker build -t jfinal -f Dockerfile .
docker run -it --rm -p 8080:6099 jfinal



