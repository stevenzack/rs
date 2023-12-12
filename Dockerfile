FROM scratch

WORKDIR /root

ADD target/x86_64-unknown-linux-musl/release/rs ./main

EXPOSE 8080
CMD [ "./main" ]