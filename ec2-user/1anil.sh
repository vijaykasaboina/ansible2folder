currenttime=`date +%k%M`
ls_crontab_disable()
{
tempTime=$1
if [ $tempTime == 2100 ]
then
echo "add the comment to build_ela.sh"
crontab -l|grep -i build_ela.sh| sed -i '1s/^/#/'
else
echo "the condition is not sucessful"
fi
}
ls_crontab_disable $currenttime

