FROM google/golang
RUN CGO_ENABLED=0 go get -a -ldflags '-s' github.com/yujieli001/helloworld
RUN cp /gopath/src/github.com/yujieli001/helloworld/Dockerfile /gopath
CMD docker build -t yujieli/helloworld gopath
