FROM mcr.microsoft.com/terraform-test:latest as base
ENV ARCH amd64
ENV OS linux

FROM base as go
WORKDIR /project
COPY . .
RUN ls -la
ENV GOPATH /go
ENV GOBIN /usr/local/go/bin
ENV PATH .bin:$GOBIN:$GOPATH/bin:$PATH
RUN /bin/bash -c "curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh"

FROM go as test
RUN go test -v ./go/test
