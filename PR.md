# PR Fix Checklist

## Required Actions Before Merge

### 1. Fix Template Inconsistency
- [ ] Wrap `loki-read` service in `{% if loki_feature_flag %}` conditionals (lines 1039-1077)
- [ ] Ensure consistent feature flag usage across all Loki-related services

### 2. Enhance nginx Configuration
- [x] ~~Add proper upstream blocks for monitoring services~~ (Not needed - Traefik handles routing)
- [x] ~~Configure location blocks with appropriate proxy settings~~ (Keep nginx-gateway minimal)
- [x] ~~Include health check endpoints~~ (Current nginx-no-loki.conf is sufficient)
- [x] ~~Add security headers~~ (Not needed for minimal gateway)
- [x] ~~Add proxy headers~~ (Not needed for minimal gateway)

### 3. Verify Dependencies
- [ ] Remove loki-gateway dependencies from prometheus service (lines 693-694, 702-703)
- [ ] Remove loki-gateway links from prometheus service (line 694)
- [ ] Remove loki-gateway dependencies from grafana service (lines 1221-1222)
- [ ] Remove loki-gateway links from grafana service (lines 1226-1227)
- [ ] Check rendered output for orphaned service configurations

### 4. Testing Requirements
- [ ] Run `make render` and verify no loki services appear in output when disabled
- [ ] Verify all services start correctly without loki dependencies
- [ ] Confirm monitoring endpoints are accessible through nginx-gateway
- [ ] Validate port mappings are correct and non-conflicting
- [ ] Test service health checks

### 5. Documentation Updates
- [ ] Update CLAUDE.md to document nginx-gateway vs loki-gateway usage
- [ ] Document port mapping changes
- [ ] Document service access patterns without Loki
- [ ] Update service architecture section

## Additional Improvements

### Configuration Enhancements
- [ ] Address orphaned service configurations
- [ ] Resolve port conflicts and resource waste
- [ ] Implement comprehensive health checks
- [ ] Enhance security configurations

### Testing Workflow
```bash
# 1. Render templates
make render

# 2. Check for loki services (should be empty when disabled)
cd outputs && grep -r "loki" docker-compose.yml

# 3. Start services
cd outputs && docker-compose up -d

# 4. Verify service health
cd outputs && docker-compose ps

# 5. Test nginx-gateway endpoints
curl http://localhost:8080/health  # or appropriate endpoint

# 6. Check logs for errors
make logs
```

## Analysis Findings

### Current State
- **loki_feature_flag: false** in data.yaml (Loki stack disabled)
- **loki-read service** on lines 1039-1077 is NOT wrapped in feature flag conditionals
- **nginx-gateway** uses simplified config with only pushgateway upstream
- **loki-gateway** has complex upstream/location blocks for Loki services
- **Service dependencies** exist that reference Loki services when disabled

### Port Audit
| Service | Internal Port | External Port | Purpose |
|---------|---------------|---------------|---------|
| traefik | 8989 | 8989 | Traefik dashboard |
| traefik | 80/443 | 80/443 | HTTP/HTTPS entrypoints |
| portainer | 9443/9000 | 49443/49000 | Container management |
| nginx-gateway | 80/3100 | 8080/3100 | Gateway proxy |
| prometheus | 9090 | 9092 | Metrics collection |
| grafana | 3000 | 3000 | Visualization |
| alertmanager | 9093 | 9093 | Alert management |
| pushgateway | 9091 | 9091 | Metrics push |
| node-exporter | 9100 | 9100 | Host metrics |
| cadvisor | 8081 | 8081 | Container metrics |
| blackbox | 9115 | 9115 | Network probing |
| unifi-poller | 9130/37288 | 9130/37288 | UniFi metrics |
| influxdb | 8086 | 8086 | Time series DB |
| chronograf | 8888 | 8888 | InfluxDB UI |
| pihole | 80/53 | 81/53 | DNS filtering |
| pihole-exporter | 9617 | 9617 | DNS metrics |
| pve-exporter | 9221 | 9221 | Proxmox metrics |
| speedtest-exporter | 9798 | 9798 | Network speed metrics |
| nginx-exporter | 9113 | 9113 | Nginx metrics |

### Critical Issues Found
1. **loki-read service** (lines 1039-1077) missing feature flag wrapper
2. **Service dependencies** in prometheus service (lines 693-694, 702-703) reference loki-gateway when disabled  
3. **Links** in prometheus service (line 694) and grafana service (lines 1226-1227) reference loki-gateway
4. **loki-read dependencies** - depends on minio which is also feature-flagged

### Additional Clarifications
**Q1:** Should nginx-no-loki.conf include upstreams for prometheus/grafana/alertmanager?  
**A1:** No - Traefik handles routing, keep nginx-gateway minimal

**Q2:** Should loki-read dependencies be removed or wrapped in feature flag?  
**A2:** Wrap loki-read in the same loki_feature_flag

**Q3:** Should nginx-gateway proxy monitoring endpoints when loki disabled?  
**A3:** No - serve as minimal gateway with health checks only

## Key Priorities
1. **Template consistency** - Fix loki-read service wrapping  
2. **Remove hanging dependencies** - Clean up prometheus/grafana loki references
3. **Nginx configuration** - Enhance nginx-no-loki.conf for monitoring services
4. **Comprehensive testing** - Validate all services work without Loki
5. **Documentation** - Update CLAUDE.md accordingly

## Completion Checklist
- [ ] All required actions completed
- [ ] Tests pass successfully
- [ ] Documentation updated
- [ ] No orphaned configurations remain
- [ ] Services start cleanly without Loki dependencies