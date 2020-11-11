#!/bin/bash

curl -v -I --proxy 'http://185.151.194.10:8080'  --key aogd_erhvervsstyrelsen.p12:erhverAogd_1 'https://erst-api.virk.dk/distribution-service-cvr-ekstern/HentAktuelVirksomhedEkstern/cvrnr/30714024?deltagere&attributter'


#curl -v --key eboks_private.p12:eboksAogd_1Aogd_1 'https://demo-api.e-boks.com/oio/rest/srv.svc/1/afsendersystem/4447/tilmeldinger/186317?cvr=00000000'
