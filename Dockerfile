FROM google/golang
RUN CGO_ENABLED=0 go get -a -ldflags '-s' github.com/yujieli001/minvol
RUN cp /gopath/src/github.com/yujieli001/minvol/Dockerfile /gopath
CMD docker build -t yujieli/minvol gopath
