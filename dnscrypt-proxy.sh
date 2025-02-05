#!/bin/bash
nmcli -p device show | grep -q "10.180.188.75"
REDE=$?
if [[ $REDE -eq 0 ]]
then
	/usr/sbin/dnscrypt-proxy -config /etc/CTparental/dnscrypt-proxy-abalar.toml
else
	/usr/sbin/dnscrypt-proxy -config /etc/CTparental/dnscrypt-proxy.toml
fi
