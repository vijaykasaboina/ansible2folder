ps_out=`ps -ef | grep tomcat | grep -v 'grep' `
echo "ps out value ${ps_out} "
result=$(echo $ps_out | grep "tomcat")
echo "result $result"
if [[   "$result" != "" ]];then
    echo "tomcat Running"
else
    echo "Tomcat NotRunning"
fi
date
sleep 1
date
echo "successful"
anil=`ps aux | grep httpd | grep -v grep | awk '{print $2}'`
echo "this is httpd sevic pid ${anil} "
