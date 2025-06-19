# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a comprehensive Docker Compose monitoring stack implementing the LGTM observability pattern (Loki, Grafana, Tempo, Mimir/Prometheus). The project uses Jinja2 templating for configuration management and supports monitoring of infrastructure, containers, network equipment, and applications.

## Development Commands

### Core Workflow
```bash
# Render all configurations from templates
make render

# Start the monitoring stack (must be run from outputs/ directory)
cd outputs && docker-compose up -d

# Stop the stack
make down

# View logs
make logs

# Clean restart
make restart
```

### Template Management
```bash
# Render templates after modifying data.yaml
make render

# The render.sh script processes all .j2 files using data.yaml
./render.sh
```

### Utility Commands
```bash
# Open all service UIs in browser (opens multiple ports)
make chrome

# Generate docker-compose visualization
make viz

# Download Loki dashboards
make loki-dashboards

# Query live Loki configuration
make get_running_config
```

### Service Ports
The stack exposes services on the following ports:
- **3000**: Grafana web interface
- **3100**: Loki API endpoint  
- **9090**: Prometheus web interface
- **9093**: Alertmanager web interface
- **9100**: Node Exporter metrics
- **9115**: Blackbox Exporter
- **9130**: UniFi Poller metrics
- **8080**: Traefik dashboard
- **8081**: cAdvisor metrics
- **8086**: InfluxDB (if enabled)
- **8888**: Chronograf (if enabled)
- **4040/4443**: Heimdall dashboard
- **80**: Traefik HTTP entrypoint

## Architecture

### Templating System
- **`data.yaml`**: Central configuration file with variables, IPs, and feature flags
- **`templates/`**: Jinja2 templates for all service configurations  
- **`outputs/`**: Generated configs ready for deployment
- **`render.sh`**: Processes templates using Python/Jinja2

### Service Architecture
The stack uses feature flags in `data.yaml` to enable/disable services:

**Core Infrastructure:**
- `traefik_feature_flag: true` - Reverse proxy with service discovery
- `portainer_feature_flag: true` - Container management UI
- `pihole_feature_flag: true` - DNS filtering

**Monitoring & Observability:**
- `cadvisor_feature_flag: true` - Container metrics collection
- `loki_feature_flag: false` - Log aggregation (currently disabled, nginx-gateway replaces loki-gateway)
- `promtail_feature_flag: false` - Log shipping to Loki
- `vector_feature_flag: false` - Alternative log processor

**Logging & System Monitoring:**
- `logging_feature_flag: false` - General logging stack
- `syslog_ng_feature_flag: false` - Syslog-ng log processing
- `syslog_ng_exporter_feature_flag: false` - Syslog-ng metrics exporter
- `log_generator_feature_flag: false` - Test log generation

**Development Tools:**
- `weave_scope_feature_flag: false` - Container visualization

### Key Services
- **Monitoring Core**: Prometheus, Grafana, Alertmanager
- **Log Stack**: Loki (configurable), Promtail, Syslog-ng
- **Infrastructure**: Traefik, Nginx gateway, Heimdall dashboard
- **Exporters**: Node, cAdvisor, UniFi Poller, PVE, Blackbox

## Configuration Management

### Environment Setup
1. Copy `docker-compose.env.example` to `env` and configure environment variables
2. Modify `data.yaml` for your environment (IPs, credentials, feature flags)  
3. Run `make render` to generate configurations
4. Deploy from `outputs/` directory

### Key Configuration Files
- **`data.yaml`**: Master configuration with all variables, feature flags, and log levels
- **`docker-compose.env.example`**: Environment variables template
- **`prometheus/prometheus.yml`**: Prometheus scrape configs
- **`grafana/provisioning/`**: Auto-provisioned dashboards and datasources

### Log Level Configuration
All services support configurable log levels in `data.yaml`:
- `loki_log_level: 'info'` - Loki log verbosity
- `prometheus_log_level: 'info'` - Prometheus log verbosity  
- `alertmanager_log_level: 'debug'` - Alertmanager log verbosity
- `promtail_log_level: 'info'` - Promtail log verbosity
- `grafana_log_level: 'info'` - Grafana log verbosity
- `pushgateway_log_level: 'debug'` - Pushgateway log verbosity

### Network Configuration
The project defines monitoring targets in `data.yaml`:
```yaml
prometheus_pinghosts_targets:
- http://google.com;google.com;external;internetbox
- https://192.168.2.6:8006;pve;external;internetbox
```

## Development Workflow

### Making Changes
1. Edit templates in `templates/` directory, not files in `outputs/`
2. Modify variables in `data.yaml` as needed
3. Run `make render` to regenerate configurations
4. Test changes with `cd outputs && docker-compose up -d`

### Branch Strategy
- Current branch: `feature-disable-loki` - demonstrates disabling Loki stack
- Main branch: `main` for stable configurations

### Dashboard Management
- 50+ pre-configured dashboards in `grafana/provisioning/dashboards/`
- Organized by service type (Grafana, Prometheus, UniFi, etc.)
- Auto-loaded via Grafana provisioning system

## Testing and Validation

### Service Health Checks
```bash
# Check service status
cd outputs && docker-compose ps

# Follow logs for specific service
cd outputs && docker-compose logs -f grafana

# Validate Prometheus targets
curl http://localhost:9090/api/v1/targets
```

### Configuration Validation
```bash
# Validate docker-compose syntax
cd outputs && docker-compose config

# Check rendered templates
make render && git diff outputs/
```

## Important Notes

- **Deployment Location**: Always run docker-compose commands from `outputs/` directory
- **Template Priority**: Edit templates, never direct output files
- **Feature Flags**: Use `data.yaml` feature flags to enable/disable services
- **Network Dependencies**: Some services depend on Traefik for routing
- **Credential Management**: Store sensitive values in `env` file or environment variables
- **Service Access**: Use `make chrome` to open all service UIs at once for quick access

## Current State

The project is on `feature-disable-loki` branch, which replaces `loki-gateway` with `nginx-gateway` and disables Loki-related services while maintaining the monitoring stack functionality.