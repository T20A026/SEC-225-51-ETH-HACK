for ($i=1;$i -le 254; $i++) {
    Resolve-DnsName -DnsOnly 192.168.3.$i -Server 192.168.4.4 -ErrorAction Ignore
    }