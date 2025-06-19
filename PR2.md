# PR2: Move Hardcoded Values to data.yaml (Reduced Scope)

## Overview
This PR aims to improve configuration management by moving hardcoded values from `templates/docker-compose.yaml.j2` to `data.yaml` for better maintainability and environment-specific customization.

**Reduced Scope**: This implementation focuses on four key areas:
- **image_tags**: Centralized version management
- **ports**: Flexible port configuration  
- **network**: DNS and IP settings
- **performance**: Resource limits and tuning

## Identified Hardcoded Values

### 1. Image Tags/Versions

| Line | Service | Current Value | Suggested Variable |
|------|---------|---------------|-------------------|
| 39 | traefik | `traefik:v2.10.4` | `{{ image_tags.traefik }}` |
| 99 | portainer | `portainer/portainer-ce:2.20.3` | `{{ image_tags.portainer }}` |
| 133 | loki-gateway | `nginx:1.25.3-perl` | `{{ image_tags.nginx }}` |
| 161 | nginx-gateway | `nginx:1.25.3-perl` | `{{ image_tags.nginx }}` |
| 189 | nginx-exporter | `nginx/nginx-prometheus-exporter:1.0.0` | `{{ image_tags.nginx_exporter }}` |
| 244 | speedtest-exporter | `miguelndecarvalho/speedtest-exporter` | `{{ image_tags.speedtest_exporter }}` |
| 270 | init | `grafana/loki:2.8.3` | `{{ image_tags.loki }}` |
| 285 | minio | `minio/minio:RELEASE.2023-06-29T05-12-28Z` | `{{ image_tags.minio }}` |
| 661 | prometheus | `prom/prometheus:v2.31.1` | `{{ image_tags.prometheus }}` |
| 725 | pushgateway | `prom/pushgateway:v1.8.0` | `{{ image_tags.pushgateway }}` |
| 762 | node-exporter | `prom/node-exporter:latest` | `{{ image_tags.node_exporter }}` |
| 802 | alertmanager | `prom/alertmanager` | `{{ image_tags.alertmanager }}` |
| 874 | cadvisor | `gcr.io/cadvisor/cadvisor:v0.47.2` | `{{ image_tags.cadvisor }}` |
| 947 | blackbox | `prom/blackbox-exporter` | `{{ image_tags.blackbox }}` |
| 1210 | grafana | `grafana/grafana:10.0.1` | `{{ image_tags.grafana }}` |
| 1336 | pve-exporter | `prompve/prometheus-pve-exporter` | `{{ image_tags.pve_exporter }}` |

### 2. Port Configurations

| Line | Service | Current Value | Suggested Variable |
|------|---------|---------------|-------------------|
| 64-68 | traefik | `80:80`, `443:443`, `8989:8989`, `8082:8082` | `{{ ports.traefik.* }}` |
| 105-106 | portainer | `49443:9443`, `49000:9000` | `{{ ports.portainer.* }}` |
| 141-143 | loki-gateway | `8080:80`, `3100:3100` | `{{ ports.loki_gateway.* }}` |
| 166-168 | nginx-gateway | `8080:80`, `3100:3100` | `{{ ports.nginx_gateway.* }}` |
| 197 | nginx-exporter | `9113:9113` | `{{ ports.nginx_exporter }}` |
| 248 | speedtest-exporter | `9798:9798` | `{{ ports.speedtest_exporter }}` |
| 305-306 | minio | `9000:9000`, `9001:9001` | `{{ ports.minio.* }}` |
| 680 | prometheus | `9092:9090` | `{{ ports.prometheus }}` |
| 733 | pushgateway | `9091:9091` | `{{ ports.pushgateway }}` |
| 786 | node-exporter | `9100:9100` | `{{ ports.node_exporter }}` |
| 816 | alertmanager | `9093:9093` | `{{ ports.alertmanager }}` |
| 899 | cadvisor | `8081:8081` | `{{ ports.cadvisor }}` |
| 960-961 | blackbox | `9115:9115/tcp`, `9115:9115/udp` | `{{ ports.blackbox }}` |
| 1234 | grafana | `3000:3000` | `{{ ports.grafana }}` |

### 3. Network Configuration

| Line | Service | Current Value | Suggested Variable |
|------|---------|---------------|-------------------|
| 85 | traefik | `host.docker.internal:172.17.0.1` | `{{ network.docker_host_internal }}` |
| 981 | blackbox | `192.168.3.16` | `{{ network.dns_primary }}` |
| 982-983 | blackbox | `1.1.1.2`, `1.0.0.2` | `{{ network.dns_cloudflare.* }}` |
| 513-515 | pihole | `127.0.0.1`, `1.1.1.2`, `1.0.0.2` | `{{ network.pihole_dns }}` |

