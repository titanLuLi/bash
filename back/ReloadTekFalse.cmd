echo "===================================================="
banner "False"
echo "===================================================="
echo "Start"

for rec in \
    PORTAL_NAVIGATION_KNAPPER_OVERVIEWTAB \
    PORTAL_NAVIGATION_KNAPPER_ACCOUNTSTAB \
    PORTAL_NAVIGATION_KNAPPER_STRATEGYTAB \
    PORTAL_NAVIGATION_KNAPPER_DOCUMENTTAB \
    PORTAL_NAVIGATION_KNAPPER_ASSETSTAB \
    PORTAL_NAVIGATION_KNAPPER_ABILITYTOPAYTAB \
    PORTAL_NAVIGATION_KNAPPER_BASICINFOTAB \
do
  curl -X PUT -H "Content-Type: application/json" -v -u "admin:wlsadmin01" -d '{"begrundelse":"test","nyVaerdi":"false"}' http://sktefisit01wls01.isnordic.skatlev:7003/efi-core-services/management/tekniskparam/{$rec} -s -o slet.txt 1>/dev/null 2>/dev/null
  grep $rec slet.txt
done 

echo "===================================================="
echo "Reload Tekniske paramter start"

for rec1 in efi-core-services do-services mf-services
do 
  echo $rec1
  curl http://sktefisit01wls01.isnordic.skatlev:7003/$rec1/management/tekniskparam/reload -s -o slet.txt 1>/dev/null 2>/dev/null
  grep reloaded slet.txt
  echo
done
echo
echo "Reload Tekniske parameter finish"
echo "===================================================="




