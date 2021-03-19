#!/bin/sh

######################
# author:st          #
# date: 2021.03.18   #
# des:backup vimrc  #
######################

# 1, 将"~/.vim_runtime/vimrc_sample"备份"~/.vim_runtime/bakup"
# 2, 用~/.vmrc 覆盖 "~/.vim_runtime/vimrc_sample"
# 3, 打包压缩: "~/.vimrc, ~/.vimr_runtime"
# 4, 将压缩包移动到"~/downloads"
# 5, 将压缩包备份到@BaiduNetdisk

set -e

export home=~/
export vim_runtime=".vim_runtime"
export vim_runtime_name="vim_full.bak.$(date "+%Y-%m-%d-%H%M%S").tar.gz"
export vim_runtime_bak_source=~/${vim_runtime_name}
export vim_runtime_bak_dest=~/downloads/

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

echo "                                                            "
echo "                                                            "
echo "                                                            "


echo "############################################################"
echo "##        backup vim: vimrc+.vimr_runtime+github          ##"
echo "############################################################"
echo "start backup the full vim environment: <.vimrc + github + runtime>"

cd ~
# tar -zcvf ${vim_runtime_name} ${vimrc} ${vim_runtime}
tar -zcf ${vim_runtime_name} ${vimrc} ${vim_runtime}
mv ${vim_runtime_bak_source} ${vim_runtime_bak_dest}
echo "backup successfully!"

echo "${vimrc} --->  ${vimrc_sample}"
echo "${vim_runtime} --->  ${vim_runtime_bak_source}"
