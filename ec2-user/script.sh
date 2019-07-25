anil=`ps -ef|grep -i httpd|grep -v grep|awk '{print $2 }' `
sudo kill -9 $anil