### 4. Performance and Resource Settings

| Line | Service | Current Value | Suggested Variable |
|------|---------|---------------|-------------------|
| 906 | cadvisor | `--max_procs=2` | `{{ performance.cadvisor_max_procs }}` |
| 927 | cadvisor | `--housekeeping_interval=30s` | `{{ performance.cadvisor_housekeeping_interval }}` |
| 1070 | loki-read | `replicas: 3` | `{{ performance.loki_replicas }}` |
| 1108 | loki-write | `replicas: 3` | `{{ performance.loki_replicas }}` |
| 1146 | loki-backend | `replicas: 3` | `{{ performance.loki_replicas }}` |
| 449 | pihole | `CUSTOM_CACHE_SIZE=10000` | `{{ performance.pihole_cache_size }}` |

## Proposed data.yaml Structure

```yaml
# Image versions
image_tags:
  traefik: "v2.10.4"
  portainer: "2.20.3"
  nginx: "1.25.3-perl"
  nginx_exporter: "1.0.0"
  speedtest_exporter: "latest"
  loki: "2.8.3"
  minio: "RELEASE.2023-06-29T05-12-28Z"
  prometheus: "v2.31.1"
  pushgateway: "v1.8.0"
  node_exporter: "latest"
  alertmanager: "latest"
  cadvisor: "v0.47.2"
  blackbox: "latest"
  grafana: "10.0.1"
  pve_exporter: "latest"

# Port configurations
ports:
  traefik:
    http: 80
    https: 443
    api: 8989
    web: 8082
  portainer:
    secure: 49443
    standard: 49000
  nginx_gateway:
    http: 8080
    loki_api: 3100
  loki_gateway:
    http: 8080
    loki_api: 3100
  nginx_exporter: 9113
  speedtest_exporter: 9798
  minio:
    api: 9000
    console: 9001
  prometheus: 9092
  pushgateway: 9091
  node_exporter: 9100
  alertmanager: 9093
  cadvisor: 8081
  blackbox: 9115
  grafana: 3000
  alertmanager_telegram: 8585

# Network settings
network:
  docker_host_internal: "172.17.0.1"
  dns_primary: "192.168.3.16"
  dns_cloudflare:
    primary: "1.1.1.2"
    secondary: "1.0.0.2"
  pihole_dns: "127.0.0.1#5335;1.1.1.2;1.0.0.2"

# Performance settings
performance:
  cadvisor_max_procs: 2
  cadvisor_housekeeping_interval: "30s"
  loki_replicas: 3
  pihole_cache_size: 10000
```

## Implementation Plan

### Phase 1: Image Tags
- [ ] Add `image_tags` section to data.yaml
- [ ] Replace hardcoded image versions in template
- [ ] Test template rendering

### Phase 2: Port Configurations
- [ ] Add `ports` section to data.yaml
- [ ] Replace hardcoded port mappings in template
- [ ] Validate port conflicts

### Phase 3: Network Configuration
- [ ] Add `network` section to data.yaml
- [ ] Replace hardcoded IP addresses and DNS settings
- [ ] Validate network connectivity

### Phase 4: Performance Settings
- [ ] Add `performance` section to data.yaml
- [ ] Replace hardcoded resource limits and replica counts
- [ ] Test performance impact

## Benefits

1. **Environment-Specific Configuration**: Easily customize for dev/staging/prod
2. **Version Management**: Centralized image tag management
3. **Port Conflict Resolution**: Easy port reassignment
4. **Network Flexibility**: Configurable DNS and IP settings
5. **Performance Tuning**: Adjustable resource limits and replica counts
6. **Maintainability**: Single source of truth for configuration

## Testing Strategy

```bash
# 1. Backup current data.yaml
cp data.yaml data.yaml.backup

# 2. Add new configuration sections incrementally
# 3. Test rendering after each phase
make render

# 4. Validate docker-compose syntax
docker-compose config --quiet

# 5. Test service startup
docker-compose up -d --dry-run
```

## Priority Order

1. **High Priority**: Image tags (easy wins, immediate benefits)
2. **Medium Priority**: Port configurations (deployment flexibility)
3. **Medium Priority**: Performance settings (operational benefits)
4. **Low Priority**: Network settings (environment-specific)