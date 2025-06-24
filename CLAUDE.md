# Docker Compose Prometheus Stack - Claude Documentation

## Project Overview
This project provides a comprehensive monitoring stack using Docker Compose, featuring Prometheus, Grafana, Loki, and various exporters for metrics collection and visualization.

## Key Components
- **Prometheus**: Time-series database and monitoring system
- **Grafana**: Visualization and dashboarding platform
- **Loki**: Log aggregation system (can be enabled/disabled via feature flag)
- **InfluxDB**: Time-series database for metrics storage
- **AlertManager**: Handles alerts sent by Prometheus
- **Various Exporters**: Node exporter, Blackbox exporter, PiHole exporter, etc.
- **Traefik**: Reverse proxy and load balancer (optional)

## Template System
The project uses Jinja2 templating for the Docker Compose configuration:
- Main template: `templates/docker-compose.yaml.j2`
- Rendered output: `docker-compose.yaml` (generated from template)

## Feature Flags
The following feature flags control which services are deployed:

### Loki Stack (`loki_feature_flag`)
When enabled, deploys the complete Loki logging stack:
- `loki-gateway`: NGINX gateway for Loki services
- `nginx-exporter`: Prometheus exporter for NGINX metrics
- `init`: Container to set proper permissions for Loki volumes
- `minio`: S3-compatible object storage for Loki data
- `loki-read`: Loki read path instances (3 replicas)
- `loki-write`: Loki write path instances (3 replicas)
- `loki-backend`: Loki backend instances (3 replicas)

### Other Feature Flags
- `traefik_feature_flag`: Enables Traefik reverse proxy
- `portainer_feature_flag`: Enables Portainer container management UI
- `pihole_feature_flag`: Enables Pi-hole DNS server and ad blocker
- `cadvisor_feature_flag`: Enables cAdvisor for container metrics
- `promtail_feature_flag`: Enables Promtail log collector
- `syslog_ng_feature_flag`: Enables syslog-ng log collector
- `syslog_ng_exporter_feature_flag`: Enables syslog-ng metrics exporter
- `log_generator_feature_flag`: Enables test log generation
- `weave_scope_feature_flag`: Enables Weave Scope for container visualization

## Configuration Variables
Key variables used in the template:
- `fqdn`: Fully qualified domain name for service URLs
- `prometheus_server_ip`: IP address of the Prometheus server
- `loki_log_level`: Log level for Loki services
- `prometheus_log_level`: Log level for Prometheus
- `grafana_log_level`: Log level for Grafana
- `alertmanager_log_level`: Log level for AlertManager
- `influxdb_log_level`: Log level for InfluxDB
- `pushgateway_log_level`: Log level for Pushgateway

## Network Configuration
- All services connect to the `loki` network (despite the name, it's used for all services)
- Services expose ports both internally and externally as needed
- Traefik labels are configured for service discovery when Traefik is enabled

## Volumes
Persistent data volumes are created for:
- Prometheus data
- Grafana data
- InfluxDB storage
- AlertManager data
- Loki data (when enabled)
- Various other service-specific data

## Logging
All services use the `journald` or `json-file` logging driver with consistent tagging for easy log correlation.

## Usage

### Rendering the Template
To generate the docker-compose.yaml from the template, you'll need to use a Jinja2 renderer with your desired feature flags set.

### Enabling/Disabling Loki
Set `loki_feature_flag` to `true` or `false` in your template variables to enable or disable the entire Loki stack.

### Service Dependencies
When Loki is enabled, several other services have dependencies on Loki components:
- Prometheus depends on `loki-gateway`
- Grafana depends on `loki-gateway`
- Promtail (if enabled) depends on all Loki components

## Development Notes
- The template uses `{% raw %}` blocks to preserve Docker Compose variable interpolation
- Services are conditionally included based on feature flags
- Each service includes appropriate health checks and restart policies
- Traefik routing is configured with consistent naming patterns

## Makefile Targets
The project includes a Makefile with various targets:
- `doctor`: Check system prerequisites
- Additional targets for building, running, and managing the stack

## Recent Updates
- Added conditional wrapping for all Loki-related services using `{% if loki_feature_flag %}`
- This allows for easy enabling/disabling of the entire Loki logging stack
- The Loki network and volume remain static (not wrapped in conditionals) as they may be used by other services