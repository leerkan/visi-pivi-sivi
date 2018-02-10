#http://www.yuanyueping.cn/linux_system/system_security/security-2-78.html
#
cat /var/log/denySSHAttack.log > /var/log/denySSHAttack.log1
date >> /var/log/denySSHAttack.log1
#echo "\(Failed password for\)"
cat /var/log/auth.log | grep "\(Failed password for\)" | awk '{ print $(NF-3)}' | sort -n | uniq -c | awk '{ print $1"="$2}' | sort -nr > /var/log/denySSHAttack.log
#cat /var/log/auth.log | grep "\(Failed password for\)" | awk '{ print $(NF-3)}' | sort -n | uniq -c
#echo "\(Invalid user transfer\)"
cat /var/log/auth.log | grep "\(Invalid user transfer\)" | awk '{ print $(NF-0)}' | sort -n | uniq -c | awk '{ print $1"="$2}' | sort -nr >> /var/log/denySSHAttack.log
#cat /var/log/auth.log | grep "\(Invalid user transfer\)" | awk '{ print $(NF-0)}' | sort -n | uniq -c
#sed -i /184.22.125.15$/d /var/log/denySSHAttack.log
#ipaddr=$(cat /var/log/denySSHAttack.log | awk -F= '{ print $2"="$1 }'| sort -n | sed /^184.22.125.15/d);
ipaddr=$(cat /var/log/denySSHAttack.log | awk -F= '{ print $2"="$1 }'| sort -n);
for i in ${ipaddr[*]} ; do
	IP=`echo $i |awk -F= '{ print $1 }'`;
	NUM=`echo $i | awk -F= '{ print $2 }'`;
	if [ $NUM -ge 11 ];
	then
		grep $IP /etc/hosts.deny > /dev/null;
		if [ $? -gt 0 ];
		then
			echo "sshd:$IP" >> /etc/hosts.deny;
		fi;
	fi;
done
