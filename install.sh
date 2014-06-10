#!/bin/sh
INST_PATH=/usr/share/cronnode
echo
echo "Installing CronNode................"
sudo mkdir $INST_PATH
sudo mv cronnode/cronnode.py $INST_PATH
sudo ln -s $INST_PATH/cronnode.py /usr/bin/cronnode
sudo rm -r cronnode
echo "run ' crontab -e ' to edit cron tab"
echo "example entry"
echo "#### GMT settings ####"
echo "#15 00 * * * cronnode offPeak"
echo "#15 07 * * * cronnode onPeak"
echo "#### BST settings ####"
echo "15 01 * * * cronnode offPeak"
echo "15 08 * * * cronnode onPeak"



 
