# Inspiration

- [PFsense Firewall and IDSby jenniferhatches](https://grafana.com/grafana/dashboards/12637)
- [Snort IDS/IPS Dashboard](https://grafana.com/grafana/dashboards/11191)
- [Suricata - IDS & IPS](https://grafana.com/grafana/dashboards/14893)
- [Geohash SSH](https://grafana.com/grafana/dashboards/12323)


# Homelab log denys

```
# EG. src_ip=18.207.85.246 src_port=443 dst_ip=192.168.0.11 dst_port=61603 protocol=TCP country_name=United States

{unifi="yes"} | json | label_format dst_ip=firewall_destination_ip | label_format src_ip=remote_ip | label_format src_port=firewall_spt | label_format dst_port=firewall_dtp | label_format protocol=firewall_nf_protocol | firewall_rule_action="D" | src_ip != "" | geoip_country_name != "" | __error__="" | line_format "src_ip={{.src_ip}} src_port={{.src_port}} dst_ip={{.dst_ip}} dst_port={{.dst_port}} protocol={{.protocol}} country_name={{.geoip_country_name}}"
```
