run:

b:
	cargo build --target=x86_64-unknown-linux-musl --release
	upx --best --lzma target/x86_64-unknown-linux-musl/release/rs

d:
	docker build -t rs .
	docker run -d -p 8080:8080 --rm --name rs rs