echo "SIT02"
echo "cd /ld11/skt/rtt/dts/tst11/wlsa01/logs/applications/rtt"
echo "cd /ld11/skt/rtt/dts/tst11/wlsa01/logs/products/weblogic-wlsa-domain"
echo "spokadminportal.properties cd /opt/oracle/middleware/wlsdomains/wlsa-domain/"
echo "EmbeddedLDAP.log cd /opt/oracle/middleware/wlsdomains/wlsa-domain/servers/WlsaServer2/data/ldap/log"
echo "thread dump  cd /ld11/skt/rtt/dts/tst11/wlsa01/outs/products/weblogic-wlsa-domain"
echo "Service Bus /ld11/skt/spk/dts/tst10/esba01/logs/products/weblogic-esba-domain/em/EsbaServer1-odl-handler.log"
### ssh-keygen -f "/home/tnl/.ssh/known_hosts" -R "sktaodprd04wlsa01"
echo "Aogd SIT02"

cd 
echo
gnome-terminal --tab -t 02web01 -e "sshpass -p 'F35FYkNx(M4)' ssh -o StrictHostKeyChecking=no ipowls@skttsit02web01" --tab  -t 02por01 -e "sshpass -p 'F35FYkNx(M4)' ssh -o StrictHostKeyChecking=no ipowls@skttsit02por01" --tab  -t 02esb01 -e "sshpass -p 'F35FYkNx(M4)' ssh -o StrictHostKeyChecking=no ipowls@skttsit02esb01" --tab  -t 02wls01 -e "sshpass -p 'F35FYkNx(M4)' ssh -o StrictHostKeyChecking=no ipowls@skttsit02wls01" --tab  -t 02pnt01 -e "sshpass -p 'F35FYkNx(M4)' ssh -o StrictHostKeyChecking=no ipowls@skttsit02pnt01" --tab  -t 02dbs01 -e "sshpass -p 'F35FYkNx(M4)' ssh -o StrictHostKeyChecking=no ipowls@skttsit02dbsa01"

