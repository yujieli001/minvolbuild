FROM google/golang
RUN CGO_ENABLED=0 go get -a -ldflags '-s' github.com/yujieli001/minvol
RUN cp /go/src/github.com/yujieli001/minvol/Dockerfile /go/src/app
CMD docker build -t yujieli/minvol /go/src/app
