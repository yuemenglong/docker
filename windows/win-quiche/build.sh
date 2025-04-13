cargo build --features ffi --release

git submodule update --init --recursive

cargo clean
cargo build --features ffi --profile dev

0.23.4