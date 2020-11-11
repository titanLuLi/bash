echo
echo "cd /var/oracle/wls-domain/config/applications/efi/batch"
echo "cd /ld11/prd01/sktprd01wlsa01/logs/applications/efi"
echo "cd /ld11/prd01/sktprd01wlsa02/logs/applications/efi"
echo "change passwords very 4th months#ssh tnl@sktprd0?log?0? --> YaoFang9 M21sosg91t "  
echo "ssh tnl@sktprd01loga01 ,ssh tnl@sktprd01loga02,ssh tnl@sktprd01logb01,ssh tnl@sktprd01logb02"

gnome-terminal --tab  -t sktprd01loga01 -e "sudo sshpass -p 'M21sosg91t' ssh -o StrictHostKeyChecking=no tnl@sktprd01loga01" --tab  -t sktprd01loga02 -e "sudo sshpass -p 'M21sosg91t' ssh -o StrictHostKeyChecking=no tnl@sktprd01loga02"  --tab -t sktprd01logb01 -e "sudo sshpass -p 'M21sosg91t' ssh -o StrictHostKeyChecking=no tnl@sktprd01logb01"  --tab -t sktprd01logb02  -e "sudo sshpass -p 'M21sosg91t' ssh -o StrictHostKeyChecking=no tnl@sktprd01logb02"


