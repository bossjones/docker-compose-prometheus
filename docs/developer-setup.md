# Developer Environment Setup Guide

This guide provides step-by-step instructions for setting up a new developer environment for the Docker Compose Prometheus monitoring stack.

## Prerequisites

- Docker and Docker Compose installed
- Python 3.x installed (for Jinja2 templating)
- `fd` command installed (for file discovery in render script)
- `direnv` (optional, for environment management)
- Git repository access

## Environment Setup Steps

### 1. Clone and Navigate to Repository

```bash
git clone <repository-url>
cd docker-compose-prometheus
```

### 2. Setup Environment Configuration (Optional but Recommended)

If using direnv for environment management:

```bash
# Copy the sample environment file (if it exists)
cp -a .envrc.sample .envrc  # Note: this file may not exist in current repo
direnv allow .
```

### 3. Create Python Virtual Environment

```bash
python3 -m venv venv
source ./venv/bin/activate  # or `. ./venv/bin/activate`
```

### 4. Install Python Dependencies

```bash
pip install -r requirements.txt
```

This installs the required packages:
- `jinja2-tools` - For template rendering (not jinja-cli)
- `better_exceptions` - Enhanced error reporting
- `bpython` - Better Python REPL
- `yamlfix` - YAML formatting
- `yamllint` - YAML linting
- `rich` - Rich text and beautiful formatting

### 5. Configure Environment Variables

Create your environment configuration file:

```bash
# Copy the example environment file
cp docker-compose.env.example env

# Edit the env file with your specific values
vim env  # or use your preferred editor
```

**Required Environment Variables:**

- `INFLUXDB_ADMIN_USER`: InfluxDB admin username (default: unifi-poller)
- `INFLUXDB_ADMIN_PASSWORD`: InfluxDB admin password (**CHANGE THIS**)
- `GRAFANA_USERNAME`: Grafana admin username (default: admin)
- `GRAFANA_PASSWORD`: Grafana admin password (**CHANGE THIS**)
- `GF_SECURITY_ADMIN_PASSWORD`: Grafana security admin password (**CHANGE THIS**)
- `UNIFI_USER`: UniFi controller username
- `UNIFI_PASS`: UniFi controller password (**CHANGE THIS**)
- `UNIFI_URL`: UniFi controller URL (e.g., https://127.0.0.1:8443)
- `UP_LOKI_URL`: Loki URL for UniFi Poller (e.g., http://192.168.1.98:3100)

### 6. Configure Service Settings

Edit the main configuration file:

```bash
vim data.yaml
```

**Key Configuration Areas:**

- **Feature Flags**: Enable/disable services (e.g., `loki_feature_flag: false`)
- **Network Settings**: Update IP addresses for your environment
- **Log Levels**: Adjust verbosity for different services
- **Monitoring Targets**: Configure which hosts/services to monitor

**Important Feature Flags:**
- `traefik_feature_flag: true` - Reverse proxy
- `cadvisor_feature_flag: true` - Container metrics
- `loki_feature_flag: false` - Log aggregation (currently disabled)
- `promtail_feature_flag: false` - Log shipping
- `portainer_feature_flag: true` - Container management UI

### 7. Render Configuration Templates

Generate all configuration files from templates:

```bash
make render
```

This command:
- Processes all `.j2` template files in `templates/` directory
- Uses variables from `data.yaml` to populate templates
- Outputs generated configs to `outputs/` directory
- Copies UniFi Poller dashboards to Grafana provisioning

### 8. Start the Monitoring Stack

**Method 1: Using Makefile (Recommended)**
```bash
make up
```

**Method 2: Manual Docker Compose**
```bash
cd outputs
docker-compose --env-file env up
```

**Note**: The Makefile `up` target automatically changes to the `outputs/` directory and runs the appropriate docker-compose command with the correct environment file.

### 9. Verify Services

Check that all services are running:

```bash
cd outputs && docker-compose --env-file env ps
```

Or use the Makefile command:

```bash
make logs
```

### 10. Access Service UIs

The stack exposes services on these ports:

- **Grafana**: http://localhost:3000 (admin interface)
- **Prometheus**: http://localhost:9090 (metrics storage)
- **Alertmanager**: http://localhost:9093 (alert management)
- **Traefik**: http://localhost:8080 (reverse proxy dashboard)
- **Heimdall**: http://localhost:4040 (application dashboard)

Quick access to all UIs:

```bash
make chrome
```

## Common Development Commands

### Configuration Management

```bash
# Re-render templates after modifying data.yaml
make render

# Clean restart (down + up)
make restart

# Clean restart with logs
make restart-logs
```

### Service Management

```bash
# Start services
make up

# Stop services  
make down

# View logs
make logs

# Remove containers
make rm
```

### Utilities

```bash
# Generate docker-compose visualization
make viz

# Download Loki dashboards
make loki-dashboards

# Query live Loki configuration
make get_running_config
```

## Troubleshooting

### Common Issues

1. **Services not starting**: Check that all required environment variables are set in `env` file
2. **Port conflicts**: Ensure ports 3000, 9090, 8080, etc. are not in use by other applications
3. **Template rendering fails**: Verify `jinja2-tools` is installed (from requirements.txt) and `data.yaml` syntax is correct
4. **Permission issues**: Check Docker daemon is running and user has docker permissions

### Debug Steps

1. **Check service logs**:
   ```bash
   cd outputs && docker-compose --env-file env logs <service-name>
   ```

2. **Validate docker-compose configuration**:
   ```bash
   cd outputs && docker-compose --env-file env config
   ```

3. **Verify template rendering**:
   ```bash
   make render && git diff outputs/
   ```

## Development Workflow

1. **Making Changes**: 
   - Edit files in `templates/` directory, not in `outputs/`
   - Modify variables in `data.yaml` as needed
   - Run `make render` to regenerate configurations

2. **Testing Changes**:
   - `make restart` to apply configuration changes
   - Check service logs for any errors
   - Verify services in web UIs

3. **Branch Strategy**:
   - Current branch: `feature-disable-loki` 
   - Main branch: `main`

## Architecture Notes

- **Templating**: Uses Jinja2 with `data.yaml` for configuration management
- **Service Discovery**: Traefik provides reverse proxy and service discovery
- **Monitoring**: Prometheus + Grafana + Alertmanager for core monitoring
- **Logging**: Loki stack (currently disabled in favor of nginx-gateway)
- **Dashboards**: 50+ pre-configured dashboards auto-loaded via Grafana provisioning

## Important Reminders

- **Always run docker-compose commands from `outputs/` directory**
- **Edit templates, never output files directly**
- **Use feature flags in `data.yaml` to enable/disable services**
- **Change default passwords in `env` file for security**
- **Run `make render` after any changes to `data.yaml` or templates**