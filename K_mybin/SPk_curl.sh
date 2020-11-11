#!/bin/bash
  for i in {1..10}
 do
    curl -d '{"pt1:fLogin:txtUser":"w91776", "pt1:fLogin:txtPass":""}' -X POST http://sktspkprd10pora01.isnordic.dk:7025/spilkontrol/faces/pages_home
    sleep 2
    curl -X GET http://sktspkprd10pora01.isnordic.dk:7025/spilkontrol/adfAuthentication?logout=true
    sleep 2
 done

