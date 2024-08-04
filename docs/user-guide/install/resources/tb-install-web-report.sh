#!/bin/bash

echo Installing WinstarCloud Web Report Server...

if [ -f /tmp/tb-web-report.deb ]; then
    sudo rm /tmp/tb-web-report.deb
fi

instance_id=`wget -q -O - http://169.254.169.254/latest/meta-data/instance-id`

wget --quiet -O /tmp/tb-web-report.deb https://pm.winstarcloud.io/winstarcloud-pm/api/aws/${instance_id}/tb-web-report/latest

if [ -s /tmp/tb-web-report.deb ]; then
    echo Installing WinstarCloud Web Report Server package...
    sudo dpkg -i /tmp/tb-web-report.deb
    sudo rm /tmp/tb-web-report.deb
    echo Latest version of WinstarCloud Web Report Server has been installed.
else
    echo Failed to get WinstarCloud Web Report Server package! Please contact support.
fi
