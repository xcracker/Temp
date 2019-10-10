#!/bin/bash
screen -v > /dev/null 2>&1
if [ $? -eq 127 ];then
        sudo yum -y install screen
fi
screen_name=$"frpc"
screen -dmS $screen_name
cmd1=$"/opt/ckafrpc/frpc -c /opt/ckafrpc/frpc_full.ini"
screen -x -S $screen_name -p 0 -X stuff "$cmd1"
screen -x -S $screen_name -p 0 -X stuff $'\n'