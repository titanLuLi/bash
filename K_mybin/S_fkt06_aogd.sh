echo "Aogd FKT06"

cd 
echo
gnome-terminal --tab -t fkt06web01 -e "sshpass -p 'F35FYkNx(M4)' ssh -o StrictHostKeyChecking=no ipowls@skttfkt06web01" --tab  -t fkt06pora01 -e "sshpass -p 'F35FYkNx(M4)' ssh -o StrictHostKeyChecking=no ipowls@skttfkt06pora01" --tab  -t fkt06porb01 -e "sshpass -p 'F35FYkNx(M4)' ssh -o StrictHostKeyChecking=no ipowls@skttfkt06porb01" --tab  -t fkt06esb01 -e "sshpass -p 'F35FYkNx(M4)' ssh -o StrictHostKeyChecking=no ipowls@skttfkt06esb01" --tab  -t fkt06wls01 -e "sshpass -p 'F35FYkNx(M4)' ssh -o StrictHostKeyChecking=no ipowls@skttfkt06wls01" --tab  -t fkt06pnt01 -e "sshpass -p 'F35FYkNx(M4)' ssh -o StrictHostKeyChecking=no ipowls@skttfkt06pnt01" --tab  -t fkt06dbs01 -e "sshpass -p 'F35FYkNx(M4)' ssh -o StrictHostKeyChecking=no ipowls@skttfkt06dbs01"

