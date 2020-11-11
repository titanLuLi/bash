echo
echo "cd /var/applications/nibNettoindkomstBeregning"
echo "cd /var/applications/bebbBumUdbetalingDkYdelser"
echo "wls => cd /ld11/sit01/sktefisit01wls01/logs/applications/efi"
echo "esb => cd /ld11/sit01/sktefisit01esb01/logs/products/weblogic-esb-domain"
echo "por => cd /ld11/sit01/sktefisit01por01/logs/applications/efi"
echo
gnome-terminal --tab  -t sit01wls01 -e "sudo sshpass -p '/UWVcEL-d8TEWtGW' ssh -o StrictHostKeyChecking=no wls@sktefisit01wls01" --tab  -t sit01wls02 -e "sudo sshpass -p '/UWVcEL-d8TEWtGW' ssh -o StrictHostKeyChecking=no wls@sktefisit01wls02"  --tab  -t sit01por01 -e "sudo sshpass -p '/UWVcEL-d8TEWtGW' ssh -o StrictHostKeyChecking=no wls@sktefisit01por01" --tab -t sit01esb01 -e "sudo sshpass -p '/UWVcEL-d8TEWtGW' ssh -o StrictHostKeyChecking=no wls@sktefisit01esb01" --tab -t sit01web01  -e "sudo sshpass -p '/UWVcEL-d8TEWtGW' ssh -o StrictHostKeyChecking=no wls@sktefisit01web01"  
