#!/usr/bin/env bash

sudo apt update

sudo apt install -y bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev libncurses5 git repo openjdk-8-jdk adb fastboot

mkdir los

mkdir -p ~/bin

curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

chmod a+x ~/bin/repo

cd $HOME/los

rm -rf frameworks/base

git config --global user.name "Fulano de Tal" && git config --global user.email fulanodetal@exemplo.pt
git config --global color.ui true

python3 $HOME/bin/repo init -u https://github.com/LineageOS/android.git -b lineage-18.1


python3 $HOME/bin/repo sync --current-branch --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j32
#https://gerrit.googlesource.com/git-repo/+/master/subcmds/sync.py
