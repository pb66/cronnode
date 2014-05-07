#!/bin/sh
INST_PATH=/usr/share/emonhub/cronnode
echo
echo "Installing CronNode for emonHub................"
sudo mkdir $INST_PATH
sudo mv cronnode.py $INST_PATH
sudo ln usr/bin/cronnode $INST_PATH/cornnode.py
#sudo chmod =x $INST_PATH/cornnode.py
sudo rm -r $INST_PATH
echo "run ' crontab -e ' to edit cron tab"
echo "example entry"
echo "#### GMT settings ####
echo "#15 00 * * * cronnode offPeak
echo "#15 07 * * * cronnode onPeak
echo "#### BST settings ####
echo "15 01 * * * cronnode offPeak
echo "15 08 * * * cronnode onPeak



 
