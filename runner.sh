#!/bin/bash
# Copyright (C) 2019 baalajimaestro
#
# Licensed under the Raphielscape Public License, Version 1.b (the "License");
# you may not use this file except in compliance with the License.
#
# CI Runner Script for Building a ROM

# We need this directive
# shellcheck disable=1090

echo "***BuildBot***"
echo $TELEGRAM_TOKEN > /tmp/tg_token
echo $GH_PERSONAL_TOKEN > /tmp/gh_token
echo $BUILD_NUMBER > /tmp/build_no
echo $TELEGRAM_CHAT > /tmp/tg_chat
#echo `pwd` > /tmp/loc
#sudo echo "ci ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
#useradd -m -d /home/ci ci
#useradd -g ci wheel
echo `pwd` > /tmp/loc
#sudo -Hu ci 
bash ./build.sh -i mosquito -U https://github.com/MosquitoAndroid/manifest.git -B s12.1 -b oneplus -d lemonade -r
