hostname=(hostname1 hostname2)
echo "hostname ${hostname[0]} "
echo "hostname ${hostname[1]} "
for host in ${hostname[@]}
do
 echo ${host[1]}
done
