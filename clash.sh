cmd=`screen -ls`
found=$(echo $cmd | grep "clash")
if [[ "$found" != "" ]]
then
    screen -S clash -X quit
fi
screen_name="clash"  
screen -dmS $screen_name 
cmd="cd /home/<user_name>/clash && ./clash -d .\n"
screen -x -S $screen_name -p 0 -X stuff "$cmd"  

exit 0
