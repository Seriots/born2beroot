#!/bin/bash
wall "  #Architecture: $(uname -a)
        #CPU physical: $(grep 'physical id' /proc/cpuinfo | wc -l)
        #vCPU: $(grep '^processor' /proc/cpuinfo | wc -l)
        #Memory Usage: $(free -m | awk '$1 == "Mem:" {printf("%d/%dMB (%.2f%%)"), $3, $2, $3/$2*100}')
        #Disk Usage: $(df -Bm | grep '^/dev/' | grep -v '/boot$' | awk '{ut += $2} {ft+= $3} END {printf("%d/%dGb (%d%%)"), ft, ut/1000, >
        #CPU load: $(uptime | awk '{printf("%.1f%%", $8)}')
        #Last boot: $(who -b | awk '{printf("%s %s", $3, $4)}')
        #LVM use: $(lvscan | grep "ACTIVE" | wc -l | awk '{if ($1 > 0) printf("yes"); else printf("no");}')
        #Connexions TCP : $(users | tr ' ' '\n' | wc -l) ESTABLISHED
        #User log: $(users | tr ' ' '\n' | sort -u | wc -l)
        #Network: IP $(hostname -I)($(ip link show | grep "link/ether" | awk '{printf("%s", $2);}'))
        #Sudo: $(cat /var/log/auth.log | wc -l) cmd"
