a=`crontab -l|grep -i "wait.sh"|cut -c 1`
echo "${a}"
currentTime=`date +%k%M`
ls_crontab_disable()
{
tempTime=$1
if [ $tempTime -gt 0700 -a $tempTime -lt 0730 ]
then
echo "time condition is right so we disable the cronjob build_ela.sh"
if [[ ${a} == "#" ]]
then
echo "Already added the comment to cronjon build_ela.sh"
else
echo "we are going to add the comment to build_ela.sh"
crontab -l | sed '/^[^#].*wait.sh/s/^/#/' | crontab -
fi
else
echo "the build is not started between 2030 to 2130 .please start the build between predefined time"
fi
}
ls_crontab_disable $currentTime
