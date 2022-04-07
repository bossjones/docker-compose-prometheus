useradd --system promtail
usermod -a -G adm promtail
id promtail

mkdir -p /promtail || true
chown promtail:promtail /promtail
touch /tmp/positions
chown promtail:promtail /tmp/positions.yaml