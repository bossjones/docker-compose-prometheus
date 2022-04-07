useradd --system promtail
usermod -a -G adm promtail
id promtail

mkdir -p /promtail || true
chown promtail:promtail /promtail
touch /promtail/positions.yaml
chown promtail:promtail /promtail/positions.yaml