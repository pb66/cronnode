cronnode
========

Cron based synthetic node to add schedules to emonHub (or OEM gateway).



From home dir run

    git clone https://github.com/pb66/cronnode.git && cronnode/install.sh
    
then edit cron to add triggers using

    crontab -e
    
each line should specify the trigger time or interval and the command "cronnode *nameofarraytosend*" for example to log peak and off peak tarrif use/cost the following lines use "cronnode offPeak" and "cronnode onPeak"

    # trigger off-peak tarrif at midnight daily
    00 00 * * * cronnode offPeak
    # trigger peak tarrif at 7am daily
    00 07 * * * cronnode onPeak

Then edit cronnode to include the *nameofarraytosend* arg using

    sudo nano /usr/share/cronnode/cronnode.py
    
where each *nameofarraytosend* is declared by setting the `dataID` and `dataTX` for example
    
    if      dataID == "onPeak":
                dataTX = '15 15.807 1 0'
                # this is set to send the array "peak cost per unit" "peakactive true" "offpeak active false" to node 15
    elif    dataID == "offPeak":
                dataTX = '15 6.949 0 1'
                # this is set to send the array "off-peak cost per unit" "peakactive false" "offpeak active true" to node 15
    else:
        exit
        
Multiple nodes can be used for different arrays/time periods etc, the example uses node 15 for multi-rate energy prices but any number of nodes can be set up to report different times to enable logging data to specific periods or events.


