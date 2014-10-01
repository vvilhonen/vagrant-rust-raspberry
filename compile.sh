#!/usr/bin/env bash

vagrant ssh -c bash <<-EOF
sudo su
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/pi-rust/lib
export PATH=$PATH:~/pi-tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin
cd /vagrant
~/pi-rust/bin/rustc --target=arm-unknown-linux-gnueabihf -C linker=arm-linux-gnueabihf-g++ hello.rs
EOF
