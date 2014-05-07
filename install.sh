#!/bin/sh
INST_PATH=/usr/share/emonhub/cronnode
echo
echo "Installing CronNode for emonHub................"
sudo mkdir $INST_PATH
sudo mv cronnode/cronnode.py $INST_PATH
sudo ln $INST_PATH/cornnode.py usr/bin/cronnode
sudo rm -r cronnode
echo "run ' crontab -e ' to edit cron tab"
echo "example entry"
echo "#### GMT settings ####"
echo "#15 00 * * * cronnode offPeak"
echo "#15 07 * * * cronnode onPeak"
echo "#### BST settings ####"
echo "15 01 * * * cronnode offPeak"
echo "15 08 * * * cronnode onPeak"



 
