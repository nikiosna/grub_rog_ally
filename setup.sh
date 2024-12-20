#!/bin/bash
git clone https://git.savannah.gnu.org/git/grub.git
cd grub
git clone https://git.savannah.gnu.org/git/gnulib.git
cd ..
mv grub grub_clean_repo

sudo apt-get install build-essential autoconf automake autopoint bison flex gawk
sudo apt-get install qemu-system-x86
