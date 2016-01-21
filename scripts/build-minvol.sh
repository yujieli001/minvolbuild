#!/bin/bash
docker build -t yujieli/minvolbuild github.com/yujieli001/minvolbuild
docker run -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):$(which docker) -ti --name minvolbuild yujieli/minvolbuild
