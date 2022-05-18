# parse fluentd_message in logql

`{job="containerlogs"} |~ ".*geoip.*" | line_format "{{.fluentd_message}}"`
