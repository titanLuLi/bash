#!/bin/bash 

curl -v --proxy 185.151.194.10:8080 -XPOST -u ufst.dk_CVR_I_SKYEN:a554878d-4393-43ed-ac67-fc53ed2be3da -H 'Content-Type: application/json' http://distribution.virk.dk/cvr-permanent/virksomhed/_search -d '{"_source":["Vrvirksomhed.virksomhedMetadata.nyesteNavn.navn","Vrvirksomhed.virksomhedMetadata.stiftelsesDato",               "Vrvirksomhed.virksomhedMetadata.nyesteBeliggenhedsadresse","Vrvirksomhed.elektroniskPost.kontaktoplysning"],"query":{"term":{"Vrvirksomhed.cvrNummer":"30714024"}}}'

curl -v --proxy 185.151.194.10:8080 -XPOST -u ufst.dk_CVR_I_SKYEN:a554878d-4393-43ed-ac67-fc53ed2be3da -H 'Content-Type: application/json' http://distribution.virk.dk/cvr-permanent/virksomhed/_search -d '{"_source":["Vrvirksomhed"],"query":{"term":{"Vrvirksomhed.cvrNummer":"31500893"}}}'

curl -v --proxy 185.151.194.10:8080 -XPOST -u ufst.dk_CVR_I_SKYEN:a554878d-4393-43ed-ac67-fc53ed2be3da -H 'Content-Type: application/json' http://distribution.virk.dk/cvr-permanent/virksomhed/_search -d '{"_source":["Vrvirksomhed.virksomhedMetadata.nyesteNavn.navn","Vrvirksomhed.virksomhedMetadata.stiftelsesDato",               "Vrvirksomhed.virksomhedMetadata.nyesteBeliggenhedsadresse","Vrvirksomhed.elektroniskPost.kontaktoplysning"],"query":{"term":{"Vrvirksomhed.cvrNummer":"26911745"}}}'


curl -v --proxy 185.151.194.10:8080 -XPOST -u ufst.dk_CVR_I_SKYEN:a554878d-4393-43ed-ac67-fc53ed2be3da -H 'Content-Type: application/json' http://distribution.virk.dk/cvr-permanent/virksomhed/_search -d '{"_source":["Vrvirksomhed"],"query":{"term":{"Vrvirksomhed.cvrNummer":"20509473"}}}'

26911745
20509473



