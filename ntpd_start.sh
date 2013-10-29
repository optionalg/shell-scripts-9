## If ntp daemon in linux stopped, will start him
## Testing for CentOS 6.3, ntp-4.2.4p8-2.el6.centos.x86_64

#!/bin/bash

cond=$(ps -ef | grep 'ntpd.pid' | grep -v grep | wc -l)

if [ $cond -eq 0 ]
 then
    service ntpd start
fi


## Put script in crontab
## Run script every 5 minuts
$ crontab -l
*/5    *             *       *       *   /root/ntpd_start.sh
