echo "RTT Gambler,GReklame,RofusWeb, CMS-p"
echo "cd /ld11/skt/rtt/dts/dev11/wlsa01/logs/applications/rtt"
echo "cd /ld11/skt/rtt/dts/dev11/wlsa01/logs/products/weblogic-wlsa-domain"


echo "RTT TT, SAP"
echo "cd /ld11/skt/rtt/dts/dev11/wlsb01/logs/applications/rtt"
echo "cd /ld11/skt/rtt/dts/dev11/wlsb01/logs/products/weblogic-wlsb-domain"

echo "cd /opt/oracle/middleware/wlsdomains/wlsa-domain/"
echo "cd /opt/oracle/middleware/wlsdomains/wlsb-domain/"
echo "cd /opt/oracle/middleware/wlsdomains/wlsa-domain/servers/WlsaServer2/data/ldap/log"
echo "Service Bus /ld11/skt/spk/dts/dev10/esba01/logs/products/weblogic-esba-domain/em/EsbaServer1-odl-handler.log"
echo "/ld11/skt/rtt/dts/dev11/weba01/logs/products/apache"

echo "SPK"
echo "cd /ld11/skt/spk/dts/dev10/wlsa01/logs/products/weblogic-wlsa-domain"

gnome-terminal --tab  -t sktRTTdev11wlsA01 -e "sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktrttdev11wlsa01" --tab  -t sktRTTdev11wlsB01 -e "sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktrttdev11wlsb01" --tab  -t sktSPKdev10wlsa01 -e "sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktspkdev10wlsa01" --tab  -t sktrttdev11WEBA01 -e "sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktrttdev11weba01" --tab  -t sktSPKdev10pora01 -e "sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktspkdev10pora01" --tab  -t sktspkdev10wlsa01 -e "sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktspkdev10wlsa01" --tab  -t dev10wlsa01 -e "sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktspkdev10wlsa01" --tab  -t sktSPKdev10esba01 -e "sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktspkdev10esba01" --tab  -t sktspkdev10buia01 -e "sshpass -p 'RhTP=q3H' ssh -o StrictHostKeyChecking=no ipowls@sktspkdev10buia01"


