$ORIGIN it.orientalgroup.com.
$TTL 86400

@       IN SOA   dns1.it.orientalgroup.com. admin.it.orientalgroup.com. (
                 2025011603 ; Serial
                 3600       ; Refresh
                 1800       ; Retry
                 1209600    ; Expire
                 86400 )    ; Minimum TTL

; Name Server Records
@       IN NS    dns1.it.orientalgroup.com.
@       IN NS    ansible.it.orientalgroup.com.
; Host Records
dns1    IN A     192.168.130.2
ansible IN A     192.168.130.10