google_dns_fix="`cat /etc/google-dns-fix/hosts`"
hosts_tmpl="`tail -n 4 /etc/hosts`"
if [ "$hosts_tmpl" != "$google_dns_fix" ]
then
	hosts="`head -n -4 /etc/hosts `"
	echo -e "$hosts\\n$google_dns_fix" > /etc/hosts
else
	echo "No update needed."
fi
