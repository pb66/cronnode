#!/usr/bin/python
import socket
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("dataID", action='store', help="Name of dataTx array to send using cron_node")
args = parser.parse_args()

dataID = args.dataID
dataTX = ""

#########
# Frame #
#########

# frame = 'NodeID val1 val2'
# dataTX = 'NodeID currentCost
if      dataID == "onPeak":
                dataTX = '15 15.807 1 0'
elif    dataID == "offPeak":
                dataTX = '15 6.949 0 1'
else:
        exit

##############
# Parameters #
##############

# HOST: hosname or IP address of the machine running the gateway
HOST = 'localhost'

# PORT: port number to the listener, as configured in the gateway
PORT = 50011

########
# Code #
########

# Append line ending
dataTX = dataTX + '\r\n'

# Send frame
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((HOST, PORT))
s.send(dataTX)
s.close()
