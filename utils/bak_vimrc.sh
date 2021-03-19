#!/bin/bash

######################
# author:st          #
# date: 2021.03.18   #
# des:backup vimrc  #
######################

set -e

export home=~/
export vimrc=~/.vimrc
export vimrc_sample=~/.vim_runtime/vimrc_sample
export vimrc_sample_bak=~/.vim_runtime/backup/vimrc_sample.bak.$(date "+%Y-%m-%d-%H:%M:%S")

echo "backup: ${vimrc_sample}  --->  ${vimrc_sample_bak}"
echo "backup: ${vimrc}  --->  ${vimrc_sample}"

echo "start backup ..."
echo "############################################################"

if [ -f "${vimrc_sample}" ];then
  cp ${vimrc_sample} ${vimrc_sample_bak}
  echo -e  "the old ${vimrc_sample} has been backuped with ${vimrc_sample_bak}"
else
  echo -e "there is no vimrc_sample"
fi
 cp ${vimrc} ${vimrc_sample}

echo "############################################################"
echo "backup the Ultimate Vim configuration successfully! Enjoy!!!"
