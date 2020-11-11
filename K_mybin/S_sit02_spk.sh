echo "RTT Gambler,GReklame,RofusWeb, CMS-p"
echo "cd /ld11/skt/rtt/dts/tst11/wlsa01/logs/applications/rtt"
echo "cd /ld11/skt/rtt/dts/tst11/wlsa01/logs/products/weblogic-wlsa-domain"

echo "RTT TT, SAP"
echo "cd /ld11/skt/rtt/dts/tst11/wlsb01/logs/applications/rtt"
echo "cd /ld11/skt/rtt/dts/tst11/wlsb01/logs/products/weblogic-wlsb-domain"

echo "spokadminportal.properties cd /opt/oracle/middleware/wlsdomains/wlsb-domain/"
echo "EmbeddedLDAP.log cd /opt/oracle/middleware/wlsdomains/wlsa-domain/servers/WlsaServer2/data/ldap/log"

echo "SPK"
echo "Service Bus /ld11/skt/spk/dts/tst10/esba01/logs/products/weblogic-esba-domain/em/EsbaServer1-odl-handler.log"

cd 
echo
gnome-terminal --tab  -t sktrTTTst11wlsA01 -e "sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktrtttst11wlsa01" --tab  -t sktrTTTst11wlsB01 -e "sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktrtttst11wlsb01" --tab  -t sktSPKtst10webA01 -e " sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktspktst10weba01" --tab  -t sktSPKtst10pora01 -e " sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktspktst10pora01" --tab  -t sktSPKtst10esba01 -e " sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktspktst10esba01" --tab  -t sktSPKtst10wlsa01 -e " sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktspktst10wlsa01" --tab  -t sktSPKtst10buia01 -e " sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktspktst10buia01" --tab  -t sktSPKtst10dbsa01 -e " sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktspktst10dbsa01" 
