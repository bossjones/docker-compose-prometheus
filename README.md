# docker-compose-prometheus
Just needed this to test out a couple things w/ a python asyncio app


# How to query loki

`{container_name="bossjones/fluentd-elasticsearch:v4.0.0",job="containerlogs"} | pattern `<_> <_> <_> <_>: <firewall_log>``

`{container_name="bossjones/fluentd-elasticsearch:v4.0.0",job="containerlogs"} | pattern `<firewall_year>-<firewall_month>-<firewall_day> <firewall_hour>:<firewall_minute>:<firewall_second> <firewall_offset> <firewall_fluentd_label>: <firewall_log>``

`{container_name="bossjones/fluentd-elasticsearch:v4.0.0",job="containerlogs"} | pattern `<_> <_> <_> <_>: <firewall_log>` | json  | line_format "{{.firewall_log}}"`

- [ ] https://grafana.com/blog/2020/12/08/how-to-create-fast-queries-with-lokis-logql-to-filter-terabytes-of-logs-in-seconds/
- [ ] https://grafana.com/blog/2021/08/09/new-in-loki-2.3-logql-pattern-parser-makes-it-easier-to-extract-data-from-unstructured-logs/


## How to setup

1. cp -a .envrc.sample .envrc
2. direnv allow .
3. python3 -m venv venv
4. . ./venv/bin/activate
5. pip install -r requirements.txt
6. modify data.yaml
7. make render
8. cd ./outputs
9. docker-compose --env-file env ps
10. docker-compose --env-file env up

https://github.com/microdevops-com/microdevops-formula/blob/61ac0273f2e7559d73344934164ccc850eff52c0/loki/pillar.example
