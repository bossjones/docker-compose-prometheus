# Firewall denial logs

```
{host="ubnt"} |= "WAN" | pattern "[<firewall_rule_type>-<firewall_rule_index>-<firewall_action>]IN=<filewall_in_interface> OUT=<filewall_out_interface> MAC=<firewall_mac_address> SRC=<firewall_src_ip> DST=<firewall_dest_ip> LEN=<firewall_len> TOS=<firewall_tos> PREC=<firewall_prec> TTL=<firewall_ttl> ID=<firewall_id> DF PROTO=<firewall_proto> SPT=<firewall_spt> DPT=<firewall_dpt> WINDOW=<firewall_window> RES=<firewall_res> RST URGP=<firewall_urgp>"
```
