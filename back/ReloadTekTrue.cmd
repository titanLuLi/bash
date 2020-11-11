echo "===================================================="
banner "True"
echo "===================================================="
echo "Start"

for rec in \
    PORTAL_KONTO_KNAPPER_WRITECLAIM \
    PORTAL_KONTO_KNAPPER_CALCULATIONOFINTEREST \
    PORTAL_KONTO_KNAPPER_CHANGECLAIM \
    PORTAL_KONTO_KNAPPER_CHANGELIABILITY \
    PORTAL_KONTO_KNAPPER_REIMBURSEMENTOFINTEREST \
    PORTAL_KONTO_KNAPPER_REVOKECLAIM \
    PORTAL_KONTO_KNAPPER_DEPRECIATECLAIMS \
    PORTAL_KONTO_KNAPPER_STOPANDEXEMPTION \
    PORTAL_KONTO_KNAPPER_ADHOCPAYMENT \
    PORTAL_KONTO_KNAPPER_CHANGEATTACHMENT \
    PORTAL_KONTO_KNAPPER_GETAUTOMATICWRITEOFFDETAILS \
    PORTAL_KONTO_KNAPPER_GOTONOTESPAGE \
    PORTAL_KONTO_KNAPPER_RETURNCLAIM  \
    PORTAL_KONTO_KNAPPER_REMOVECOVERAGE \
    PORTAL_KONTO_KNAPPER_CHANGEPAYER \
    PORTAL_KONTO_KNAPPER_COVERINCOMINGPAYMENT  \
    PORTAL_KONTO_KNAPPER_WITHDRAWBADINCOMINGPAYMENT \
    PORTAL_STRATEGI_DISBURSEMENT_KNAPPER_UDFYLDTILSIGELSE \
    PORTAL_STRATEGI_DISBURSEMENT_KNAPPER_AENDREMOEDEDATO \
    PORTAL_STRATEGI_DISBURSEMENT_KNAPPER_SAETFORKYNDELSESDATO \
    PORTAL_STRATEGI_DISBURSEMENT_KNAPPER_EFTERSOEGHOSPOLITIET \
    PORTAL_STRATEGI_DISBURSEMENT_KNAPPER_AFLYSPOLITIFREMSTILLING \
    PORTAL_STRATEGI_DISBURSEMENT_KNAPPER_UDLAEGEJGENNEMFOERT \
    PORTAL_STRATEGI_DISBURSEMENT_KNAPPER_UDLAEGEJGENNEMFOERTOPFOELGNING \
    PORTAL_STRATEGI_DISBURSEMENT_KNAPPER_UDLAEGEJGENNEMFOERTPOLITIFREMSTILLING \
    PORTAL_STRATEGI_DISBURSEMENT_KNAPPER_UDLAEGSBLAD \
    PORTAL_STRATEGI_DISBURSEMENT_KNAPPER_MEDDELELSEIKKEMODTAGET \
    PORTAL_STRATEGI_DISBURSEMENT_KNAPPER_OPRETNOTE \
    PORTAL_STRATEGI_DISBURSEMENT_AKTIVER_KNAPPER_ADKOMST \
    PORTAL_CTP_KNAPPER_REDIGERBUDGET 
do
  curl -X PUT -H "Content-Type: application/json" -v -u "admin:wlsadmin01" -d '{"begrundelse":"test","nyVaerdi":"true"}' http://sktefisit01wls01.isnordic.skatlev:7003/efi-core-services/management/tekniskparam/{$rec} -s -o slet.txt 1>/dev/null 2>/dev/null
  grep $rec slet.txt
done 

echo "===================================================="
echo "Reload Tekniske paramter start"

for rec1 in efi-core-services do-services mf-services
do 
  echo $rec1
  curl http://sktefisit01wls01.isnordic.skatlev:7003/$rec1/management/tekniskparam/reload -s -o slet.txt 1>/dev/null 2>/dev/null
  grep reloaded slet.txt
done
echo "Reload Tekniske parameter finish"
echo "===================================================="



