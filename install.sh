#!/bin/sh
INST_PATH=/usr/share/emonhub/cronnode
TEMP_PATH=`pwd`/cronnode
echo
echo "Installing CronNode for emonHub................"
sudo mkdir $INST_PATH
sudo mv cronnode.py $INST_PATH
sudo ln usr/bin/cronnode $INST_PATH/cornnode.py
echo "run `crontab -e` to edit cron tab"
echo "example entry"
echo "#### GMT settings ####
echo "#15 00 * * * cron_node offPeak
echo "#15 07 * * * cron_node onPeak
echo "#### BST settings ####
echo "15 01 * * * cron_node offPeak
echo "15 08 * * * cron_node onPeak



 
