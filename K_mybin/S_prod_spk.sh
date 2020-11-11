echo
echo "cd /ld11/skt/rtt/prd/prd11/wlsa01/logs/applications/rtt"
echo "cd /ld11/skt/rtt/prd/prd11/wlsa01/logs/products/weblogic-wlsa-domain"
echo "cd /opt/oracle/middleware/wlsdomains/wlsa-domain/"
echo "cd /opt/oracle/middleware/wlsdomains/wlsa-domain/servers/WlsaServer2/data/ldap/log"
echo "thread dump    cd /ld11/skt/rtt/prd/prd11/wlsa01/outs/products/weblogic-wlsa-domain"
"grep 'locking account' WlsaServer1_yyyyMMdd.log | wc"
cd 
echo
gnome-terminal --tab  -t sktrttprd11wlsa01 -e "sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktrttprd11wlsa01" --tab  -t sktrttprd11wlsb01 -e "sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktrttprd11wlsb01" --tab  -t sktspkprd10pora01 -e "sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktspkprd10pora01" --tab  -t sktspkprd10wlsa01 -e "sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktspkprd10wlsa01" 
