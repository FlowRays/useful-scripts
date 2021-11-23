name=
passwd=
ip=`ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"`
curl "http://10.9.1.3:801/eportal/?c=Portal&a=login&login_method=1&user_account=,b,{$name}&user_password={$passwd}&wlan_user_ip={$ip}&wlan_user_mac=000000000000" 1>/dev/null 2>&1
exit 0