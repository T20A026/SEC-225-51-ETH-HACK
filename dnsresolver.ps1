param($range,$dns)

for ($i=1;$i -le 254; $i++) {
    Resolve-DnsName -DnsOnly "$range.$i" -Server $dns -ErrorAction Ignore
    }