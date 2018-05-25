#!/usr/bin/env bash

docker build -t 056154071827.dkr.ecr.us-east-1.amazonaws.com/auto-ssl-redirector:$ENVIRONMENT-$BUILD_NUMBER .
