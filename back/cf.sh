echo "############################################################################################"
echo "Symbolsk link (daptekster.csv,log4jconfig.xml)"
ls -ld /home/efidev/dev/Oracle/Portal/user_projects/domains/efi_portal_IPO/daptekster.csv
ls -ld /home/efidev/dev/Oracle/Portal/user_projects/domains/efi_portal_IPO/log4jconfig.xml

echo "############################################################################################"
echo "Symbolsk link (efi-common.properties, security.properties, springws-client-utf8.properties)"
ls -ld /home/efidev/dev/Oracle/Portal/user_projects/domains/efi_portal_IPO/config/applications/efi/common/efi-common.properties
ls -ld /home/efidev/dev/Oracle/Portal/user_projects/domains/efi_portal_IPO/config/applications/efi/common/security.properties
ls -ld /home/efidev/dev/Oracle/Portal/user_projects/domains/efi_portal_IPO/config/applications/efi/common/springws-client-utf8.properties

echo "############################################################################################"
echo "Symbolsk link (portal.properties, portal-sec.properties)"
ls -ld /home/efidev/dev/Oracle/Portal/user_projects/domains/efi_portal_IPO/config/applications/efi/portal/portal.properties
ls -ld /home/efidev/dev/Oracle/Portal/user_projects/domains/efi_portal_IPO/config/applications/efi/portal/portal-sec.properties

echo "############################################################################################"
echo "Check portal-wrapper-deployment"
ls -ld /home/efidev/dev/portal-wrapper-deployment/config
ls -ld /home/efidev/dev/portal-wrapper-deployment/skat-efi-lookandfeel.war
ls -ld /home/efidev/dev/portal-wrapper-deployment/skat-efi-tags-web-lib.war

ls -ld /home/efidev/dev/portal-wrapper-deployment/skat-efi-app/skat-efi-ap-web.war
ls -ld /home/efidev/dev/portal-wrapper-deployment/skat-efi-app/skat-efi-front-web.war
ls -ld /home/efidev/dev/portal-wrapper-deployment/skat-efi-app/skat-efi-sag-web.war
ls -ld /home/efidev/dev/portal-wrapper-deployment/skat-efi-app/skat-efi-sp-web.war
ls -ld /home/efidev/dev/portal-wrapper-deployment/skat-efi-app/strategyGraph.war

echo "############################################################################################"
echo "Check Portal classes"
ls -ld /home/efidev/dev/portal-wrapper-deployment/skat-efi-app/skat-efi-ap-web.war/WEB-INF/classes/dk
ls -ld /home/efidev/dev/portal-wrapper-deployment/skat-efi-app/skat-efi-front-web.war/WEB-INF/classes/dk
ls -ld /home/efidev/dev/portal-wrapper-deployment/skat-efi-app/skat-efi-sag-web.war/WEB-INF/classes/dk
ls -ld /home/efidev/dev/portal-wrapper-deployment/skat-efi-app/skat-efi-sp-web.war/WEB-INF/classes/dk
ls -ld /home/efidev/dev/portal-wrapper-deployment/skat-efi-app/strategyGraph.war/WEB-INF/classes/dk

echo "############################################################################################"
echo "Check mbean (Der skal være 12 filer)"
find /home/efidev/dev/Oracle/Portal/wlserver_10.3/server/lib/mbeantypes -type f | wc -l
ls -l /home/efidev/dev/Oracle/Portal/wlserver_10.3/server/lib/mbeantypes

echo "############################################################################################"
echo "Check logconfig"
ls -ld /var/oracle/logs/logconfig

echo "############################################################################################"


