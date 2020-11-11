echo "Aogd sktprd01wlsa01"

cd 
echo
gnome-terminal --tab -t prd01wlsa -e "sshpass -p 'F35FYkNx(M4)' ssh -o StrictHostKeyChecking=no ipowls@sktaodprd04wlsa01" --tab -t prd04web01 -e "sshpass -p 'uPnsck=3AR+g' ssh -o StrictHostKeyChecking=no ipowls@sktpprd04web01" 

