FROM mcr.microsoft.com/terraform-test:0.12.20 as base
ENV ARCH amd64
ENV OS linux

FROM base as go
COPY ./docker/go /go
WORKDIR /go/src/project
COPY . .
RUN ls -la
ENV GOPATH /go
ENV GOBIN /usr/local/go/bin
ENV PATH .bin:$GOBIN:$GOPATH/bin:$PATH
RUN /bin/bash -c "curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh"

FROM go as test
RUN go test -v ./go/test
