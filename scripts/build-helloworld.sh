#!/bin/bash
docker build -t yujieli/hellobuild github.com/yujieli001/hellobuild
docker run -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):$(which docker) -ti --name hellobuild yujieli/hellobuild
