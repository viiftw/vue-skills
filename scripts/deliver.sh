#!/usr/bin/env sh

set -x
serve -s dist &
sleep 10
echo $! > .pidfile
set +x
echo 'Now...'
echo 'Visit http://localhost:5000 to see your application in action.'
echo '(This is why you specified the "args ''-p 5000:5000''" parameter when you'
echo 'created your initial Pipeline as a Jenkinsfile.)'