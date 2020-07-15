#!/bin/bash

function get_pi_ip() {
        hostname="raspberrypi"
        result=`powershell.exe "Resolve-DnsName $hostname.local | ConvertTo-Json" | jq -r .[1].IP4Address`

        echo $result
}

function ssh_pi() {
        pi_ip=`get_pi_ip`
        if [[ $? != 0 ]]; then
                echo "Connection error."
                return 1
        fi
        ssh pi@$pi_ip
}
