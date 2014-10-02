# Vagrant rust build environment for raspberry pi

Allows crosscompiling rust programs on OS X and Windows for raspberry pi
without compiling toolchain from scratch (if even possible on windows).

Using instructions from
https://github.com/npryce/rusty-pi/blob/master/doc/compile-the-compiler.asciidoc

## Requirements
- Vagrant https://www.vagrantup.com/
- Virtualbox https://www.virtualbox.org

## Setup
$ vagrant up

## Compile hello.rs
$ ./compile.sh

or with windows

$ vagrant ssh
$ cd /vagrant
$ ./compile.sh 


## Run
copy hello to raspberry and execute it
