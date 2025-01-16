$ORIGIN it.orientalgroup.com.
$TTL 86400

@       IN SOA   dns1.it.orientalgroup.com. admin.it.orientalgroup.com. (
                 2025011601 ; Serial
                 3600       ; Refresh
                 1800       ; Retry
                 1209600    ; Expire
                 86400 )    ; Minimum TTL

dns1    IN A     10.0.1.1
dns2    IN A     10.0.1.2

server1 IN A     10.0.1.5
server2 IN A     10.0.1.6

ftp     IN A     10.0.1.3
        IN A     10.0.1.4

mail    IN CNAME server1
mail2   IN CNAME server2

www     IN CNAME server1
