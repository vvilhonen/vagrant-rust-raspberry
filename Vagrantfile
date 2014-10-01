# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<SCRIPT
apt-get -y update
apt-get -y upgrade
apt-get -y install build-essential git
test ! -e ~/pi-tools && git clone https://github.com/raspberrypi/tools.git ~/pi-tools
if [ ! -e ~/rust ]; then
  git clone http://github.com/mozilla/rust.git ~/rust
  cd ~/rust
  export PATH=~/pi-tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin:$PATH
  ./configure --target=arm-unknown-linux-gnueabihf --prefix=$HOME/pi-rust && make -j4 && make install
fi
SCRIPT

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "rustkaantaja"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 3000
    vb.cpus = 4
  end

  config.vm.provision "shell", inline: $script
end
