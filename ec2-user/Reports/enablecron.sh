echo "uncommenting for build_ela.sh"
a=`crontab -l|grep -i "wait.sh"|cut -c 1`
echo "${a}"
currentTime=`date +%k%M`
ls_crontab_enable()
{
tempTime=$1
if [ $tempTime -gt 2100 -a $tempTime -lt 0900 ]
then
echo "time condition is right so we enable the cronjob build_ela.sh"
if [[ ${a} == "*" ]]
then
echo "Already uncommented to cronjon build_ela.sh"
else
echo "we are going to add the comment to build_ela.sh"
crontab -l | sed '/^#.*build_ela.sh/s/^#//' | crontab -
fi
else
echo "the crontab is disabled because the deployment is going on  "
fi
}
ls_crontab_enable $currentTime
