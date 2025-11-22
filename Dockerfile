FROM alpine:latest AS build
ADD . /src
WORKDIR /src
RUN apk add -U build-base
RUN gcc -static -s -o darkhttpd darkhttpd.c
RUN strip darkhttpd

FROM scratch
LABEL author="Brett Kuskie <fullaxx@gmail.com>"
COPY --from=build /src/darkhttpd /darkhttpd
ENTRYPOINT ["/darkhttpd"]
