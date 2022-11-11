FROM mcr.microsoft.com/terraform-test:0.12.20 as base

FROM base as go
COPY ./go /go
WORKDIR /go/src/project
COPY . .
RUN ls -la

ENV GOPATH /go
ENV GOBIN /usr/local/go/bin
ENV OS linux
ENV ARCH amd64
ENV PATH .bin:$GOBIN:$GOPATH/bin:$PATH

RUN /bin/bash -c "curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh"
RUN go
