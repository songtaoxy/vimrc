#!/bin/ba~/downloads/.vimrc_testsh

######################
# author:st          #
# date: 2021.03.18   #
# des:install vimrc  #
######################

set -e

cd ~/.vim_runtime/

echo "start install vimrc ..."
echo "############################################################"

export home=~/
export vimrc=~/.vimrc
export vimrc_sample=~/.vim_runtime/vimrc_sample


#if [ ! -f "./.vimrc_test" ];then
if [ ! -f "${vimrc}" ];then
  echo "theres is no .vimrc, and will install directly."
  #cp ~/.vim_runtime/vimrc_sample ~/downloads/.vimrc_test
  cp ${vimrc_sample} ${vimrc}
else
  echo -e  "the old .vimrc has been backuped with ${home}vimrc.bak.$(date "+%Y-%m-%d-%H:%M:%S")"
  mv ${vimrc} ~/vimrc.bak.$(date "+%Y-%m-%d-%H:%M:%S")
  #cp ~/.vim_runtime/vimrc_sample ~/downloads/.vimrc_test
  cp ${vimrc_sample} ${vimrc}

fi


#source ~/.vimrc


echo "############################################################"
echo "Installed the Ultimate Vim configuration successfully! Enjoy!!!"
