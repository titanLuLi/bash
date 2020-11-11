echo "DMS"
echo "change password ssh tnl@sktdmsdev01pora01 92Da_Sa+Bi-!aBiJb 20XiaoXue_+NiMaBi "
cd 
echo
gnome-terminal --tab -t sktdmsdev01pora01 -e "sshpass -p '92Da_Sa+Bi-!aBiJb' ssh -o StrictHostKeyChecking=no tnl@sktdmsdev01pora01" --tab -t sktdmssit02pora01 -e "sshpass -p '20XiaoXue_+NiMaBi' ssh -o StrictHostKeyChecking=no tnl@sktdmssit02pora01" --tab -t sktdmssit01pora01 -e "sshpass -p '20XiaoXue_+NiMaBi' ssh -o StrictHostKeyChecking=no tnl@sktdmssit01pora01" --tab  -t sktdmssit01esba01 -e "sshpass -p '20XiaoXue_+NiMaBi' ssh -o StrictHostKeyChecking=no tnl@sktdmssit01esba01"
