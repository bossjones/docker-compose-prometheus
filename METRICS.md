# loki

```
# HELP cortex_distributor_ingester_clients The current number of ingester clients.
# TYPE cortex_distributor_ingester_clients gauge
cortex_distributor_ingester_clients 3
# HELP cortex_dns_failures_total The number of DNS lookup failures
# TYPE cortex_dns_failures_total counter
cortex_dns_failures_total{name="memberlist"} 0
# HELP cortex_dns_lookups_total The number of DNS lookups resolutions attempts
# TYPE cortex_dns_lookups_total counter
cortex_dns_lookups_total{name="memberlist"} 0
# HELP cortex_frontend_query_range_duration_seconds Total time spent in seconds doing query range requests.
# TYPE cortex_frontend_query_range_duration_seconds histogram
cortex_frontend_query_range_duration_seconds_bucket{method="log_results_cache",status_code="200",le="0.005"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="log_results_cache",status_code="200",le="0.01"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="log_results_cache",status_code="200",le="0.025"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="log_results_cache",status_code="200",le="0.05"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="log_results_cache",status_code="200",le="0.1"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="log_results_cache",status_code="200",le="0.25"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="log_results_cache",status_code="200",le="0.5"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="log_results_cache",status_code="200",le="1"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="log_results_cache",status_code="200",le="2.5"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="log_results_cache",status_code="200",le="5"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="log_results_cache",status_code="200",le="10"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="log_results_cache",status_code="200",le="+Inf"} 1
cortex_frontend_query_range_duration_seconds_sum{method="log_results_cache",status_code="200"} 0.86345906
cortex_frontend_query_range_duration_seconds_count{method="log_results_cache",status_code="200"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="results_cache",status_code="200",le="0.005"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="results_cache",status_code="200",le="0.01"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="results_cache",status_code="200",le="0.025"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="results_cache",status_code="200",le="0.05"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="results_cache",status_code="200",le="0.1"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="results_cache",status_code="200",le="0.25"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="results_cache",status_code="200",le="0.5"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="results_cache",status_code="200",le="1"} 2
cortex_frontend_query_range_duration_seconds_bucket{method="results_cache",status_code="200",le="2.5"} 2
cortex_frontend_query_range_duration_seconds_bucket{method="results_cache",status_code="200",le="5"} 2
cortex_frontend_query_range_duration_seconds_bucket{method="results_cache",status_code="200",le="10"} 2
cortex_frontend_query_range_duration_seconds_bucket{method="results_cache",status_code="200",le="+Inf"} 2
cortex_frontend_query_range_duration_seconds_sum{method="results_cache",status_code="200"} 0.8061727479999999
cortex_frontend_query_range_duration_seconds_count{method="results_cache",status_code="200"} 2
cortex_frontend_query_range_duration_seconds_bucket{method="retry",status_code="200",le="0.005"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="retry",status_code="200",le="0.01"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="retry",status_code="200",le="0.025"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="retry",status_code="200",le="0.05"} 2
cortex_frontend_query_range_duration_seconds_bucket{method="retry",status_code="200",le="0.1"} 2
cortex_frontend_query_range_duration_seconds_bucket{method="retry",status_code="200",le="0.25"} 4
cortex_frontend_query_range_duration_seconds_bucket{method="retry",status_code="200",le="0.5"} 6
cortex_frontend_query_range_duration_seconds_bucket{method="retry",status_code="200",le="1"} 6
cortex_frontend_query_range_duration_seconds_bucket{method="retry",status_code="200",le="2.5"} 6
cortex_frontend_query_range_duration_seconds_bucket{method="retry",status_code="200",le="5"} 7
cortex_frontend_query_range_duration_seconds_bucket{method="retry",status_code="200",le="10"} 7
cortex_frontend_query_range_duration_seconds_bucket{method="retry",status_code="200",le="+Inf"} 7
cortex_frontend_query_range_duration_seconds_sum{method="retry",status_code="200"} 5.480727911999999
cortex_frontend_query_range_duration_seconds_count{method="retry",status_code="200"} 7
cortex_frontend_query_range_duration_seconds_bucket{method="sharding",status_code="200",le="0.005"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="sharding",status_code="200",le="0.01"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="sharding",status_code="200",le="0.025"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="sharding",status_code="200",le="0.05"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="sharding",status_code="200",le="0.1"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="sharding",status_code="200",le="0.25"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="sharding",status_code="200",le="0.5"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="sharding",status_code="200",le="1"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="sharding",status_code="200",le="2.5"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="sharding",status_code="200",le="5"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="sharding",status_code="200",le="10"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="sharding",status_code="200",le="+Inf"} 1
cortex_frontend_query_range_duration_seconds_sum{method="sharding",status_code="200"} 4.193486088
cortex_frontend_query_range_duration_seconds_count{method="sharding",status_code="200"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="shardingware",status_code="200",le="0.005"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="shardingware",status_code="200",le="0.01"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="shardingware",status_code="200",le="0.025"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="shardingware",status_code="200",le="0.05"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="shardingware",status_code="200",le="0.1"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="shardingware",status_code="200",le="0.25"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="shardingware",status_code="200",le="0.5"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="shardingware",status_code="200",le="1"} 3
cortex_frontend_query_range_duration_seconds_bucket{method="shardingware",status_code="200",le="2.5"} 3
cortex_frontend_query_range_duration_seconds_bucket{method="shardingware",status_code="200",le="5"} 3
cortex_frontend_query_range_duration_seconds_bucket{method="shardingware",status_code="200",le="10"} 3
cortex_frontend_query_range_duration_seconds_bucket{method="shardingware",status_code="200",le="+Inf"} 3
cortex_frontend_query_range_duration_seconds_sum{method="shardingware",status_code="200"} 1.622482607
cortex_frontend_query_range_duration_seconds_count{method="shardingware",status_code="200"} 3
cortex_frontend_query_range_duration_seconds_bucket{method="split_by_interval",status_code="200",le="0.005"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="split_by_interval",status_code="200",le="0.01"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="split_by_interval",status_code="200",le="0.025"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="split_by_interval",status_code="200",le="0.05"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="split_by_interval",status_code="200",le="0.1"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="split_by_interval",status_code="200",le="0.25"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="split_by_interval",status_code="200",le="0.5"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="split_by_interval",status_code="200",le="1"} 3
cortex_frontend_query_range_duration_seconds_bucket{method="split_by_interval",status_code="200",le="2.5"} 3
cortex_frontend_query_range_duration_seconds_bucket{method="split_by_interval",status_code="200",le="5"} 4
cortex_frontend_query_range_duration_seconds_bucket{method="split_by_interval",status_code="200",le="10"} 4
cortex_frontend_query_range_duration_seconds_bucket{method="split_by_interval",status_code="200",le="+Inf"} 4
cortex_frontend_query_range_duration_seconds_sum{method="split_by_interval",status_code="200"} 5.863323776
cortex_frontend_query_range_duration_seconds_count{method="split_by_interval",status_code="200"} 4
cortex_frontend_query_range_duration_seconds_bucket{method="step_align",status_code="200",le="0.005"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="step_align",status_code="200",le="0.01"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="step_align",status_code="200",le="0.025"} 0
cortex_frontend_query_range_duration_seconds_bucket{method="step_align",status_code="200",le="0.05"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="step_align",status_code="200",le="0.1"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="step_align",status_code="200",le="0.25"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="step_align",status_code="200",le="0.5"} 1
cortex_frontend_query_range_duration_seconds_bucket{method="step_align",status_code="200",le="1"} 2
cortex_frontend_query_range_duration_seconds_bucket{method="step_align",status_code="200",le="2.5"} 2
cortex_frontend_query_range_duration_seconds_bucket{method="step_align",status_code="200",le="5"} 2
cortex_frontend_query_range_duration_seconds_bucket{method="step_align",status_code="200",le="10"} 2
cortex_frontend_query_range_duration_seconds_bucket{method="step_align",status_code="200",le="+Inf"} 2
cortex_frontend_query_range_duration_seconds_sum{method="step_align",status_code="200"} 0.806354007
cortex_frontend_query_range_duration_seconds_count{method="step_align",status_code="200"} 2
# HELP cortex_ingester_flush_queue_length The total number of series pending in the flush queue.
# TYPE cortex_ingester_flush_queue_length gauge
cortex_ingester_flush_queue_length 0
# HELP cortex_kv_request_duration_seconds Time spent on kv store requests.
# TYPE cortex_kv_request_duration_seconds histogram
cortex_kv_request_duration_seconds_bucket{kv_name="ingester-ring",operation="GET",role="primary",status_code="200",type="memberlist",le="0.005"} 1
cortex_kv_request_duration_seconds_bucket{kv_name="ingester-ring",operation="GET",role="primary",status_code="200",type="memberlist",le="0.01"} 1
cortex_kv_request_duration_seconds_bucket{kv_name="ingester-ring",operation="GET",role="primary",status_code="200",type="memberlist",le="0.025"} 1
cortex_kv_request_duration_seconds_bucket{kv_name="ingester-ring",operation="GET",role="primary",status_code="200",type="memberlist",le="0.05"} 1
cortex_kv_request_duration_seconds_bucket{kv_name="ingester-ring",operation="GET",role="primary",status_code="200",type="memberlist",le="0.1"} 1
cortex_kv_request_duration_seconds_bucket{kv_name="ingester-ring",operation="GET",role="primary",status_code="200",type="memberlist",le="0.25"} 1
cortex_kv_request_duration_seconds_bucket{kv_name="ingester-ring",operation="GET",role="primary",status_code="200",type="memberlist",le="0.5"} 1
cortex_kv_request_duration_seconds_bucket{kv_name="ingester-ring",operation="GET",role="primary",status_code="200",type="memberlist",le="1"} 1
cortex_kv_request_duration_seconds_bucket{kv_name="ingester-ring",operation="GET",role="primary",status_code="200",type="memberlist",le="2.5"} 1
cortex_kv_request_duration_seconds_bucket{kv_name="ingester-ring",operation="GET",role="primary",status_code="200",type="memberlist",le="5"} 1
cortex_kv_request_duration_seconds_bucket{kv_name="ingester-ring",operation="GET",role="primary",status_code="200",type="memberlist",le="10"} 1
cortex_kv_request_duration_seconds_bucket{kv_name="ingester-ring",operation="GET",role="primary",status_code="200",type="memberlist",le="+Inf"} 1
cortex_kv_request_duration_seconds_sum{kv_name="ingester-ring",operation="GET",role="primary",status_code="200",type="memberlist"} 2.2917e-05
cortex_kv_request_duration_seconds_count{kv_name="ingester-ring",operation="GET",role="primary",status_code="200",type="memberlist"} 1
# HELP cortex_query_fetched_chunks_bytes_total Size of all chunks fetched to execute a query in bytes.
# TYPE cortex_query_fetched_chunks_bytes_total counter
cortex_query_fetched_chunks_bytes_total{user="fake"} 0
# HELP cortex_query_fetched_series_total Number of series fetched to execute a query.
# TYPE cortex_query_fetched_series_total counter
cortex_query_fetched_series_total{user="fake"} 0
# HELP cortex_query_frontend_connected_schedulers Number of schedulers this frontend is connected to.
# TYPE cortex_query_frontend_connected_schedulers gauge
cortex_query_frontend_connected_schedulers 2
# HELP cortex_query_frontend_queries_in_progress Number of queries in progress handled by this frontend.
# TYPE cortex_query_frontend_queries_in_progress gauge
cortex_query_frontend_queries_in_progress 0
# HELP cortex_query_frontend_retries Number of times a request is retried.
# TYPE cortex_query_frontend_retries histogram
cortex_query_frontend_retries_bucket{le="0"} 7
cortex_query_frontend_retries_bucket{le="1"} 7
cortex_query_frontend_retries_bucket{le="2"} 7
cortex_query_frontend_retries_bucket{le="3"} 7
cortex_query_frontend_retries_bucket{le="4"} 7
cortex_query_frontend_retries_bucket{le="5"} 7
cortex_query_frontend_retries_bucket{le="+Inf"} 7
cortex_query_frontend_retries_sum 0
cortex_query_frontend_retries_count 7
# HELP cortex_query_seconds_total Total amount of wall clock time spend processing queries.
# TYPE cortex_query_seconds_total counter
cortex_query_seconds_total{user="fake"} 0
# HELP cortex_ring_members Number of members in the ring
# TYPE cortex_ring_members gauge
cortex_ring_members{name="ingester",state="ACTIVE"} 3
cortex_ring_members{name="ingester",state="JOINING"} 0
cortex_ring_members{name="ingester",state="LEAVING"} 0
cortex_ring_members{name="ingester",state="PENDING"} 0
cortex_ring_members{name="ingester",state="Unhealthy"} 0
cortex_ring_members{name="scheduler",state="ACTIVE"} 3
cortex_ring_members{name="scheduler",state="JOINING"} 0
cortex_ring_members{name="scheduler",state="LEAVING"} 0
cortex_ring_members{name="scheduler",state="PENDING"} 0
cortex_ring_members{name="scheduler",state="Unhealthy"} 0
# HELP cortex_ring_oldest_member_timestamp Timestamp of the oldest member in the ring.
# TYPE cortex_ring_oldest_member_timestamp gauge
cortex_ring_oldest_member_timestamp{name="ingester",state="ACTIVE"} 1.702948892e+09
cortex_ring_oldest_member_timestamp{name="ingester",state="JOINING"} 0
cortex_ring_oldest_member_timestamp{name="ingester",state="LEAVING"} 0
cortex_ring_oldest_member_timestamp{name="ingester",state="PENDING"} 0
cortex_ring_oldest_member_timestamp{name="ingester",state="Unhealthy"} 0
cortex_ring_oldest_member_timestamp{name="scheduler",state="ACTIVE"} 1.702948879e+09
cortex_ring_oldest_member_timestamp{name="scheduler",state="JOINING"} 0
cortex_ring_oldest_member_timestamp{name="scheduler",state="LEAVING"} 0
cortex_ring_oldest_member_timestamp{name="scheduler",state="PENDING"} 0
cortex_ring_oldest_member_timestamp{name="scheduler",state="Unhealthy"} 0
# HELP cortex_ring_tokens_total Number of tokens in the ring
# TYPE cortex_ring_tokens_total gauge
cortex_ring_tokens_total{name="ingester"} 384
cortex_ring_tokens_total{name="scheduler"} 3
# HELP counter_memberlist_tcp_connect counter_memberlist_tcp_connect
# TYPE counter_memberlist_tcp_connect counter
counter_memberlist_tcp_connect 2870
# HELP counter_memberlist_tcp_sent counter_memberlist_tcp_sent
# TYPE counter_memberlist_tcp_sent counter
counter_memberlist_tcp_sent 5.1556739e+07
# HELP counter_memberlist_udp_sent counter_memberlist_udp_sent
# TYPE counter_memberlist_udp_sent counter
counter_memberlist_udp_sent 3.78738483e+08
# HELP deprecated_flags_inuse_total The number of deprecated flags currently set.
# TYPE deprecated_flags_inuse_total counter
deprecated_flags_inuse_total 0
# HELP go_cgo_go_to_c_calls_calls_total Count of calls made from Go to C by the current process.
# TYPE go_cgo_go_to_c_calls_calls_total counter
go_cgo_go_to_c_calls_calls_total 0
# HELP go_cpu_classes_gc_mark_assist_cpu_seconds_total Estimated total CPU time goroutines spent performing GC tasks to assist the GC and prevent it from falling behind the application. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics.
# TYPE go_cpu_classes_gc_mark_assist_cpu_seconds_total counter
go_cpu_classes_gc_mark_assist_cpu_seconds_total 0.058810122
# HELP go_cpu_classes_gc_mark_dedicated_cpu_seconds_total Estimated total CPU time spent performing GC tasks on processors (as defined by GOMAXPROCS) dedicated to those tasks. This includes time spent with the world stopped due to the GC. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics.
# TYPE go_cpu_classes_gc_mark_dedicated_cpu_seconds_total counter
go_cpu_classes_gc_mark_dedicated_cpu_seconds_total 5.813301973
# HELP go_cpu_classes_gc_mark_idle_cpu_seconds_total Estimated total CPU time spent performing GC tasks on spare CPU resources that the Go scheduler could not otherwise find a use for. This should be subtracted from the total GC CPU time to obtain a measure of compulsory GC CPU time. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics.
# TYPE go_cpu_classes_gc_mark_idle_cpu_seconds_total counter
go_cpu_classes_gc_mark_idle_cpu_seconds_total 0.062900598
# HELP go_cpu_classes_gc_pause_cpu_seconds_total Estimated total CPU time spent with the application paused by the GC. Even if only one thread is running during the pause, this is computed as GOMAXPROCS times the pause latency because nothing else can be executing. This is the exact sum of samples in /gc/pause:seconds if each sample is multiplied by GOMAXPROCS at the time it is taken. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics.
# TYPE go_cpu_classes_gc_pause_cpu_seconds_total counter
go_cpu_classes_gc_pause_cpu_seconds_total 0.640820636
# HELP go_cpu_classes_gc_total_cpu_seconds_total Estimated total CPU time spent performing GC tasks. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics. Sum of all metrics in /cpu/classes/gc.
# TYPE go_cpu_classes_gc_total_cpu_seconds_total counter
go_cpu_classes_gc_total_cpu_seconds_total 6.575833329
# HELP go_cpu_classes_idle_cpu_seconds_total Estimated total available CPU time not spent executing any Go or Go runtime code. In other words, the part of /cpu/classes/total:cpu-seconds that was unused. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics.
# TYPE go_cpu_classes_idle_cpu_seconds_total counter
go_cpu_classes_idle_cpu_seconds_total 257404.531598043
# HELP go_cpu_classes_scavenge_assist_cpu_seconds_total Estimated total CPU time spent returning unused memory to the underlying platform in response eagerly in response to memory pressure. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics.
# TYPE go_cpu_classes_scavenge_assist_cpu_seconds_total counter
go_cpu_classes_scavenge_assist_cpu_seconds_total 1.008e-06
# HELP go_cpu_classes_scavenge_background_cpu_seconds_total Estimated total CPU time spent performing background tasks to return unused memory to the underlying platform. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics.
# TYPE go_cpu_classes_scavenge_background_cpu_seconds_total counter
go_cpu_classes_scavenge_background_cpu_seconds_total 8.25e-07
# HELP go_cpu_classes_scavenge_total_cpu_seconds_total Estimated total CPU time spent performing tasks that return unused memory to the underlying platform. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics. Sum of all metrics in /cpu/classes/scavenge.
# TYPE go_cpu_classes_scavenge_total_cpu_seconds_total counter
go_cpu_classes_scavenge_total_cpu_seconds_total 1.833e-06
# HELP go_cpu_classes_total_cpu_seconds_total Estimated total available CPU time for user Go code or the Go runtime, as defined by GOMAXPROCS. In other words, GOMAXPROCS integrated over the wall-clock duration this process has been executing for. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics. Sum of all metrics in /cpu/classes.
# TYPE go_cpu_classes_total_cpu_seconds_total counter
go_cpu_classes_total_cpu_seconds_total 343556.504690268
# HELP go_cpu_classes_user_cpu_seconds_total Estimated total CPU time spent running user Go code. This may also include some small amount of time spent in the Go runtime. This metric is an overestimate, and not directly comparable to system CPU time measurements. Compare only with other /cpu/classes metrics.
# TYPE go_cpu_classes_user_cpu_seconds_total counter
go_cpu_classes_user_cpu_seconds_total 86145.397257063
# HELP go_gc_cycles_automatic_gc_cycles_total Count of completed GC cycles generated by the Go runtime.
# TYPE go_gc_cycles_automatic_gc_cycles_total counter
go_gc_cycles_automatic_gc_cycles_total 723
# HELP go_gc_cycles_forced_gc_cycles_total Count of completed GC cycles forced by the application.
# TYPE go_gc_cycles_forced_gc_cycles_total counter
go_gc_cycles_forced_gc_cycles_total 0
# HELP go_gc_cycles_total_gc_cycles_total Count of all completed GC cycles.
# TYPE go_gc_cycles_total_gc_cycles_total counter
go_gc_cycles_total_gc_cycles_total 723
# HELP go_gc_duration_seconds A summary of the pause duration of garbage collection cycles.
# TYPE go_gc_duration_seconds summary
go_gc_duration_seconds{quantile="0"} 3.6829e-05
go_gc_duration_seconds{quantile="0.25"} 4.318e-05
go_gc_duration_seconds{quantile="0.5"} 5.5504e-05
go_gc_duration_seconds{quantile="0.75"} 8.6893e-05
go_gc_duration_seconds{quantile="1"} 0.092421578
go_gc_duration_seconds_sum 0.160205159
go_gc_duration_seconds_count 723
# HELP go_gc_heap_allocs_by_size_bytes Distribution of heap allocations by approximate size. Note that this does not include tiny objects as defined by /gc/heap/tiny/allocs:objects, only tiny blocks.
# TYPE go_gc_heap_allocs_by_size_bytes histogram
go_gc_heap_allocs_by_size_bytes_bucket{le="8.999999999999998"} 7.513224e+06
go_gc_heap_allocs_by_size_bytes_bucket{le="24.999999999999996"} 5.8654408e+07
go_gc_heap_allocs_by_size_bytes_bucket{le="64.99999999999999"} 9.0733438e+07
go_gc_heap_allocs_by_size_bytes_bucket{le="144.99999999999997"} 1.08147521e+08
go_gc_heap_allocs_by_size_bytes_bucket{le="320.99999999999994"} 1.09749307e+08
go_gc_heap_allocs_by_size_bytes_bucket{le="704.9999999999999"} 1.11913329e+08
go_gc_heap_allocs_by_size_bytes_bucket{le="1536.9999999999998"} 1.14881358e+08
go_gc_heap_allocs_by_size_bytes_bucket{le="3200.9999999999995"} 1.15503751e+08
go_gc_heap_allocs_by_size_bytes_bucket{le="6528.999999999999"} 1.16125732e+08
go_gc_heap_allocs_by_size_bytes_bucket{le="13568.999999999998"} 1.16243155e+08
go_gc_heap_allocs_by_size_bytes_bucket{le="27264.999999999996"} 1.16312105e+08
go_gc_heap_allocs_by_size_bytes_bucket{le="+Inf"} 1.16465022e+08
go_gc_heap_allocs_by_size_bytes_sum 2.67583546e+10
go_gc_heap_allocs_by_size_bytes_count 1.16465022e+08
# HELP go_gc_heap_allocs_bytes_total Cumulative sum of memory allocated to the heap by the application.
# TYPE go_gc_heap_allocs_bytes_total counter
go_gc_heap_allocs_bytes_total 2.67583546e+10
# HELP go_gc_heap_allocs_objects_total Cumulative count of heap allocations triggered by the application. Note that this does not include tiny objects as defined by /gc/heap/tiny/allocs:objects, only tiny blocks.
# TYPE go_gc_heap_allocs_objects_total counter
go_gc_heap_allocs_objects_total 1.16465022e+08
# HELP go_gc_heap_frees_by_size_bytes Distribution of freed heap allocations by approximate size. Note that this does not include tiny objects as defined by /gc/heap/tiny/allocs:objects, only tiny blocks.
# TYPE go_gc_heap_frees_by_size_bytes histogram
go_gc_heap_frees_by_size_bytes_bucket{le="8.999999999999998"} 7.511488e+06
go_gc_heap_frees_by_size_bytes_bucket{le="24.999999999999996"} 5.863949e+07
go_gc_heap_frees_by_size_bytes_bucket{le="64.99999999999999"} 9.0704867e+07
go_gc_heap_frees_by_size_bytes_bucket{le="144.99999999999997"} 1.0810501e+08
go_gc_heap_frees_by_size_bytes_bucket{le="320.99999999999994"} 1.09704333e+08
go_gc_heap_frees_by_size_bytes_bucket{le="704.9999999999999"} 1.11865784e+08
go_gc_heap_frees_by_size_bytes_bucket{le="1536.9999999999998"} 1.14833113e+08
go_gc_heap_frees_by_size_bytes_bucket{le="3200.9999999999995"} 1.15455141e+08
go_gc_heap_frees_by_size_bytes_bucket{le="6528.999999999999"} 1.16076959e+08
go_gc_heap_frees_by_size_bytes_bucket{le="13568.999999999998"} 1.16194316e+08
go_gc_heap_frees_by_size_bytes_bucket{le="27264.999999999996"} 1.16263238e+08
go_gc_heap_frees_by_size_bytes_bucket{le="+Inf"} 1.16416007e+08
go_gc_heap_frees_by_size_bytes_sum 2.6711676136e+10
go_gc_heap_frees_by_size_bytes_count 1.16416007e+08
# HELP go_gc_heap_frees_bytes_total Cumulative sum of heap memory freed by the garbage collector.
# TYPE go_gc_heap_frees_bytes_total counter
go_gc_heap_frees_bytes_total 2.6711676136e+10
# HELP go_gc_heap_frees_objects_total Cumulative count of heap allocations whose storage was freed by the garbage collector. Note that this does not include tiny objects as defined by /gc/heap/tiny/allocs:objects, only tiny blocks.
# TYPE go_gc_heap_frees_objects_total counter
go_gc_heap_frees_objects_total 1.16416007e+08
# HELP go_gc_heap_goal_bytes Heap size target for the end of the GC cycle.
# TYPE go_gc_heap_goal_bytes gauge
go_gc_heap_goal_bytes 9.0396168e+07
# HELP go_gc_heap_objects_objects Number of objects, live or unswept, occupying heap memory.
# TYPE go_gc_heap_objects_objects gauge
go_gc_heap_objects_objects 49015
# HELP go_gc_heap_tiny_allocs_objects_total Count of small allocations that are packed together into blocks. These allocations are counted separately from other allocations because each individual allocation is not tracked by the runtime, only their block. Each block is already accounted for in allocs-by-size and frees-by-size.
# TYPE go_gc_heap_tiny_allocs_objects_total counter
go_gc_heap_tiny_allocs_objects_total 1.3933553e+07
# HELP go_gc_limiter_last_enabled_gc_cycle GC cycle the last time the GC CPU limiter was enabled. This metric is useful for diagnosing the root cause of an out-of-memory error, because the limiter trades memory for CPU time when the GC's CPU time gets too high. This is most likely to occur with use of SetMemoryLimit. The first GC cycle is cycle 1, so a value of 0 indicates that it was never enabled.
# TYPE go_gc_limiter_last_enabled_gc_cycle gauge
go_gc_limiter_last_enabled_gc_cycle 0
# HELP go_gc_pauses_seconds Distribution individual GC-related stop-the-world pause latencies.
# TYPE go_gc_pauses_seconds histogram
go_gc_pauses_seconds_bucket{le="6.399999999999999e-08"} 0
go_gc_pauses_seconds_bucket{le="6.399999999999999e-07"} 0
go_gc_pauses_seconds_bucket{le="7.167999999999999e-06"} 605
go_gc_pauses_seconds_bucket{le="8.191999999999999e-05"} 1297
go_gc_pauses_seconds_bucket{le="0.0009175039999999999"} 1440
go_gc_pauses_seconds_bucket{le="0.010485759999999998"} 1445
go_gc_pauses_seconds_bucket{le="0.11744051199999998"} 1446
go_gc_pauses_seconds_bucket{le="+Inf"} 1446
go_gc_pauses_seconds_sum 0.032135295999999994
go_gc_pauses_seconds_count 1446
# HELP go_gc_stack_starting_size_bytes The stack size of new goroutines.
# TYPE go_gc_stack_starting_size_bytes gauge
go_gc_stack_starting_size_bytes 2048
# HELP go_goroutines Number of goroutines that currently exist.
# TYPE go_goroutines gauge
go_goroutines 297
# HELP go_info Information about the Go environment.
# TYPE go_info gauge
go_info{version="go1.20.6"} 1
# HELP go_memory_classes_heap_free_bytes Memory that is completely free and eligible to be returned to the underlying system, but has not been. This metric is the runtime's estimate of free address space that is backed by physical memory.
# TYPE go_memory_classes_heap_free_bytes gauge
go_memory_classes_heap_free_bytes 2.8106752e+07
# HELP go_memory_classes_heap_objects_bytes Memory occupied by live objects and dead objects that have not yet been marked free by the garbage collector.
# TYPE go_memory_classes_heap_objects_bytes gauge
go_memory_classes_heap_objects_bytes 4.6678464e+07
# HELP go_memory_classes_heap_released_bytes Memory that is completely free and has been returned to the underlying system. This metric is the runtime's estimate of free address space that is still mapped into the process, but is not backed by physical memory.
# TYPE go_memory_classes_heap_released_bytes gauge
go_memory_classes_heap_released_bytes 3.534848e+07
# HELP go_memory_classes_heap_stacks_bytes Memory allocated from the heap that is reserved for stack space, whether or not it is currently in-use.
# TYPE go_memory_classes_heap_stacks_bytes gauge
go_memory_classes_heap_stacks_bytes 3.93216e+06
# HELP go_memory_classes_heap_unused_bytes Memory that is reserved for heap objects but is not currently used to hold heap objects.
# TYPE go_memory_classes_heap_unused_bytes gauge
go_memory_classes_heap_unused_bytes 7.56896e+06
# HELP go_memory_classes_metadata_mcache_free_bytes Memory that is reserved for runtime mcache structures, but not in-use.
# TYPE go_memory_classes_metadata_mcache_free_bytes gauge
go_memory_classes_metadata_mcache_free_bytes 10800
# HELP go_memory_classes_metadata_mcache_inuse_bytes Memory that is occupied by runtime mcache structures that are currently being used.
# TYPE go_memory_classes_metadata_mcache_inuse_bytes gauge
go_memory_classes_metadata_mcache_inuse_bytes 4800
# HELP go_memory_classes_metadata_mspan_free_bytes Memory that is reserved for runtime mspan structures, but not in-use.
# TYPE go_memory_classes_metadata_mspan_free_bytes gauge
go_memory_classes_metadata_mspan_free_bytes 423680
# HELP go_memory_classes_metadata_mspan_inuse_bytes Memory that is occupied by runtime mspan structures that are currently being used.
# TYPE go_memory_classes_metadata_mspan_inuse_bytes gauge
go_memory_classes_metadata_mspan_inuse_bytes 343360
# HELP go_memory_classes_metadata_other_bytes Memory that is reserved for or used to hold runtime metadata.
# TYPE go_memory_classes_metadata_other_bytes gauge
go_memory_classes_metadata_other_bytes 1.0571184e+07
# HELP go_memory_classes_os_stacks_bytes Stack memory allocated by the underlying operating system.
# TYPE go_memory_classes_os_stacks_bytes gauge
go_memory_classes_os_stacks_bytes 0
# HELP go_memory_classes_other_bytes Memory used by execution trace buffers, structures for debugging the runtime, finalizer and profiler specials, and more.
# TYPE go_memory_classes_other_bytes gauge
go_memory_classes_other_bytes 1.124892e+06
# HELP go_memory_classes_profiling_buckets_bytes Memory that is used by the stack trace hash map used for profiling.
# TYPE go_memory_classes_profiling_buckets_bytes gauge
go_memory_classes_profiling_buckets_bytes 1.824796e+06
# HELP go_memory_classes_total_bytes All memory mapped by the Go runtime into the current process as read-write. Note that this does not include memory mapped by code called via cgo or via the syscall package. Sum of all metrics in /memory/classes.
# TYPE go_memory_classes_total_bytes gauge
go_memory_classes_total_bytes 1.35938328e+08
# HELP go_memstats_alloc_bytes Number of bytes allocated and still in use.
# TYPE go_memstats_alloc_bytes gauge
go_memstats_alloc_bytes 4.6678464e+07
# HELP go_memstats_alloc_bytes_total Total number of bytes allocated, even if freed.
# TYPE go_memstats_alloc_bytes_total counter
go_memstats_alloc_bytes_total 2.67583546e+10
# HELP go_memstats_buck_hash_sys_bytes Number of bytes used by the profiling bucket hash table.
# TYPE go_memstats_buck_hash_sys_bytes gauge
go_memstats_buck_hash_sys_bytes 1.824796e+06
# HELP go_memstats_frees_total Total number of frees.
# TYPE go_memstats_frees_total counter
go_memstats_frees_total 1.3034956e+08
# HELP go_memstats_gc_sys_bytes Number of bytes used for garbage collection system metadata.
# TYPE go_memstats_gc_sys_bytes gauge
go_memstats_gc_sys_bytes 1.0571184e+07
# HELP go_memstats_heap_alloc_bytes Number of heap bytes allocated and still in use.
# TYPE go_memstats_heap_alloc_bytes gauge
go_memstats_heap_alloc_bytes 4.6678464e+07
# HELP go_memstats_heap_idle_bytes Number of heap bytes waiting to be used.
# TYPE go_memstats_heap_idle_bytes gauge
go_memstats_heap_idle_bytes 6.3455232e+07
# HELP go_memstats_heap_inuse_bytes Number of heap bytes that are in use.
# TYPE go_memstats_heap_inuse_bytes gauge
go_memstats_heap_inuse_bytes 5.4247424e+07
# HELP go_memstats_heap_objects Number of allocated objects.
# TYPE go_memstats_heap_objects gauge
go_memstats_heap_objects 49015
# HELP go_memstats_heap_released_bytes Number of heap bytes released to OS.
# TYPE go_memstats_heap_released_bytes gauge
go_memstats_heap_released_bytes 3.534848e+07
# HELP go_memstats_heap_sys_bytes Number of heap bytes obtained from system.
# TYPE go_memstats_heap_sys_bytes gauge
go_memstats_heap_sys_bytes 1.17702656e+08
# HELP go_memstats_last_gc_time_seconds Number of seconds since 1970 of last garbage collection.
# TYPE go_memstats_last_gc_time_seconds gauge
go_memstats_last_gc_time_seconds 1.7029488881896744e+09
# HELP go_memstats_lookups_total Total number of pointer lookups.
# TYPE go_memstats_lookups_total counter
go_memstats_lookups_total 0
# HELP go_memstats_mallocs_total Total number of mallocs.
# TYPE go_memstats_mallocs_total counter
go_memstats_mallocs_total 1.30398575e+08
# HELP go_memstats_mcache_inuse_bytes Number of bytes in use by mcache structures.
# TYPE go_memstats_mcache_inuse_bytes gauge
go_memstats_mcache_inuse_bytes 4800
# HELP go_memstats_mcache_sys_bytes Number of bytes used for mcache structures obtained from system.
# TYPE go_memstats_mcache_sys_bytes gauge
go_memstats_mcache_sys_bytes 15600
# HELP go_memstats_mspan_inuse_bytes Number of bytes in use by mspan structures.
# TYPE go_memstats_mspan_inuse_bytes gauge
go_memstats_mspan_inuse_bytes 343360
# HELP go_memstats_mspan_sys_bytes Number of bytes used for mspan structures obtained from system.
# TYPE go_memstats_mspan_sys_bytes gauge
go_memstats_mspan_sys_bytes 767040
# HELP go_memstats_next_gc_bytes Number of heap bytes when next garbage collection will take place.
# TYPE go_memstats_next_gc_bytes gauge
go_memstats_next_gc_bytes 9.0396168e+07
# HELP go_memstats_other_sys_bytes Number of bytes used for other system allocations.
# TYPE go_memstats_other_sys_bytes gauge
go_memstats_other_sys_bytes 1.124892e+06
# HELP go_memstats_stack_inuse_bytes Number of bytes in use by the stack allocator.
# TYPE go_memstats_stack_inuse_bytes gauge
go_memstats_stack_inuse_bytes 3.93216e+06
# HELP go_memstats_stack_sys_bytes Number of bytes obtained from system for stack allocator.
# TYPE go_memstats_stack_sys_bytes gauge
go_memstats_stack_sys_bytes 3.93216e+06
# HELP go_memstats_sys_bytes Number of bytes obtained from system.
# TYPE go_memstats_sys_bytes gauge
go_memstats_sys_bytes 1.35938328e+08
# HELP go_sched_gomaxprocs_threads The current runtime.GOMAXPROCS setting, or the number of operating system threads that can execute user-level Go code simultaneously.
# TYPE go_sched_gomaxprocs_threads gauge
go_sched_gomaxprocs_threads 4
# HELP go_sched_goroutines_goroutines Count of live goroutines.
# TYPE go_sched_goroutines_goroutines gauge
go_sched_goroutines_goroutines 297
# HELP go_sched_latencies_seconds Distribution of the time goroutines have spent in the scheduler in a runnable state before actually running.
# TYPE go_sched_latencies_seconds histogram
go_sched_latencies_seconds_bucket{le="6.399999999999999e-08"} 685626
go_sched_latencies_seconds_bucket{le="6.399999999999999e-07"} 936934
go_sched_latencies_seconds_bucket{le="7.167999999999999e-06"} 1.208354e+06
go_sched_latencies_seconds_bucket{le="8.191999999999999e-05"} 1.383088e+06
go_sched_latencies_seconds_bucket{le="0.0009175039999999999"} 1.408472e+06
go_sched_latencies_seconds_bucket{le="0.010485759999999998"} 1.409913e+06
go_sched_latencies_seconds_bucket{le="0.11744051199999998"} 1.409924e+06
go_sched_latencies_seconds_bucket{le="+Inf"} 1.409932e+06
go_sched_latencies_seconds_sum 5.898733824000001
go_sched_latencies_seconds_count 1.409932e+06
# HELP go_sync_mutex_wait_total_seconds_total Approximate cumulative time goroutines have spent blocked on a sync.Mutex or sync.RWMutex. This metric is useful for identifying global changes in lock contention. Collect a mutex or block profile using the runtime/pprof package for more detailed contention data.
# TYPE go_sync_mutex_wait_total_seconds_total counter
go_sync_mutex_wait_total_seconds_total 14.21504224
# HELP go_threads Number of OS threads created.
# TYPE go_threads gauge
go_threads 13
# HELP jaeger_tracer_baggage_restrictions_updates_total Number of times baggage restrictions were successfully updated
# TYPE jaeger_tracer_baggage_restrictions_updates_total counter
jaeger_tracer_baggage_restrictions_updates_total{result="err"} 0
jaeger_tracer_baggage_restrictions_updates_total{result="ok"} 0
# HELP jaeger_tracer_baggage_truncations_total Number of times baggage was truncated as per baggage restrictions
# TYPE jaeger_tracer_baggage_truncations_total counter
jaeger_tracer_baggage_truncations_total 0
# HELP jaeger_tracer_baggage_updates_total Number of times baggage was successfully written or updated on spans
# TYPE jaeger_tracer_baggage_updates_total counter
jaeger_tracer_baggage_updates_total{result="err"} 0
jaeger_tracer_baggage_updates_total{result="ok"} 0
# HELP jaeger_tracer_finished_spans_total Number of sampled spans finished by this tracer
# TYPE jaeger_tracer_finished_spans_total counter
jaeger_tracer_finished_spans_total{sampled="delayed"} 0
jaeger_tracer_finished_spans_total{sampled="n"} 17797
jaeger_tracer_finished_spans_total{sampled="y"} 0
# HELP jaeger_tracer_reporter_queue_length Current number of spans in the reporter queue
# TYPE jaeger_tracer_reporter_queue_length gauge
jaeger_tracer_reporter_queue_length 0
# HELP jaeger_tracer_reporter_spans_total Number of spans successfully reported
# TYPE jaeger_tracer_reporter_spans_total counter
jaeger_tracer_reporter_spans_total{result="dropped"} 0
jaeger_tracer_reporter_spans_total{result="err"} 0
jaeger_tracer_reporter_spans_total{result="ok"} 0
# HELP jaeger_tracer_sampler_queries_total Number of times the Sampler succeeded to retrieve sampling strategy
# TYPE jaeger_tracer_sampler_queries_total counter
jaeger_tracer_sampler_queries_total{result="err"} 1431
jaeger_tracer_sampler_queries_total{result="ok"} 0
# HELP jaeger_tracer_sampler_updates_total Number of times the Sampler succeeded to retrieve and update sampling strategy
# TYPE jaeger_tracer_sampler_updates_total counter
jaeger_tracer_sampler_updates_total{result="err"} 0
jaeger_tracer_sampler_updates_total{result="ok"} 0
# HELP jaeger_tracer_span_context_decoding_errors_total Number of errors decoding tracing context
# TYPE jaeger_tracer_span_context_decoding_errors_total counter
jaeger_tracer_span_context_decoding_errors_total 0
# HELP jaeger_tracer_started_spans_total Number of spans started by this tracer as sampled
# TYPE jaeger_tracer_started_spans_total counter
jaeger_tracer_started_spans_total{sampled="delayed"} 0
jaeger_tracer_started_spans_total{sampled="n"} 17823
jaeger_tracer_started_spans_total{sampled="y"} 0
# HELP jaeger_tracer_throttled_debug_spans_total Number of times debug spans were throttled
# TYPE jaeger_tracer_throttled_debug_spans_total counter
jaeger_tracer_throttled_debug_spans_total 0
# HELP jaeger_tracer_throttler_updates_total Number of times throttler successfully updated
# TYPE jaeger_tracer_throttler_updates_total counter
jaeger_tracer_throttler_updates_total{result="err"} 0
jaeger_tracer_throttler_updates_total{result="ok"} 0
# HELP jaeger_tracer_traces_total Number of traces started by this tracer as sampled
# TYPE jaeger_tracer_traces_total counter
jaeger_tracer_traces_total{sampled="n",state="joined"} 192
jaeger_tracer_traces_total{sampled="n",state="started"} 17401
jaeger_tracer_traces_total{sampled="y",state="joined"} 0
jaeger_tracer_traces_total{sampled="y",state="started"} 0
# HELP logql_query_duration_seconds LogQL query timings
# TYPE logql_query_duration_seconds histogram
logql_query_duration_seconds_bucket{query_type="range",le="0.005"} 2
logql_query_duration_seconds_bucket{query_type="range",le="0.01"} 2
logql_query_duration_seconds_bucket{query_type="range",le="0.025"} 2
logql_query_duration_seconds_bucket{query_type="range",le="0.05"} 3
logql_query_duration_seconds_bucket{query_type="range",le="0.1"} 3
logql_query_duration_seconds_bucket{query_type="range",le="0.25"} 4
logql_query_duration_seconds_bucket{query_type="range",le="0.5"} 7
logql_query_duration_seconds_bucket{query_type="range",le="1"} 7
logql_query_duration_seconds_bucket{query_type="range",le="2.5"} 7
logql_query_duration_seconds_bucket{query_type="range",le="5"} 7
logql_query_duration_seconds_bucket{query_type="range",le="10"} 7
logql_query_duration_seconds_bucket{query_type="range",le="+Inf"} 7
logql_query_duration_seconds_sum{query_type="range"} 1.41609556
logql_query_duration_seconds_count{query_type="range"} 7
logql_query_duration_seconds_bucket{query_type="series",le="0.005"} 7
logql_query_duration_seconds_bucket{query_type="series",le="0.01"} 9
logql_query_duration_seconds_bucket{query_type="series",le="0.025"} 9
logql_query_duration_seconds_bucket{query_type="series",le="0.05"} 9
logql_query_duration_seconds_bucket{query_type="series",le="0.1"} 9
logql_query_duration_seconds_bucket{query_type="series",le="0.25"} 10
logql_query_duration_seconds_bucket{query_type="series",le="0.5"} 11
logql_query_duration_seconds_bucket{query_type="series",le="1"} 11
logql_query_duration_seconds_bucket{query_type="series",le="2.5"} 11
logql_query_duration_seconds_bucket{query_type="series",le="5"} 15
logql_query_duration_seconds_bucket{query_type="series",le="10"} 15
logql_query_duration_seconds_bucket{query_type="series",le="+Inf"} 15
logql_query_duration_seconds_sum{query_type="series"} 11.813904322
logql_query_duration_seconds_count{query_type="series"} 15
# HELP loki_azure_blob_egress_bytes_total Total bytes downloaded from Azure Blob Storage.
# TYPE loki_azure_blob_egress_bytes_total counter
loki_azure_blob_egress_bytes_total 0
# HELP loki_boltdb_shipper_tables_download_operation_duration_seconds Time (in seconds) spent in downloading updated files for all the tables
# TYPE loki_boltdb_shipper_tables_download_operation_duration_seconds gauge
loki_boltdb_shipper_tables_download_operation_duration_seconds{component="index-store-boltdb-shipper-2020-08-01"} 2.9774e-05
# HELP loki_boltdb_shipper_tables_sync_operation_total Total number of tables sync operations done by status
# TYPE loki_boltdb_shipper_tables_sync_operation_total counter
loki_boltdb_shipper_tables_sync_operation_total{component="index-store-boltdb-shipper-2020-08-01",status="success"} 17179
# HELP loki_build_info A metric with a constant '1' value labeled by version, revision, branch, goversion from which loki was built, and the goos and goarch for the build.
# TYPE loki_build_info gauge
loki_build_info{branch="HEAD",goarch="amd64",goos="linux",goversion="go1.20.6",revision="0d81144cf",version="2.8.3"} 1
# HELP loki_bytes_per_line The total number of bytes per line.
# TYPE loki_bytes_per_line histogram
loki_bytes_per_line_bucket{le="1"} 0
loki_bytes_per_line_bucket{le="8"} 0
loki_bytes_per_line_bucket{le="64"} 0
loki_bytes_per_line_bucket{le="512"} 0
loki_bytes_per_line_bucket{le="4096"} 0
loki_bytes_per_line_bucket{le="32768"} 0
loki_bytes_per_line_bucket{le="262144"} 0
loki_bytes_per_line_bucket{le="2.097152e+06"} 0
loki_bytes_per_line_bucket{le="+Inf"} 0
loki_bytes_per_line_sum 0
loki_bytes_per_line_count 0
# HELP loki_cache_corrupt_chunks_total Total count of corrupt chunks found in cache.
# TYPE loki_cache_corrupt_chunks_total counter
loki_cache_corrupt_chunks_total 0
# HELP loki_cache_fetched_keys Total count of keys requested from cache.
# TYPE loki_cache_fetched_keys counter
loki_cache_fetched_keys{name="chunksembedded-cache"} 0
loki_cache_fetched_keys{name="frontend.embedded-cache"} 2
loki_cache_fetched_keys{name="store.index-cache-read.embedded-cache"} 0
# HELP loki_cache_hits Total count of keys found in cache.
# TYPE loki_cache_hits counter
loki_cache_hits{name="chunksembedded-cache"} 0
loki_cache_hits{name="frontend.embedded-cache"} 0
loki_cache_hits{name="store.index-cache-read.embedded-cache"} 0
# HELP loki_cache_request_duration_seconds Total time spent in seconds doing cache requests.
# TYPE loki_cache_request_duration_seconds histogram
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.fetch",name="frontend.embedded-cache",status_code="200",le="1.6e-05"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.fetch",name="frontend.embedded-cache",status_code="200",le="6.4e-05"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.fetch",name="frontend.embedded-cache",status_code="200",le="0.000256"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.fetch",name="frontend.embedded-cache",status_code="200",le="0.001024"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.fetch",name="frontend.embedded-cache",status_code="200",le="0.004096"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.fetch",name="frontend.embedded-cache",status_code="200",le="0.016384"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.fetch",name="frontend.embedded-cache",status_code="200",le="0.065536"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.fetch",name="frontend.embedded-cache",status_code="200",le="0.262144"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.fetch",name="frontend.embedded-cache",status_code="200",le="+Inf"} 2
loki_cache_request_duration_seconds_sum{method="frontend.embedded-cache.fetch",name="frontend.embedded-cache",status_code="200"} 1.7689e-05
loki_cache_request_duration_seconds_count{method="frontend.embedded-cache.fetch",name="frontend.embedded-cache",status_code="200"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.store",name="frontend.embedded-cache",status_code="200",le="1.6e-05"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.store",name="frontend.embedded-cache",status_code="200",le="6.4e-05"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.store",name="frontend.embedded-cache",status_code="200",le="0.000256"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.store",name="frontend.embedded-cache",status_code="200",le="0.001024"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.store",name="frontend.embedded-cache",status_code="200",le="0.004096"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.store",name="frontend.embedded-cache",status_code="200",le="0.016384"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.store",name="frontend.embedded-cache",status_code="200",le="0.065536"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.store",name="frontend.embedded-cache",status_code="200",le="0.262144"} 2
loki_cache_request_duration_seconds_bucket{method="frontend.embedded-cache.store",name="frontend.embedded-cache",status_code="200",le="+Inf"} 2
loki_cache_request_duration_seconds_sum{method="frontend.embedded-cache.store",name="frontend.embedded-cache",status_code="200"} 1.1262999999999999e-05
loki_cache_request_duration_seconds_count{method="frontend.embedded-cache.store",name="frontend.embedded-cache",status_code="200"} 2
# HELP loki_cache_value_size_bytes Size of values in the cache.
# TYPE loki_cache_value_size_bytes histogram
loki_cache_value_size_bytes_bucket{method="fetch",name="chunksembedded-cache",le="1024"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="chunksembedded-cache",le="4096"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="chunksembedded-cache",le="16384"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="chunksembedded-cache",le="65536"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="chunksembedded-cache",le="262144"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="chunksembedded-cache",le="1.048576e+06"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="chunksembedded-cache",le="4.194304e+06"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="chunksembedded-cache",le="+Inf"} 0
loki_cache_value_size_bytes_sum{method="fetch",name="chunksembedded-cache"} 0
loki_cache_value_size_bytes_count{method="fetch",name="chunksembedded-cache"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="frontend.embedded-cache",le="1024"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="frontend.embedded-cache",le="4096"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="frontend.embedded-cache",le="16384"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="frontend.embedded-cache",le="65536"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="frontend.embedded-cache",le="262144"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="frontend.embedded-cache",le="1.048576e+06"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="frontend.embedded-cache",le="4.194304e+06"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="frontend.embedded-cache",le="+Inf"} 0
loki_cache_value_size_bytes_sum{method="fetch",name="frontend.embedded-cache"} 0
loki_cache_value_size_bytes_count{method="fetch",name="frontend.embedded-cache"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="store.index-cache-read.embedded-cache",le="1024"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="store.index-cache-read.embedded-cache",le="4096"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="store.index-cache-read.embedded-cache",le="16384"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="store.index-cache-read.embedded-cache",le="65536"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="store.index-cache-read.embedded-cache",le="262144"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="store.index-cache-read.embedded-cache",le="1.048576e+06"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="store.index-cache-read.embedded-cache",le="4.194304e+06"} 0
loki_cache_value_size_bytes_bucket{method="fetch",name="store.index-cache-read.embedded-cache",le="+Inf"} 0
loki_cache_value_size_bytes_sum{method="fetch",name="store.index-cache-read.embedded-cache"} 0
loki_cache_value_size_bytes_count{method="fetch",name="store.index-cache-read.embedded-cache"} 0
loki_cache_value_size_bytes_bucket{method="store",name="chunksembedded-cache",le="1024"} 0
loki_cache_value_size_bytes_bucket{method="store",name="chunksembedded-cache",le="4096"} 0
loki_cache_value_size_bytes_bucket{method="store",name="chunksembedded-cache",le="16384"} 0
loki_cache_value_size_bytes_bucket{method="store",name="chunksembedded-cache",le="65536"} 0
loki_cache_value_size_bytes_bucket{method="store",name="chunksembedded-cache",le="262144"} 0
loki_cache_value_size_bytes_bucket{method="store",name="chunksembedded-cache",le="1.048576e+06"} 0
loki_cache_value_size_bytes_bucket{method="store",name="chunksembedded-cache",le="4.194304e+06"} 0
loki_cache_value_size_bytes_bucket{method="store",name="chunksembedded-cache",le="+Inf"} 0
loki_cache_value_size_bytes_sum{method="store",name="chunksembedded-cache"} 0
loki_cache_value_size_bytes_count{method="store",name="chunksembedded-cache"} 0
loki_cache_value_size_bytes_bucket{method="store",name="frontend.embedded-cache",le="1024"} 2
loki_cache_value_size_bytes_bucket{method="store",name="frontend.embedded-cache",le="4096"} 2
loki_cache_value_size_bytes_bucket{method="store",name="frontend.embedded-cache",le="16384"} 2
loki_cache_value_size_bytes_bucket{method="store",name="frontend.embedded-cache",le="65536"} 2
loki_cache_value_size_bytes_bucket{method="store",name="frontend.embedded-cache",le="262144"} 2
loki_cache_value_size_bytes_bucket{method="store",name="frontend.embedded-cache",le="1.048576e+06"} 2
loki_cache_value_size_bytes_bucket{method="store",name="frontend.embedded-cache",le="4.194304e+06"} 2
loki_cache_value_size_bytes_bucket{method="store",name="frontend.embedded-cache",le="+Inf"} 2
loki_cache_value_size_bytes_sum{method="store",name="frontend.embedded-cache"} 670
loki_cache_value_size_bytes_count{method="store",name="frontend.embedded-cache"} 2
loki_cache_value_size_bytes_bucket{method="store",name="store.index-cache-read.embedded-cache",le="1024"} 0
loki_cache_value_size_bytes_bucket{method="store",name="store.index-cache-read.embedded-cache",le="4096"} 0
loki_cache_value_size_bytes_bucket{method="store",name="store.index-cache-read.embedded-cache",le="16384"} 0
loki_cache_value_size_bytes_bucket{method="store",name="store.index-cache-read.embedded-cache",le="65536"} 0
loki_cache_value_size_bytes_bucket{method="store",name="store.index-cache-read.embedded-cache",le="262144"} 0
loki_cache_value_size_bytes_bucket{method="store",name="store.index-cache-read.embedded-cache",le="1.048576e+06"} 0
loki_cache_value_size_bytes_bucket{method="store",name="store.index-cache-read.embedded-cache",le="4.194304e+06"} 0
loki_cache_value_size_bytes_bucket{method="store",name="store.index-cache-read.embedded-cache",le="+Inf"} 0
loki_cache_value_size_bytes_sum{method="store",name="store.index-cache-read.embedded-cache"} 0
loki_cache_value_size_bytes_count{method="store",name="store.index-cache-read.embedded-cache"} 0
# HELP loki_chunk_fetcher_cache_dequeued_total Total number of chunks asynchronously dequeued from a buffer and written back to the chunk cache.
# TYPE loki_chunk_fetcher_cache_dequeued_total counter
loki_chunk_fetcher_cache_dequeued_total 0
# HELP loki_chunk_fetcher_cache_enqueued_total Total number of chunks enqueued to a buffer to be asynchronously written back to the chunk cache.
# TYPE loki_chunk_fetcher_cache_enqueued_total counter
loki_chunk_fetcher_cache_enqueued_total 0
# HELP loki_chunk_fetcher_cache_skipped_buffer_full_total Total number of operations against cache that have been skipped.
# TYPE loki_chunk_fetcher_cache_skipped_buffer_full_total counter
loki_chunk_fetcher_cache_skipped_buffer_full_total 0
# HELP loki_chunk_store_chunks_per_query Distribution of #chunks per query.
# TYPE loki_chunk_store_chunks_per_query histogram
loki_chunk_store_chunks_per_query_bucket{le="10"} 0
loki_chunk_store_chunks_per_query_bucket{le="80"} 0
loki_chunk_store_chunks_per_query_bucket{le="640"} 0
loki_chunk_store_chunks_per_query_bucket{le="5120"} 0
loki_chunk_store_chunks_per_query_bucket{le="40960"} 0
loki_chunk_store_chunks_per_query_bucket{le="327680"} 0
loki_chunk_store_chunks_per_query_bucket{le="2.62144e+06"} 0
loki_chunk_store_chunks_per_query_bucket{le="+Inf"} 0
loki_chunk_store_chunks_per_query_sum 0
loki_chunk_store_chunks_per_query_count 0
# HELP loki_chunk_store_deduped_chunks_total Count of chunks which were not stored because they have already been stored by another replica.
# TYPE loki_chunk_store_deduped_chunks_total counter
loki_chunk_store_deduped_chunks_total 0
# HELP loki_chunk_store_index_entries_per_chunk Number of entries written to storage per chunk.
# TYPE loki_chunk_store_index_entries_per_chunk histogram
loki_chunk_store_index_entries_per_chunk_bucket{le="1"} 0
loki_chunk_store_index_entries_per_chunk_bucket{le="2"} 0
loki_chunk_store_index_entries_per_chunk_bucket{le="4"} 0
loki_chunk_store_index_entries_per_chunk_bucket{le="8"} 0
loki_chunk_store_index_entries_per_chunk_bucket{le="16"} 0
loki_chunk_store_index_entries_per_chunk_bucket{le="+Inf"} 0
loki_chunk_store_index_entries_per_chunk_sum 0
loki_chunk_store_index_entries_per_chunk_count 0
# HELP loki_chunk_store_index_lookups_per_query Distribution of #index lookups per query.
# TYPE loki_chunk_store_index_lookups_per_query histogram
loki_chunk_store_index_lookups_per_query_bucket{le="1"} 0
loki_chunk_store_index_lookups_per_query_bucket{le="2"} 0
loki_chunk_store_index_lookups_per_query_bucket{le="4"} 0
loki_chunk_store_index_lookups_per_query_bucket{le="8"} 0
loki_chunk_store_index_lookups_per_query_bucket{le="16"} 0
loki_chunk_store_index_lookups_per_query_bucket{le="+Inf"} 0
loki_chunk_store_index_lookups_per_query_sum 0
loki_chunk_store_index_lookups_per_query_count 0
# HELP loki_chunk_store_series_post_intersection_per_query Distribution of #series (post intersection) per query.
# TYPE loki_chunk_store_series_post_intersection_per_query histogram
loki_chunk_store_series_post_intersection_per_query_bucket{le="10"} 0
loki_chunk_store_series_post_intersection_per_query_bucket{le="80"} 0
loki_chunk_store_series_post_intersection_per_query_bucket{le="640"} 0
loki_chunk_store_series_post_intersection_per_query_bucket{le="5120"} 0
loki_chunk_store_series_post_intersection_per_query_bucket{le="40960"} 0
loki_chunk_store_series_post_intersection_per_query_bucket{le="327680"} 0
loki_chunk_store_series_post_intersection_per_query_bucket{le="+Inf"} 0
loki_chunk_store_series_post_intersection_per_query_sum 0
loki_chunk_store_series_post_intersection_per_query_count 0
# HELP loki_chunk_store_series_pre_intersection_per_query Distribution of #series (pre intersection) per query.
# TYPE loki_chunk_store_series_pre_intersection_per_query histogram
loki_chunk_store_series_pre_intersection_per_query_bucket{le="10"} 0
loki_chunk_store_series_pre_intersection_per_query_bucket{le="80"} 0
loki_chunk_store_series_pre_intersection_per_query_bucket{le="640"} 0
loki_chunk_store_series_pre_intersection_per_query_bucket{le="5120"} 0
loki_chunk_store_series_pre_intersection_per_query_bucket{le="40960"} 0
loki_chunk_store_series_pre_intersection_per_query_bucket{le="327680"} 0
loki_chunk_store_series_pre_intersection_per_query_bucket{le="+Inf"} 0
loki_chunk_store_series_pre_intersection_per_query_sum 0
loki_chunk_store_series_pre_intersection_per_query_count 0
# HELP loki_delete_cache_gen_load_failures_total Total number of failures while loading cache generation number using gen number loader
# TYPE loki_delete_cache_gen_load_failures_total counter
loki_delete_cache_gen_load_failures_total{source="http_client"} 6
# HELP loki_delete_request_lookups_failed_total Number times the client has failed to look up delete requests
# TYPE loki_delete_request_lookups_failed_total counter
loki_delete_request_lookups_failed_total 4
# HELP loki_delete_request_lookups_total Number times the client has looked up delete requests
# TYPE loki_delete_request_lookups_total counter
loki_delete_request_lookups_total 4
# HELP loki_experimental_features_in_use_total The number of experimental features in use.
# TYPE loki_experimental_features_in_use_total counter
loki_experimental_features_in_use_total 3
# HELP loki_index_chunk_refs_total Number of chunks refs downloaded, partitioned by whether they intersect the query bounds.
# TYPE loki_index_chunk_refs_total counter
loki_index_chunk_refs_total{status="discarded"} 0
loki_index_chunk_refs_total{status="matched"} 0
# HELP loki_index_request_duration_seconds Time (in seconds) spent in serving index query requests
# TYPE loki_index_request_duration_seconds histogram
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="chunk_refs",status_code="200",le="0.005"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="chunk_refs",status_code="200",le="0.012301915262620913"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="chunk_refs",status_code="200",le="0.03026742382574107"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="chunk_refs",status_code="200",le="0.07446945662441999"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="chunk_refs",status_code="200",le="0.18322338900940766"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="chunk_refs",status_code="200",le="0.4507997211447921"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="chunk_refs",status_code="200",le="1.109139993987274"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="chunk_refs",status_code="200",le="2.7289092440830625"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="chunk_refs",status_code="200",le="6.7141620560185435"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="chunk_refs",status_code="200",le="16.519410534528944"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="chunk_refs",status_code="200",le="40.644077716844464"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="chunk_refs",status_code="200",le="99.99999999999989"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="chunk_refs",status_code="200",le="+Inf"} 4
loki_index_request_duration_seconds_sum{component="index-store-tsdb-2023-07-11",operation="chunk_refs",status_code="200"} 0.0015030059999999999
loki_index_request_duration_seconds_count{component="index-store-tsdb-2023-07-11",operation="chunk_refs",status_code="200"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="series",status_code="200",le="0.005"} 11
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="series",status_code="200",le="0.012301915262620913"} 11
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="series",status_code="200",le="0.03026742382574107"} 11
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="series",status_code="200",le="0.07446945662441999"} 11
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="series",status_code="200",le="0.18322338900940766"} 11
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="series",status_code="200",le="0.4507997211447921"} 11
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="series",status_code="200",le="1.109139993987274"} 11
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="series",status_code="200",le="2.7289092440830625"} 15
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="series",status_code="200",le="6.7141620560185435"} 15
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="series",status_code="200",le="16.519410534528944"} 15
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="series",status_code="200",le="40.644077716844464"} 15
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="series",status_code="200",le="99.99999999999989"} 15
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="series",status_code="200",le="+Inf"} 15
loki_index_request_duration_seconds_sum{component="index-store-tsdb-2023-07-11",operation="series",status_code="200"} 6.447164976000001
loki_index_request_duration_seconds_count{component="index-store-tsdb-2023-07-11",operation="series",status_code="200"} 15
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="stats",status_code="200",le="0.005"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="stats",status_code="200",le="0.012301915262620913"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="stats",status_code="200",le="0.03026742382574107"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="stats",status_code="200",le="0.07446945662441999"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="stats",status_code="200",le="0.18322338900940766"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="stats",status_code="200",le="0.4507997211447921"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="stats",status_code="200",le="1.109139993987274"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="stats",status_code="200",le="2.7289092440830625"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="stats",status_code="200",le="6.7141620560185435"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="stats",status_code="200",le="16.519410534528944"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="stats",status_code="200",le="40.644077716844464"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="stats",status_code="200",le="99.99999999999989"} 4
loki_index_request_duration_seconds_bucket{component="index-store-tsdb-2023-07-11",operation="stats",status_code="200",le="+Inf"} 4
loki_index_request_duration_seconds_sum{component="index-store-tsdb-2023-07-11",operation="stats",status_code="200"} 0.0015149309999999997
loki_index_request_duration_seconds_count{component="index-store-tsdb-2023-07-11",operation="stats",status_code="200"} 4
# HELP loki_inflight_requests Current number of inflight requests.
# TYPE loki_inflight_requests gauge
loki_inflight_requests{method="GET",route="loki_api_v1_query_range"} 0
loki_inflight_requests{method="GET",route="loki_api_v1_series"} 0
loki_inflight_requests{method="GET",route="metrics"} 1
loki_inflight_requests{method="GET",route="ready"} 0
loki_inflight_requests{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult"} 0
loki_inflight_requests{method="gRPC",route="/grpc.health.v1.Health/Check"} 0
# HELP loki_ingester_client_request_duration_seconds Time spent doing Ingester requests.
# TYPE loki_ingester_client_request_duration_seconds histogram
loki_ingester_client_request_duration_seconds_bucket{operation="/grpc.health.v1.Health/Check",status_code="2xx",le="0.001"} 30
loki_ingester_client_request_duration_seconds_bucket{operation="/grpc.health.v1.Health/Check",status_code="2xx",le="0.004"} 47
loki_ingester_client_request_duration_seconds_bucket{operation="/grpc.health.v1.Health/Check",status_code="2xx",le="0.016"} 48
loki_ingester_client_request_duration_seconds_bucket{operation="/grpc.health.v1.Health/Check",status_code="2xx",le="0.064"} 48
loki_ingester_client_request_duration_seconds_bucket{operation="/grpc.health.v1.Health/Check",status_code="2xx",le="0.256"} 48
loki_ingester_client_request_duration_seconds_bucket{operation="/grpc.health.v1.Health/Check",status_code="2xx",le="1.024"} 51
loki_ingester_client_request_duration_seconds_bucket{operation="/grpc.health.v1.Health/Check",status_code="2xx",le="+Inf"} 51
loki_ingester_client_request_duration_seconds_sum{operation="/grpc.health.v1.Health/Check",status_code="2xx"} 1.1996655310000006
loki_ingester_client_request_duration_seconds_count{operation="/grpc.health.v1.Health/Check",status_code="2xx"} 51
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetChunkIDs",status_code="2xx",le="0.001"} 1
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetChunkIDs",status_code="2xx",le="0.004"} 7
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetChunkIDs",status_code="2xx",le="0.016"} 7
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetChunkIDs",status_code="2xx",le="0.064"} 10
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetChunkIDs",status_code="2xx",le="0.256"} 10
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetChunkIDs",status_code="2xx",le="1.024"} 10
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetChunkIDs",status_code="2xx",le="+Inf"} 10
loki_ingester_client_request_duration_seconds_sum{operation="/logproto.Querier/GetChunkIDs",status_code="2xx"} 0.08536322599999999
loki_ingester_client_request_duration_seconds_count{operation="/logproto.Querier/GetChunkIDs",status_code="2xx"} 10
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetChunkIDs",status_code="cancel",le="0.001"} 0
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetChunkIDs",status_code="cancel",le="0.004"} 0
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetChunkIDs",status_code="cancel",le="0.016"} 0
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetChunkIDs",status_code="cancel",le="0.064"} 2
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetChunkIDs",status_code="cancel",le="0.256"} 2
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetChunkIDs",status_code="cancel",le="1.024"} 2
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetChunkIDs",status_code="cancel",le="+Inf"} 2
loki_ingester_client_request_duration_seconds_sum{operation="/logproto.Querier/GetChunkIDs",status_code="cancel"} 0.051071367
loki_ingester_client_request_duration_seconds_count{operation="/logproto.Querier/GetChunkIDs",status_code="cancel"} 2
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetStats",status_code="2xx",le="0.001"} 5
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetStats",status_code="2xx",le="0.004"} 8
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetStats",status_code="2xx",le="0.016"} 8
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetStats",status_code="2xx",le="0.064"} 8
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetStats",status_code="2xx",le="0.256"} 8
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetStats",status_code="2xx",le="1.024"} 8
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetStats",status_code="2xx",le="+Inf"} 8
loki_ingester_client_request_duration_seconds_sum{operation="/logproto.Querier/GetStats",status_code="2xx"} 0.009153116
loki_ingester_client_request_duration_seconds_count{operation="/logproto.Querier/GetStats",status_code="2xx"} 8
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetStats",status_code="cancel",le="0.001"} 1
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetStats",status_code="cancel",le="0.004"} 4
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetStats",status_code="cancel",le="0.016"} 4
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetStats",status_code="cancel",le="0.064"} 4
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetStats",status_code="cancel",le="0.256"} 4
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetStats",status_code="cancel",le="1.024"} 4
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/GetStats",status_code="cancel",le="+Inf"} 4
loki_ingester_client_request_duration_seconds_sum{operation="/logproto.Querier/GetStats",status_code="cancel"} 0.004874993000000001
loki_ingester_client_request_duration_seconds_count{operation="/logproto.Querier/GetStats",status_code="cancel"} 4
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/QuerySample",status_code="2xx",le="0.001"} 0
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/QuerySample",status_code="2xx",le="0.004"} 4
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/QuerySample",status_code="2xx",le="0.016"} 4
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/QuerySample",status_code="2xx",le="0.064"} 6
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/QuerySample",status_code="2xx",le="0.256"} 8
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/QuerySample",status_code="2xx",le="1.024"} 8
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/QuerySample",status_code="2xx",le="+Inf"} 8
loki_ingester_client_request_duration_seconds_sum{operation="/logproto.Querier/QuerySample",status_code="2xx"} 0.500681234
loki_ingester_client_request_duration_seconds_count{operation="/logproto.Querier/QuerySample",status_code="2xx"} 8
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/Series",status_code="2xx",le="0.001"} 6
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/Series",status_code="2xx",le="0.004"} 20
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/Series",status_code="2xx",le="0.016"} 23
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/Series",status_code="2xx",le="0.064"} 23
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/Series",status_code="2xx",le="0.256"} 23
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/Series",status_code="2xx",le="1.024"} 24
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/Series",status_code="2xx",le="+Inf"} 34
loki_ingester_client_request_duration_seconds_sum{operation="/logproto.Querier/Series",status_code="2xx"} 15.243089697
loki_ingester_client_request_duration_seconds_count{operation="/logproto.Querier/Series",status_code="2xx"} 34
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/Series",status_code="cancel",le="0.001"} 0
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/Series",status_code="cancel",le="0.004"} 4
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/Series",status_code="cancel",le="0.016"} 7
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/Series",status_code="cancel",le="0.064"} 7
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/Series",status_code="cancel",le="0.256"} 8
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/Series",status_code="cancel",le="1.024"} 9
loki_ingester_client_request_duration_seconds_bucket{operation="/logproto.Querier/Series",status_code="cancel",le="+Inf"} 11
loki_ingester_client_request_duration_seconds_sum{operation="/logproto.Querier/Series",status_code="cancel"} 3.7878207570000004
loki_ingester_client_request_duration_seconds_count{operation="/logproto.Querier/Series",status_code="cancel"} 11
# HELP loki_ingester_memory_streams_labels_bytes Total bytes of labels of the streams in memory.
# TYPE loki_ingester_memory_streams_labels_bytes gauge
loki_ingester_memory_streams_labels_bytes 0
# HELP loki_ingester_received_chunks The total number of chunks received by this ingester whilst joining.
# TYPE loki_ingester_received_chunks counter
loki_ingester_received_chunks 0
# HELP loki_ingester_sent_chunks The total number of chunks sent by this ingester whilst leaving.
# TYPE loki_ingester_sent_chunks counter
loki_ingester_sent_chunks 0
# HELP loki_internal_log_messages_total Total number of log messages created by Loki itself.
# TYPE loki_internal_log_messages_total counter
loki_internal_log_messages_total{level="debug"} 26570
loki_internal_log_messages_total{level="error"} 65
loki_internal_log_messages_total{level="info"} 35051
loki_internal_log_messages_total{level="unknown"} 4
loki_internal_log_messages_total{level="warn"} 31
# HELP loki_kv_request_duration_seconds Time spent on kv store requests.
# TYPE loki_kv_request_duration_seconds histogram
loki_kv_request_duration_seconds_bucket{kv_name="scheduler",operation="GET",role="primary",status_code="200",type="memberlist",le="0.005"} 1
loki_kv_request_duration_seconds_bucket{kv_name="scheduler",operation="GET",role="primary",status_code="200",type="memberlist",le="0.01"} 1
loki_kv_request_duration_seconds_bucket{kv_name="scheduler",operation="GET",role="primary",status_code="200",type="memberlist",le="0.025"} 1
loki_kv_request_duration_seconds_bucket{kv_name="scheduler",operation="GET",role="primary",status_code="200",type="memberlist",le="0.05"} 1
loki_kv_request_duration_seconds_bucket{kv_name="scheduler",operation="GET",role="primary",status_code="200",type="memberlist",le="0.1"} 1
loki_kv_request_duration_seconds_bucket{kv_name="scheduler",operation="GET",role="primary",status_code="200",type="memberlist",le="0.25"} 1
loki_kv_request_duration_seconds_bucket{kv_name="scheduler",operation="GET",role="primary",status_code="200",type="memberlist",le="0.5"} 1
loki_kv_request_duration_seconds_bucket{kv_name="scheduler",operation="GET",role="primary",status_code="200",type="memberlist",le="1"} 1
loki_kv_request_duration_seconds_bucket{kv_name="scheduler",operation="GET",role="primary",status_code="200",type="memberlist",le="2.5"} 1
loki_kv_request_duration_seconds_bucket{kv_name="scheduler",operation="GET",role="primary",status_code="200",type="memberlist",le="5"} 1
loki_kv_request_duration_seconds_bucket{kv_name="scheduler",operation="GET",role="primary",status_code="200",type="memberlist",le="10"} 1
loki_kv_request_duration_seconds_bucket{kv_name="scheduler",operation="GET",role="primary",status_code="200",type="memberlist",le="+Inf"} 1
loki_kv_request_duration_seconds_sum{kv_name="scheduler",operation="GET",role="primary",status_code="200",type="memberlist"} 1.1174e-05
loki_kv_request_duration_seconds_count{kv_name="scheduler",operation="GET",role="primary",status_code="200",type="memberlist"} 1
# HELP loki_log_flushes Histogram of log flushes using the line-buffered logger.
# TYPE loki_log_flushes histogram
loki_log_flushes_bucket{le="1"} 30
loki_log_flushes_bucket{le="2"} 16923
loki_log_flushes_bucket{le="4"} 17195
loki_log_flushes_bucket{le="8"} 17220
loki_log_flushes_bucket{le="16"} 17224
loki_log_flushes_bucket{le="32"} 17226
loki_log_flushes_bucket{le="64"} 17226
loki_log_flushes_bucket{le="128"} 17226
loki_log_flushes_bucket{le="256"} 17226
loki_log_flushes_bucket{le="+Inf"} 17226
loki_log_flushes_sum 35151
loki_log_flushes_count 17226
# HELP loki_log_messages_total DEPRECATED. Use internal_log_messages_total for the same functionality. Total number of log messages created by Loki itself.
# TYPE loki_log_messages_total counter
loki_log_messages_total{level="debug"} 26570
loki_log_messages_total{level="error"} 65
loki_log_messages_total{level="info"} 35051
loki_log_messages_total{level="unknown"} 4
loki_log_messages_total{level="warn"} 31
# HELP loki_logql_querystats_bytes_processed_per_seconds Distribution of bytes processed per second for LogQL queries.
# TYPE loki_logql_querystats_bytes_processed_per_seconds histogram
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="5e+07"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="1e+08"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="4e+08"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="6e+08"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="8e+08"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="1e+09"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="2e+09"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="3e+09"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="4e+09"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="5e+09"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="6e+09"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="7e+09"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="8e+09"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="9e+09"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="1e+10"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="1.5e+10"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="2e+10"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="3e+10"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="4e+10"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="5e+10"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="6e+10"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="",status_code="200",type="series",le="+Inf"} 16
loki_logql_querystats_bytes_processed_per_seconds_sum{latency_type="fast",range="",status_code="200",type="series"} 0
loki_logql_querystats_bytes_processed_per_seconds_count{latency_type="fast",range="",status_code="200",type="series"} 16
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="5e+07"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="1e+08"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="4e+08"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="6e+08"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="8e+08"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="1e+09"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="2e+09"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="3e+09"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="4e+09"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="5e+09"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="6e+09"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="7e+09"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="8e+09"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="9e+09"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="1e+10"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="1.5e+10"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="2e+10"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="3e+10"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="4e+10"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="5e+10"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="6e+10"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="filter",le="+Inf"} 1
loki_logql_querystats_bytes_processed_per_seconds_sum{latency_type="fast",range="range",status_code="200",type="filter"} 0
loki_logql_querystats_bytes_processed_per_seconds_count{latency_type="fast",range="range",status_code="200",type="filter"} 1
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="5e+07"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="1e+08"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="4e+08"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="6e+08"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="8e+08"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="1e+09"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="2e+09"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="3e+09"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="4e+09"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="5e+09"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="6e+09"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="7e+09"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="8e+09"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="9e+09"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="1e+10"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="1.5e+10"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="2e+10"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="3e+10"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="4e+10"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="5e+10"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="6e+10"} 6
loki_logql_querystats_bytes_processed_per_seconds_bucket{latency_type="fast",range="range",status_code="200",type="metric",le="+Inf"} 6
loki_logql_querystats_bytes_processed_per_seconds_sum{latency_type="fast",range="range",status_code="200",type="metric"} 2.620244e+06
loki_logql_querystats_bytes_processed_per_seconds_count{latency_type="fast",range="range",status_code="200",type="metric"} 6
# HELP loki_logql_querystats_chunk_download_latency_seconds Distribution of chunk downloads latency for LogQL queries.
# TYPE loki_logql_querystats_chunk_download_latency_seconds histogram
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="",status_code="200",type="series",le="0.25"} 16
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="",status_code="200",type="series",le="0.5"} 16
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="",status_code="200",type="series",le="1"} 16
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="",status_code="200",type="series",le="2"} 16
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="",status_code="200",type="series",le="4"} 16
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="",status_code="200",type="series",le="8"} 16
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="",status_code="200",type="series",le="16"} 16
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="",status_code="200",type="series",le="32"} 16
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="",status_code="200",type="series",le="64"} 16
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="",status_code="200",type="series",le="128"} 16
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="",status_code="200",type="series",le="+Inf"} 16
loki_logql_querystats_chunk_download_latency_seconds_sum{range="",status_code="200",type="series"} 0
loki_logql_querystats_chunk_download_latency_seconds_count{range="",status_code="200",type="series"} 16
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="filter",le="0.25"} 1
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="filter",le="0.5"} 1
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="filter",le="1"} 1
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="filter",le="2"} 1
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="filter",le="4"} 1
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="filter",le="8"} 1
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="filter",le="16"} 1
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="filter",le="32"} 1
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="filter",le="64"} 1
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="filter",le="128"} 1
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="filter",le="+Inf"} 1
loki_logql_querystats_chunk_download_latency_seconds_sum{range="range",status_code="200",type="filter"} 0
loki_logql_querystats_chunk_download_latency_seconds_count{range="range",status_code="200",type="filter"} 1
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="metric",le="0.25"} 6
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="metric",le="0.5"} 6
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="metric",le="1"} 6
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="metric",le="2"} 6
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="metric",le="4"} 6
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="metric",le="8"} 6
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="metric",le="16"} 6
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="metric",le="32"} 6
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="metric",le="64"} 6
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="metric",le="128"} 6
loki_logql_querystats_chunk_download_latency_seconds_bucket{range="range",status_code="200",type="metric",le="+Inf"} 6
loki_logql_querystats_chunk_download_latency_seconds_sum{range="range",status_code="200",type="metric"} 0
loki_logql_querystats_chunk_download_latency_seconds_count{range="range",status_code="200",type="metric"} 6
# HELP loki_logql_querystats_downloaded_chunk_total Total count of chunks downloaded found while executing LogQL queries.
# TYPE loki_logql_querystats_downloaded_chunk_total counter
loki_logql_querystats_downloaded_chunk_total{range="",status_code="200",type="series"} 0
loki_logql_querystats_downloaded_chunk_total{range="range",status_code="200",type="filter"} 0
loki_logql_querystats_downloaded_chunk_total{range="range",status_code="200",type="metric"} 0
# HELP loki_logql_querystats_duplicates_total Total count of duplicates found while executing LogQL queries.
# TYPE loki_logql_querystats_duplicates_total counter
loki_logql_querystats_duplicates_total 82
# HELP loki_logql_querystats_ingester_sent_lines_total Total count of lines sent from ingesters while executing LogQL queries.
# TYPE loki_logql_querystats_ingester_sent_lines_total counter
loki_logql_querystats_ingester_sent_lines_total 164
# HELP loki_logql_querystats_latency_seconds Distribution of latency for LogQL queries.
# TYPE loki_logql_querystats_latency_seconds histogram
loki_logql_querystats_latency_seconds_bucket{range="",status_code="200",type="series",le="0.25"} 10
loki_logql_querystats_latency_seconds_bucket{range="",status_code="200",type="series",le="0.5"} 11
loki_logql_querystats_latency_seconds_bucket{range="",status_code="200",type="series",le="1"} 11
loki_logql_querystats_latency_seconds_bucket{range="",status_code="200",type="series",le="2"} 11
loki_logql_querystats_latency_seconds_bucket{range="",status_code="200",type="series",le="4"} 15
loki_logql_querystats_latency_seconds_bucket{range="",status_code="200",type="series",le="8"} 16
loki_logql_querystats_latency_seconds_bucket{range="",status_code="200",type="series",le="16"} 16
loki_logql_querystats_latency_seconds_bucket{range="",status_code="200",type="series",le="32"} 16
loki_logql_querystats_latency_seconds_bucket{range="",status_code="200",type="series",le="64"} 16
loki_logql_querystats_latency_seconds_bucket{range="",status_code="200",type="series",le="128"} 16
loki_logql_querystats_latency_seconds_bucket{range="",status_code="200",type="series",le="+Inf"} 16
loki_logql_querystats_latency_seconds_sum{range="",status_code="200",type="series"} 13.260625003000003
loki_logql_querystats_latency_seconds_count{range="",status_code="200",type="series"} 16
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="filter",le="0.25"} 0
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="filter",le="0.5"} 0
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="filter",le="1"} 1
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="filter",le="2"} 1
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="filter",le="4"} 1
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="filter",le="8"} 1
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="filter",le="16"} 1
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="filter",le="32"} 1
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="filter",le="64"} 1
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="filter",le="128"} 1
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="filter",le="+Inf"} 1
loki_logql_querystats_latency_seconds_sum{range="range",status_code="200",type="filter"} 0.863490782
loki_logql_querystats_latency_seconds_count{range="range",status_code="200",type="filter"} 1
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="metric",le="0.25"} 5
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="metric",le="0.5"} 5
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="metric",le="1"} 6
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="metric",le="2"} 6
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="metric",le="4"} 6
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="metric",le="8"} 6
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="metric",le="16"} 6
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="metric",le="32"} 6
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="metric",le="64"} 6
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="metric",le="128"} 6
loki_logql_querystats_latency_seconds_bucket{range="range",status_code="200",type="metric",le="+Inf"} 6
loki_logql_querystats_latency_seconds_sum{range="range",status_code="200",type="metric"} 1.177286639
loki_logql_querystats_latency_seconds_count{range="range",status_code="200",type="metric"} 6
# HELP loki_memberlist_client_cas_attempt_total Attempted CAS operations
# TYPE loki_memberlist_client_cas_attempt_total counter
loki_memberlist_client_cas_attempt_total 0
# HELP loki_memberlist_client_cas_failure_total Failed CAS operations
# TYPE loki_memberlist_client_cas_failure_total counter
loki_memberlist_client_cas_failure_total 0
# HELP loki_memberlist_client_cas_success_total Successful CAS operations
# TYPE loki_memberlist_client_cas_success_total counter
loki_memberlist_client_cas_success_total 0
# HELP loki_memberlist_client_cluster_members_count Number of members in memberlist cluster
# TYPE loki_memberlist_client_cluster_members_count gauge
loki_memberlist_client_cluster_members_count 9
# HELP loki_memberlist_client_cluster_node_health_score Health score of this cluster. Lower value is better. 0 = healthy
# TYPE loki_memberlist_client_cluster_node_health_score gauge
loki_memberlist_client_cluster_node_health_score 0
# HELP loki_memberlist_client_kv_store_value_tombstones Number of tombstones currently present in KV store values
# TYPE loki_memberlist_client_kv_store_value_tombstones gauge
loki_memberlist_client_kv_store_value_tombstones{key="collectors/compactor"} 0
loki_memberlist_client_kv_store_value_tombstones{key="collectors/distributor"} 0
loki_memberlist_client_kv_store_value_tombstones{key="collectors/index-gateway"} 0
loki_memberlist_client_kv_store_value_tombstones{key="collectors/ring"} 0
loki_memberlist_client_kv_store_value_tombstones{key="collectors/scheduler"} 0
loki_memberlist_client_kv_store_value_tombstones{key="collectors/usagestats_token"} 0
loki_memberlist_client_kv_store_value_tombstones{key="rulers/rulers"} 0
# HELP loki_memberlist_client_kv_store_value_tombstones_removed_total Total number of tombstones which have been removed from KV store values
# TYPE loki_memberlist_client_kv_store_value_tombstones_removed_total counter
loki_memberlist_client_kv_store_value_tombstones_removed_total{key="collectors/compactor"} 0
loki_memberlist_client_kv_store_value_tombstones_removed_total{key="collectors/distributor"} 0
loki_memberlist_client_kv_store_value_tombstones_removed_total{key="collectors/index-gateway"} 0
loki_memberlist_client_kv_store_value_tombstones_removed_total{key="collectors/ring"} 0
loki_memberlist_client_kv_store_value_tombstones_removed_total{key="collectors/scheduler"} 0
loki_memberlist_client_kv_store_value_tombstones_removed_total{key="collectors/usagestats_token"} 0
loki_memberlist_client_kv_store_value_tombstones_removed_total{key="rulers/rulers"} 0
# HELP loki_memberlist_client_messages_in_broadcast_queue Number of user messages in the broadcast queue
# TYPE loki_memberlist_client_messages_in_broadcast_queue gauge
loki_memberlist_client_messages_in_broadcast_queue 0
# HELP loki_memberlist_client_messages_in_broadcast_queue_bytes Total size of messages waiting in the broadcast queue
# TYPE loki_memberlist_client_messages_in_broadcast_queue_bytes gauge
loki_memberlist_client_messages_in_broadcast_queue_bytes 0
# HELP loki_memberlist_client_messages_to_broadcast_dropped_total Number of broadcast messages intended to be sent but were dropped due to encoding errors or for being too big
# TYPE loki_memberlist_client_messages_to_broadcast_dropped_total counter
loki_memberlist_client_messages_to_broadcast_dropped_total 0
# HELP loki_memberlist_client_received_broadcasts_bytes_total Total size of received broadcast user messages
# TYPE loki_memberlist_client_received_broadcasts_bytes_total counter
loki_memberlist_client_received_broadcasts_bytes_total 3.84729632e+08
# HELP loki_memberlist_client_received_broadcasts_dropped_total Number of received broadcast user messages that were dropped. Hopefully 0.
# TYPE loki_memberlist_client_received_broadcasts_dropped_total counter
loki_memberlist_client_received_broadcasts_dropped_total 0
# HELP loki_memberlist_client_received_broadcasts_invalid_total Number of received broadcast user messages that were invalid. Hopefully 0.
# TYPE loki_memberlist_client_received_broadcasts_invalid_total counter
loki_memberlist_client_received_broadcasts_invalid_total 0
# HELP loki_memberlist_client_received_broadcasts_total Number of received broadcast user messages
# TYPE loki_memberlist_client_received_broadcasts_total counter
loki_memberlist_client_received_broadcasts_total 841037
# HELP loki_memberlist_client_state_pulls_bytes_total Total size of pulled state
# TYPE loki_memberlist_client_state_pulls_bytes_total counter
loki_memberlist_client_state_pulls_bytes_total 3.9259463e+07
# HELP loki_memberlist_client_state_pulls_total How many times did this node pull full state from another node
# TYPE loki_memberlist_client_state_pulls_total counter
loki_memberlist_client_state_pulls_total 5578
# HELP loki_memberlist_client_state_pushes_bytes_total Total size of pushed state
# TYPE loki_memberlist_client_state_pushes_bytes_total counter
loki_memberlist_client_state_pushes_bytes_total 3.9217006e+07
# HELP loki_memberlist_client_state_pushes_total How many times did this node push its full state to another node
# TYPE loki_memberlist_client_state_pushes_total counter
loki_memberlist_client_state_pushes_total 5575
# HELP loki_memberlist_tcp_transport_incoming_streams_total Number of incoming memberlist streams
# TYPE loki_memberlist_tcp_transport_incoming_streams_total counter
loki_memberlist_tcp_transport_incoming_streams_total 2708
# HELP loki_memberlist_tcp_transport_outgoing_stream_errors_total Number of errors when opening memberlist stream to another node
# TYPE loki_memberlist_tcp_transport_outgoing_stream_errors_total counter
loki_memberlist_tcp_transport_outgoing_stream_errors_total 0
# HELP loki_memberlist_tcp_transport_outgoing_streams_total Number of outgoing streams
# TYPE loki_memberlist_tcp_transport_outgoing_streams_total counter
loki_memberlist_tcp_transport_outgoing_streams_total 2870
# HELP loki_memberlist_tcp_transport_packets_received_bytes_total Total bytes received as packets
# TYPE loki_memberlist_tcp_transport_packets_received_bytes_total counter
loki_memberlist_tcp_transport_packets_received_bytes_total 3.90439888e+08
# HELP loki_memberlist_tcp_transport_packets_received_errors_total Number of errors when receiving memberlist packets
# TYPE loki_memberlist_tcp_transport_packets_received_errors_total counter
loki_memberlist_tcp_transport_packets_received_errors_total 0
# HELP loki_memberlist_tcp_transport_packets_received_total Number of received memberlist packets
# TYPE loki_memberlist_tcp_transport_packets_received_total counter
loki_memberlist_tcp_transport_packets_received_total 153438
# HELP loki_memberlist_tcp_transport_packets_sent_bytes_total Total bytes sent as packets
# TYPE loki_memberlist_tcp_transport_packets_sent_bytes_total counter
loki_memberlist_tcp_transport_packets_sent_bytes_total 3.78738483e+08
# HELP loki_memberlist_tcp_transport_packets_sent_errors_total Number of errors when sending memberlist packets
# TYPE loki_memberlist_tcp_transport_packets_sent_errors_total counter
loki_memberlist_tcp_transport_packets_sent_errors_total 0
# HELP loki_memberlist_tcp_transport_packets_sent_total Number of memberlist packets sent
# TYPE loki_memberlist_tcp_transport_packets_sent_total counter
loki_memberlist_tcp_transport_packets_sent_total 147052
# HELP loki_memberlist_tcp_transport_unknown_connections_total Number of unknown TCP connections (not a packet or stream)
# TYPE loki_memberlist_tcp_transport_unknown_connections_total counter
loki_memberlist_tcp_transport_unknown_connections_total 0
# HELP loki_panic_total The total number of panic triggered
# TYPE loki_panic_total counter
loki_panic_total 0
# HELP loki_querier_index_cache_corruptions_total The number of cache corruptions for the index cache.
# TYPE loki_querier_index_cache_corruptions_total counter
loki_querier_index_cache_corruptions_total 0
# HELP loki_querier_index_cache_encode_errors_total The number of errors for the index cache while encoding the body.
# TYPE loki_querier_index_cache_encode_errors_total counter
loki_querier_index_cache_encode_errors_total 0
# HELP loki_querier_index_cache_gets_total The number of gets for the index cache.
# TYPE loki_querier_index_cache_gets_total counter
loki_querier_index_cache_gets_total 0
# HELP loki_querier_index_cache_hits_total The number of cache hits for the index cache.
# TYPE loki_querier_index_cache_hits_total counter
loki_querier_index_cache_hits_total 0
# HELP loki_querier_index_cache_puts_total The number of puts for the index cache.
# TYPE loki_querier_index_cache_puts_total counter
loki_querier_index_cache_puts_total 0
# HELP loki_querier_query_frontend_clients The current number of clients connected to query-frontend.
# TYPE loki_querier_query_frontend_clients gauge
loki_querier_query_frontend_clients 3
# HELP loki_querier_query_frontend_request_duration_seconds Time spend doing requests to frontend.
# TYPE loki_querier_query_frontend_request_duration_seconds histogram
loki_querier_query_frontend_request_duration_seconds_bucket{operation="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="2xx",le="0.001"} 8
loki_querier_query_frontend_request_duration_seconds_bucket{operation="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="2xx",le="0.004"} 12
loki_querier_query_frontend_request_duration_seconds_bucket{operation="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="2xx",le="0.016"} 14
loki_querier_query_frontend_request_duration_seconds_bucket{operation="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="2xx",le="0.064"} 14
loki_querier_query_frontend_request_duration_seconds_bucket{operation="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="2xx",le="0.256"} 15
loki_querier_query_frontend_request_duration_seconds_bucket{operation="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="2xx",le="1.024"} 23
loki_querier_query_frontend_request_duration_seconds_bucket{operation="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="2xx",le="+Inf"} 23
loki_querier_query_frontend_request_duration_seconds_sum{operation="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="2xx"} 3.9015533789999997
loki_querier_query_frontend_request_duration_seconds_count{operation="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="2xx"} 23
loki_querier_query_frontend_request_duration_seconds_bucket{operation="/grpc.health.v1.Health/Check",status_code="2xx",le="0.001"} 118
loki_querier_query_frontend_request_duration_seconds_bucket{operation="/grpc.health.v1.Health/Check",status_code="2xx",le="0.004"} 144
loki_querier_query_frontend_request_duration_seconds_bucket{operation="/grpc.health.v1.Health/Check",status_code="2xx",le="0.016"} 144
loki_querier_query_frontend_request_duration_seconds_bucket{operation="/grpc.health.v1.Health/Check",status_code="2xx",le="0.064"} 147
loki_querier_query_frontend_request_duration_seconds_bucket{operation="/grpc.health.v1.Health/Check",status_code="2xx",le="0.256"} 147
loki_querier_query_frontend_request_duration_seconds_bucket{operation="/grpc.health.v1.Health/Check",status_code="2xx",le="1.024"} 147
loki_querier_query_frontend_request_duration_seconds_bucket{operation="/grpc.health.v1.Health/Check",status_code="2xx",le="+Inf"} 147
loki_querier_query_frontend_request_duration_seconds_sum{operation="/grpc.health.v1.Health/Check",status_code="2xx"} 0.2170959360000001
loki_querier_query_frontend_request_duration_seconds_count{operation="/grpc.health.v1.Health/Check",status_code="2xx"} 147
# HELP loki_querier_tail_active Number of active tailers
# TYPE loki_querier_tail_active gauge
loki_querier_tail_active 0
# HELP loki_querier_tail_active_streams Number of active streams being tailed
# TYPE loki_querier_tail_active_streams gauge
loki_querier_tail_active_streams 0
# HELP loki_querier_tail_bytes_total total bytes tailed
# TYPE loki_querier_tail_bytes_total counter
loki_querier_tail_bytes_total 0
# HELP loki_querier_worker_concurrency Number of concurrent querier workers
# TYPE loki_querier_worker_concurrency gauge
loki_querier_worker_concurrency 25
# HELP loki_querier_worker_inflight_queries Number of queries being processed by the querier workers
# TYPE loki_querier_worker_inflight_queries gauge
loki_querier_worker_inflight_queries 0
# HELP loki_query_frontend_log_result_cache_hit_total
# TYPE loki_query_frontend_log_result_cache_hit_total counter
loki_query_frontend_log_result_cache_hit_total 0
# HELP loki_query_frontend_log_result_cache_miss_total
# TYPE loki_query_frontend_log_result_cache_miss_total counter
loki_query_frontend_log_result_cache_miss_total 0
# HELP loki_query_frontend_partitions Number of time-based partitions (sub-requests) per request
# TYPE loki_query_frontend_partitions histogram
loki_query_frontend_partitions_bucket{le="1"} 4
loki_query_frontend_partitions_bucket{le="4"} 4
loki_query_frontend_partitions_bucket{le="16"} 4
loki_query_frontend_partitions_bucket{le="64"} 4
loki_query_frontend_partitions_bucket{le="256"} 4
loki_query_frontend_partitions_bucket{le="+Inf"} 4
loki_query_frontend_partitions_sum 4
loki_query_frontend_partitions_count 4
# HELP loki_query_frontend_shard_factor Number of downstream queries per request
# TYPE loki_query_frontend_shard_factor histogram
loki_query_frontend_shard_factor_bucket{mapper="range",le="1"} 0
loki_query_frontend_shard_factor_bucket{mapper="range",le="4"} 0
loki_query_frontend_shard_factor_bucket{mapper="range",le="16"} 0
loki_query_frontend_shard_factor_bucket{mapper="range",le="64"} 0
loki_query_frontend_shard_factor_bucket{mapper="range",le="256"} 0
loki_query_frontend_shard_factor_bucket{mapper="range",le="1024"} 0
loki_query_frontend_shard_factor_bucket{mapper="range",le="4096"} 0
loki_query_frontend_shard_factor_bucket{mapper="range",le="16384"} 0
loki_query_frontend_shard_factor_bucket{mapper="range",le="+Inf"} 0
loki_query_frontend_shard_factor_sum{mapper="range"} 0
loki_query_frontend_shard_factor_count{mapper="range"} 0
loki_query_frontend_shard_factor_bucket{mapper="shard",le="1"} 3
loki_query_frontend_shard_factor_bucket{mapper="shard",le="4"} 3
loki_query_frontend_shard_factor_bucket{mapper="shard",le="16"} 4
loki_query_frontend_shard_factor_bucket{mapper="shard",le="64"} 4
loki_query_frontend_shard_factor_bucket{mapper="shard",le="256"} 4
loki_query_frontend_shard_factor_bucket{mapper="shard",le="1024"} 4
loki_query_frontend_shard_factor_bucket{mapper="shard",le="4096"} 4
loki_query_frontend_shard_factor_bucket{mapper="shard",le="16384"} 4
loki_query_frontend_shard_factor_bucket{mapper="shard",le="+Inf"} 4
loki_query_frontend_shard_factor_sum{mapper="shard"} 16
loki_query_frontend_shard_factor_count{mapper="shard"} 4
# HELP loki_query_frontend_sharding_parsed_queries_total Number of parsed queries by evaluation type
# TYPE loki_query_frontend_sharding_parsed_queries_total counter
loki_query_frontend_sharding_parsed_queries_total{mapper="shard",type="success"} 3
# HELP loki_query_frontend_shards_total Number of downstream queries by expression type
# TYPE loki_query_frontend_shards_total counter
loki_query_frontend_shards_total{mapper="shard",type="series"} 1
# HELP loki_request_duration_seconds Time (in seconds) spent serving HTTP requests.
# TYPE loki_request_duration_seconds histogram
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false",le="0.005"} 0
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false",le="0.01"} 0
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false",le="0.025"} 0
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false",le="0.05"} 0
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false",le="0.1"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false",le="0.25"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false",le="0.5"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false",le="1"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false",le="2.5"} 3
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false",le="5"} 3
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false",le="10"} 3
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false",le="25"} 3
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false",le="50"} 3
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false",le="100"} 3
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false",le="+Inf"} 3
loki_request_duration_seconds_sum{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false"} 2.684521079
loki_request_duration_seconds_count{method="GET",route="loki_api_v1_query_range",status_code="200",ws="false"} 3
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false",le="0.005"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false",le="0.01"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false",le="0.025"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false",le="0.05"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false",le="0.1"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false",le="0.25"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false",le="0.5"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false",le="1"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false",le="2.5"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false",le="5"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false",le="10"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false",le="25"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false",le="50"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false",le="100"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false",le="+Inf"} 1
loki_request_duration_seconds_sum{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false"} 0.000207163
loki_request_duration_seconds_count{method="GET",route="loki_api_v1_query_range",status_code="400",ws="false"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_series",status_code="200",ws="false",le="0.005"} 0
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_series",status_code="200",ws="false",le="0.01"} 0
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_series",status_code="200",ws="false",le="0.025"} 0
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_series",status_code="200",ws="false",le="0.05"} 0
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_series",status_code="200",ws="false",le="0.1"} 0
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_series",status_code="200",ws="false",le="0.25"} 0
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_series",status_code="200",ws="false",le="0.5"} 0
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_series",status_code="200",ws="false",le="1"} 0
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_series",status_code="200",ws="false",le="2.5"} 0
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_series",status_code="200",ws="false",le="5"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_series",status_code="200",ws="false",le="10"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_series",status_code="200",ws="false",le="25"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_series",status_code="200",ws="false",le="50"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_series",status_code="200",ws="false",le="100"} 1
loki_request_duration_seconds_bucket{method="GET",route="loki_api_v1_series",status_code="200",ws="false",le="+Inf"} 1
loki_request_duration_seconds_sum{method="GET",route="loki_api_v1_series",status_code="200",ws="false"} 4.85970123
loki_request_duration_seconds_count{method="GET",route="loki_api_v1_series",status_code="200",ws="false"} 1
loki_request_duration_seconds_bucket{method="GET",route="metrics",status_code="200",ws="false",le="0.005"} 11309
loki_request_duration_seconds_bucket{method="GET",route="metrics",status_code="200",ws="false",le="0.01"} 13574
loki_request_duration_seconds_bucket{method="GET",route="metrics",status_code="200",ws="false",le="0.025"} 17113
loki_request_duration_seconds_bucket{method="GET",route="metrics",status_code="200",ws="false",le="0.05"} 17160
loki_request_duration_seconds_bucket{method="GET",route="metrics",status_code="200",ws="false",le="0.1"} 17164
loki_request_duration_seconds_bucket{method="GET",route="metrics",status_code="200",ws="false",le="0.25"} 17174
loki_request_duration_seconds_bucket{method="GET",route="metrics",status_code="200",ws="false",le="0.5"} 17179
loki_request_duration_seconds_bucket{method="GET",route="metrics",status_code="200",ws="false",le="1"} 17179
loki_request_duration_seconds_bucket{method="GET",route="metrics",status_code="200",ws="false",le="2.5"} 17179
loki_request_duration_seconds_bucket{method="GET",route="metrics",status_code="200",ws="false",le="5"} 17179
loki_request_duration_seconds_bucket{method="GET",route="metrics",status_code="200",ws="false",le="10"} 17179
loki_request_duration_seconds_bucket{method="GET",route="metrics",status_code="200",ws="false",le="25"} 17179
loki_request_duration_seconds_bucket{method="GET",route="metrics",status_code="200",ws="false",le="50"} 17179
loki_request_duration_seconds_bucket{method="GET",route="metrics",status_code="200",ws="false",le="100"} 17179
loki_request_duration_seconds_bucket{method="GET",route="metrics",status_code="200",ws="false",le="+Inf"} 17179
loki_request_duration_seconds_sum{method="GET",route="metrics",status_code="200",ws="false"} 117.53874031600013
loki_request_duration_seconds_count{method="GET",route="metrics",status_code="200",ws="false"} 17179
loki_request_duration_seconds_bucket{method="GET",route="ready",status_code="200",ws="false",le="0.005"} 6
loki_request_duration_seconds_bucket{method="GET",route="ready",status_code="200",ws="false",le="0.01"} 6
loki_request_duration_seconds_bucket{method="GET",route="ready",status_code="200",ws="false",le="0.025"} 6
loki_request_duration_seconds_bucket{method="GET",route="ready",status_code="200",ws="false",le="0.05"} 6
loki_request_duration_seconds_bucket{method="GET",route="ready",status_code="200",ws="false",le="0.1"} 6
loki_request_duration_seconds_bucket{method="GET",route="ready",status_code="200",ws="false",le="0.25"} 6
loki_request_duration_seconds_bucket{method="GET",route="ready",status_code="200",ws="false",le="0.5"} 6
loki_request_duration_seconds_bucket{method="GET",route="ready",status_code="200",ws="false",le="1"} 6
loki_request_duration_seconds_bucket{method="GET",route="ready",status_code="200",ws="false",le="2.5"} 6
loki_request_duration_seconds_bucket{method="GET",route="ready",status_code="200",ws="false",le="5"} 6
loki_request_duration_seconds_bucket{method="GET",route="ready",status_code="200",ws="false",le="10"} 6
loki_request_duration_seconds_bucket{method="GET",route="ready",status_code="200",ws="false",le="25"} 6
loki_request_duration_seconds_bucket{method="GET",route="ready",status_code="200",ws="false",le="50"} 6
loki_request_duration_seconds_bucket{method="GET",route="ready",status_code="200",ws="false",le="100"} 6
loki_request_duration_seconds_bucket{method="GET",route="ready",status_code="200",ws="false",le="+Inf"} 6
loki_request_duration_seconds_sum{method="GET",route="ready",status_code="200",ws="false"} 0.000101184
loki_request_duration_seconds_count{method="GET",route="ready",status_code="200",ws="false"} 6
loki_request_duration_seconds_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false",le="0.005"} 22
loki_request_duration_seconds_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false",le="0.01"} 22
loki_request_duration_seconds_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false",le="0.025"} 22
loki_request_duration_seconds_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false",le="0.05"} 22
loki_request_duration_seconds_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false",le="0.1"} 22
loki_request_duration_seconds_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false",le="0.25"} 22
loki_request_duration_seconds_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false",le="0.5"} 22
loki_request_duration_seconds_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false",le="1"} 22
loki_request_duration_seconds_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false",le="2.5"} 22
loki_request_duration_seconds_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false",le="5"} 22
loki_request_duration_seconds_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false",le="10"} 22
loki_request_duration_seconds_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false",le="25"} 22
loki_request_duration_seconds_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false",le="50"} 22
loki_request_duration_seconds_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false",le="100"} 22
loki_request_duration_seconds_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false",le="+Inf"} 22
loki_request_duration_seconds_sum{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false"} 9.0577e-05
loki_request_duration_seconds_count{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",status_code="success",ws="false"} 22
loki_request_duration_seconds_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false",le="0.005"} 147
loki_request_duration_seconds_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false",le="0.01"} 147
loki_request_duration_seconds_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false",le="0.025"} 147
loki_request_duration_seconds_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false",le="0.05"} 147
loki_request_duration_seconds_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false",le="0.1"} 147
loki_request_duration_seconds_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false",le="0.25"} 147
loki_request_duration_seconds_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false",le="0.5"} 147
loki_request_duration_seconds_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false",le="1"} 147
loki_request_duration_seconds_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false",le="2.5"} 147
loki_request_duration_seconds_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false",le="5"} 147
loki_request_duration_seconds_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false",le="10"} 147
loki_request_duration_seconds_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false",le="25"} 147
loki_request_duration_seconds_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false",le="50"} 147
loki_request_duration_seconds_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false",le="100"} 147
loki_request_duration_seconds_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false",le="+Inf"} 147
loki_request_duration_seconds_sum{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false"} 0.0011022500000000004
loki_request_duration_seconds_count{method="gRPC",route="/grpc.health.v1.Health/Check",status_code="success",ws="false"} 147
# HELP loki_request_message_bytes Size (in bytes) of messages received in the request.
# TYPE loki_request_message_bytes histogram
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="1.048576e+06"} 4
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="2.62144e+06"} 4
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="5.24288e+06"} 4
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="1.048576e+07"} 4
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="2.62144e+07"} 4
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="5.24288e+07"} 4
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="1.048576e+08"} 4
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="2.62144e+08"} 4
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="+Inf"} 4
loki_request_message_bytes_sum{method="GET",route="loki_api_v1_query_range"} 0
loki_request_message_bytes_count{method="GET",route="loki_api_v1_query_range"} 4
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="1.048576e+06"} 1
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="2.62144e+06"} 1
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="5.24288e+06"} 1
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="1.048576e+07"} 1
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="2.62144e+07"} 1
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="5.24288e+07"} 1
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="1.048576e+08"} 1
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="2.62144e+08"} 1
loki_request_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="+Inf"} 1
loki_request_message_bytes_sum{method="GET",route="loki_api_v1_series"} 0
loki_request_message_bytes_count{method="GET",route="loki_api_v1_series"} 1
loki_request_message_bytes_bucket{method="GET",route="metrics",le="1.048576e+06"} 17179
loki_request_message_bytes_bucket{method="GET",route="metrics",le="2.62144e+06"} 17179
loki_request_message_bytes_bucket{method="GET",route="metrics",le="5.24288e+06"} 17179
loki_request_message_bytes_bucket{method="GET",route="metrics",le="1.048576e+07"} 17179
loki_request_message_bytes_bucket{method="GET",route="metrics",le="2.62144e+07"} 17179
loki_request_message_bytes_bucket{method="GET",route="metrics",le="5.24288e+07"} 17179
loki_request_message_bytes_bucket{method="GET",route="metrics",le="1.048576e+08"} 17179
loki_request_message_bytes_bucket{method="GET",route="metrics",le="2.62144e+08"} 17179
loki_request_message_bytes_bucket{method="GET",route="metrics",le="+Inf"} 17179
loki_request_message_bytes_sum{method="GET",route="metrics"} 0
loki_request_message_bytes_count{method="GET",route="metrics"} 17179
loki_request_message_bytes_bucket{method="GET",route="ready",le="1.048576e+06"} 6
loki_request_message_bytes_bucket{method="GET",route="ready",le="2.62144e+06"} 6
loki_request_message_bytes_bucket{method="GET",route="ready",le="5.24288e+06"} 6
loki_request_message_bytes_bucket{method="GET",route="ready",le="1.048576e+07"} 6
loki_request_message_bytes_bucket{method="GET",route="ready",le="2.62144e+07"} 6
loki_request_message_bytes_bucket{method="GET",route="ready",le="5.24288e+07"} 6
loki_request_message_bytes_bucket{method="GET",route="ready",le="1.048576e+08"} 6
loki_request_message_bytes_bucket{method="GET",route="ready",le="2.62144e+08"} 6
loki_request_message_bytes_bucket{method="GET",route="ready",le="+Inf"} 6
loki_request_message_bytes_sum{method="GET",route="ready"} 0
loki_request_message_bytes_count{method="GET",route="ready"} 6
loki_request_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="1.048576e+06"} 22
loki_request_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="2.62144e+06"} 22
loki_request_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="5.24288e+06"} 22
loki_request_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="1.048576e+07"} 22
loki_request_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="2.62144e+07"} 22
loki_request_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="5.24288e+07"} 22
loki_request_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="1.048576e+08"} 22
loki_request_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="2.62144e+08"} 22
loki_request_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="+Inf"} 22
loki_request_message_bytes_sum{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult"} 6584
loki_request_message_bytes_count{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult"} 22
loki_request_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="1.048576e+06"} 147
loki_request_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="2.62144e+06"} 147
loki_request_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="5.24288e+06"} 147
loki_request_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="1.048576e+07"} 147
loki_request_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="2.62144e+07"} 147
loki_request_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="5.24288e+07"} 147
loki_request_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="1.048576e+08"} 147
loki_request_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="2.62144e+08"} 147
loki_request_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="+Inf"} 147
loki_request_message_bytes_sum{method="gRPC",route="/grpc.health.v1.Health/Check"} 735
loki_request_message_bytes_count{method="gRPC",route="/grpc.health.v1.Health/Check"} 147
# HELP loki_response_message_bytes Size (in bytes) of messages sent in response.
# TYPE loki_response_message_bytes histogram
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="1.048576e+06"} 4
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="2.62144e+06"} 4
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="5.24288e+06"} 4
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="1.048576e+07"} 4
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="2.62144e+07"} 4
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="5.24288e+07"} 4
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="1.048576e+08"} 4
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="2.62144e+08"} 4
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_query_range",le="+Inf"} 4
loki_response_message_bytes_sum{method="GET",route="loki_api_v1_query_range"} 3015
loki_response_message_bytes_count{method="GET",route="loki_api_v1_query_range"} 4
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="1.048576e+06"} 1
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="2.62144e+06"} 1
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="5.24288e+06"} 1
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="1.048576e+07"} 1
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="2.62144e+07"} 1
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="5.24288e+07"} 1
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="1.048576e+08"} 1
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="2.62144e+08"} 1
loki_response_message_bytes_bucket{method="GET",route="loki_api_v1_series",le="+Inf"} 1
loki_response_message_bytes_sum{method="GET",route="loki_api_v1_series"} 305
loki_response_message_bytes_count{method="GET",route="loki_api_v1_series"} 1
loki_response_message_bytes_bucket{method="GET",route="metrics",le="1.048576e+06"} 17179
loki_response_message_bytes_bucket{method="GET",route="metrics",le="2.62144e+06"} 17179
loki_response_message_bytes_bucket{method="GET",route="metrics",le="5.24288e+06"} 17179
loki_response_message_bytes_bucket{method="GET",route="metrics",le="1.048576e+07"} 17179
loki_response_message_bytes_bucket{method="GET",route="metrics",le="2.62144e+07"} 17179
loki_response_message_bytes_bucket{method="GET",route="metrics",le="5.24288e+07"} 17179
loki_response_message_bytes_bucket{method="GET",route="metrics",le="1.048576e+08"} 17179
loki_response_message_bytes_bucket{method="GET",route="metrics",le="2.62144e+08"} 17179
loki_response_message_bytes_bucket{method="GET",route="metrics",le="+Inf"} 17179
loki_response_message_bytes_sum{method="GET",route="metrics"} 2.05487234e+08
loki_response_message_bytes_count{method="GET",route="metrics"} 17179
loki_response_message_bytes_bucket{method="GET",route="ready",le="1.048576e+06"} 6
loki_response_message_bytes_bucket{method="GET",route="ready",le="2.62144e+06"} 6
loki_response_message_bytes_bucket{method="GET",route="ready",le="5.24288e+06"} 6
loki_response_message_bytes_bucket{method="GET",route="ready",le="1.048576e+07"} 6
loki_response_message_bytes_bucket{method="GET",route="ready",le="2.62144e+07"} 6
loki_response_message_bytes_bucket{method="GET",route="ready",le="5.24288e+07"} 6
loki_response_message_bytes_bucket{method="GET",route="ready",le="1.048576e+08"} 6
loki_response_message_bytes_bucket{method="GET",route="ready",le="2.62144e+08"} 6
loki_response_message_bytes_bucket{method="GET",route="ready",le="+Inf"} 6
loki_response_message_bytes_sum{method="GET",route="ready"} 36
loki_response_message_bytes_count{method="GET",route="ready"} 6
loki_response_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="1.048576e+06"} 22
loki_response_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="2.62144e+06"} 22
loki_response_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="5.24288e+06"} 22
loki_response_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="1.048576e+07"} 22
loki_response_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="2.62144e+07"} 22
loki_response_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="5.24288e+07"} 22
loki_response_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="1.048576e+08"} 22
loki_response_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="2.62144e+08"} 22
loki_response_message_bytes_bucket{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult",le="+Inf"} 22
loki_response_message_bytes_sum{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult"} 110
loki_response_message_bytes_count{method="gRPC",route="/frontendv2pb.FrontendForQuerier/QueryResult"} 22
loki_response_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="1.048576e+06"} 147
loki_response_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="2.62144e+06"} 147
loki_response_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="5.24288e+06"} 147
loki_response_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="1.048576e+07"} 147
loki_response_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="2.62144e+07"} 147
loki_response_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="5.24288e+07"} 147
loki_response_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="1.048576e+08"} 147
loki_response_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="2.62144e+08"} 147
loki_response_message_bytes_bucket{method="gRPC",route="/grpc.health.v1.Health/Check",le="+Inf"} 147
loki_response_message_bytes_sum{method="gRPC",route="/grpc.health.v1.Health/Check"} 1029
loki_response_message_bytes_count{method="gRPC",route="/grpc.health.v1.Health/Check"} 147
# HELP loki_results_cache_version_comparisons_total Comparisons of cache key versions in the results cache between query-frontends & queriers
# TYPE loki_results_cache_version_comparisons_total counter
loki_results_cache_version_comparisons_total 2
# HELP loki_s3_request_duration_seconds Time spent doing S3 requests.
# TYPE loki_s3_request_duration_seconds histogram
loki_s3_request_duration_seconds_bucket{operation="S3.GetObject",status_code="200",le="0.025"} 0
loki_s3_request_duration_seconds_bucket{operation="S3.GetObject",status_code="200",le="0.05"} 1
loki_s3_request_duration_seconds_bucket{operation="S3.GetObject",status_code="200",le="0.1"} 3
loki_s3_request_duration_seconds_bucket{operation="S3.GetObject",status_code="200",le="0.25"} 4
loki_s3_request_duration_seconds_bucket{operation="S3.GetObject",status_code="200",le="0.5"} 5
loki_s3_request_duration_seconds_bucket{operation="S3.GetObject",status_code="200",le="1"} 5
loki_s3_request_duration_seconds_bucket{operation="S3.GetObject",status_code="200",le="2"} 5
loki_s3_request_duration_seconds_bucket{operation="S3.GetObject",status_code="200",le="+Inf"} 5
loki_s3_request_duration_seconds_sum{operation="S3.GetObject",status_code="200"} 0.703767211
loki_s3_request_duration_seconds_count{operation="S3.GetObject",status_code="200"} 5
loki_s3_request_duration_seconds_bucket{operation="S3.List",status_code="200",le="0.025"} 0
loki_s3_request_duration_seconds_bucket{operation="S3.List",status_code="200",le="0.05"} 0
loki_s3_request_duration_seconds_bucket{operation="S3.List",status_code="200",le="0.1"} 1
loki_s3_request_duration_seconds_bucket{operation="S3.List",status_code="200",le="0.25"} 2
loki_s3_request_duration_seconds_bucket{operation="S3.List",status_code="200",le="0.5"} 3
loki_s3_request_duration_seconds_bucket{operation="S3.List",status_code="200",le="1"} 3
loki_s3_request_duration_seconds_bucket{operation="S3.List",status_code="200",le="2"} 3
loki_s3_request_duration_seconds_bucket{operation="S3.List",status_code="200",le="+Inf"} 3
loki_s3_request_duration_seconds_sum{operation="S3.List",status_code="200"} 0.7208162810000001
loki_s3_request_duration_seconds_count{operation="S3.List",status_code="200"} 3
# HELP loki_tcp_connections Current number of accepted TCP connections.
# TYPE loki_tcp_connections gauge
loki_tcp_connections{protocol="grpc"} 3
loki_tcp_connections{protocol="http"} 2
# HELP loki_tcp_connections_limit The max number of TCP connections that can be accepted (0 means no limit).
# TYPE loki_tcp_connections_limit gauge
loki_tcp_connections_limit{protocol="grpc"} 0
loki_tcp_connections_limit{protocol="http"} 0
# HELP loki_tsdb_shipper_query_time_table_download_duration_seconds Time (in seconds) spent in downloading of files per table at query time
# TYPE loki_tsdb_shipper_query_time_table_download_duration_seconds counter
loki_tsdb_shipper_query_time_table_download_duration_seconds{component="index-store-tsdb-2023-07-11",table="index_19710"} 3.165729701
# HELP loki_tsdb_shipper_tables_download_operation_duration_seconds Time (in seconds) spent in downloading updated files for all the tables
# TYPE loki_tsdb_shipper_tables_download_operation_duration_seconds gauge
loki_tsdb_shipper_tables_download_operation_duration_seconds{component="index-store-tsdb-2023-07-11"} 0.420356503
# HELP loki_tsdb_shipper_tables_sync_operation_total Total number of tables sync operations done by status
# TYPE loki_tsdb_shipper_tables_sync_operation_total counter
loki_tsdb_shipper_tables_sync_operation_total{component="index-store-tsdb-2023-07-11",status="success"} 286
# HELP process_cpu_seconds_total Total user and system CPU time spent in seconds.
# TYPE process_cpu_seconds_total counter
process_cpu_seconds_total 577.16
# HELP process_max_fds Maximum number of open file descriptors.
# TYPE process_max_fds gauge
process_max_fds 1.048576e+06
# HELP process_open_fds Number of open file descriptors.
# TYPE process_open_fds gauge
process_open_fds 30
# HELP process_resident_memory_bytes Resident memory size in bytes.
# TYPE process_resident_memory_bytes gauge
process_resident_memory_bytes 8.9427968e+07
# HELP process_start_time_seconds Start time of the process since unix epoch in seconds.
# TYPE process_start_time_seconds gauge
process_start_time_seconds 1.7028629968e+09
# HELP process_virtual_memory_bytes Virtual memory size in bytes.
# TYPE process_virtual_memory_bytes gauge
process_virtual_memory_bytes 8.59652096e+08
# HELP process_virtual_memory_max_bytes Maximum amount of virtual memory available in bytes.
# TYPE process_virtual_memory_max_bytes gauge
process_virtual_memory_max_bytes 1.8446744073709552e+19
# HELP prometheus_remote_storage_exemplars_in_total Exemplars in to remote storage, compare to exemplars out for queue managers.
# TYPE prometheus_remote_storage_exemplars_in_total counter
prometheus_remote_storage_exemplars_in_total 0
# HELP prometheus_remote_storage_histograms_in_total HistogramSamples in to remote storage, compare to histograms out for queue managers.
# TYPE prometheus_remote_storage_histograms_in_total counter
prometheus_remote_storage_histograms_in_total 0
# HELP prometheus_remote_storage_samples_in_total Samples in to remote storage, compare to samples out for queue managers.
# TYPE prometheus_remote_storage_samples_in_total counter
prometheus_remote_storage_samples_in_total 0
# HELP prometheus_remote_storage_string_interner_zero_reference_releases_total The number of times release has been called for strings that are not interned.
# TYPE prometheus_remote_storage_string_interner_zero_reference_releases_total counter
prometheus_remote_storage_string_interner_zero_reference_releases_total 0
# HELP prometheus_sd_dns_lookup_failures_total The number of DNS-SD lookup failures.
# TYPE prometheus_sd_dns_lookup_failures_total counter
prometheus_sd_dns_lookup_failures_total 0
# HELP prometheus_sd_dns_lookups_total The number of DNS-SD lookups.
# TYPE prometheus_sd_dns_lookups_total counter
prometheus_sd_dns_lookups_total 0
# HELP prometheus_target_scrape_pool_exceeded_label_limits_total Total number of times scrape pools hit the label limits, during sync or config reload.
# TYPE prometheus_target_scrape_pool_exceeded_label_limits_total counter
prometheus_target_scrape_pool_exceeded_label_limits_total 0
# HELP prometheus_target_scrape_pool_exceeded_target_limit_total Total number of times scrape pools hit the target limit, during sync or config reload.
# TYPE prometheus_target_scrape_pool_exceeded_target_limit_total counter
prometheus_target_scrape_pool_exceeded_target_limit_total 0
# HELP prometheus_target_scrape_pool_reloads_failed_total Total number of failed scrape pool reloads.
# TYPE prometheus_target_scrape_pool_reloads_failed_total counter
prometheus_target_scrape_pool_reloads_failed_total 0
# HELP prometheus_target_scrape_pool_reloads_total Total number of scrape pool reloads.
# TYPE prometheus_target_scrape_pool_reloads_total counter
prometheus_target_scrape_pool_reloads_total 0
# HELP prometheus_target_scrape_pools_failed_total Total number of scrape pool creations that failed.
# TYPE prometheus_target_scrape_pools_failed_total counter
prometheus_target_scrape_pools_failed_total 0
# HELP prometheus_target_scrape_pools_total Total number of scrape pool creation attempts.
# TYPE prometheus_target_scrape_pools_total counter
prometheus_target_scrape_pools_total 0
# HELP prometheus_target_scrapes_cache_flush_forced_total How many times a scrape cache was flushed due to getting big while scrapes are failing.
# TYPE prometheus_target_scrapes_cache_flush_forced_total counter
prometheus_target_scrapes_cache_flush_forced_total 0
# HELP prometheus_target_scrapes_exceeded_body_size_limit_total Total number of scrapes that hit the body size limit
# TYPE prometheus_target_scrapes_exceeded_body_size_limit_total counter
prometheus_target_scrapes_exceeded_body_size_limit_total 0
# HELP prometheus_target_scrapes_exceeded_sample_limit_total Total number of scrapes that hit the sample limit and were rejected.
# TYPE prometheus_target_scrapes_exceeded_sample_limit_total counter
prometheus_target_scrapes_exceeded_sample_limit_total 0
# HELP prometheus_target_scrapes_exemplar_out_of_order_total Total number of exemplar rejected due to not being out of the expected order.
# TYPE prometheus_target_scrapes_exemplar_out_of_order_total counter
prometheus_target_scrapes_exemplar_out_of_order_total 0
# HELP prometheus_target_scrapes_sample_duplicate_timestamp_total Total number of samples rejected due to duplicate timestamps but different values.
# TYPE prometheus_target_scrapes_sample_duplicate_timestamp_total counter
prometheus_target_scrapes_sample_duplicate_timestamp_total 0
# HELP prometheus_target_scrapes_sample_out_of_bounds_total Total number of samples rejected due to timestamp falling outside of the time bounds.
# TYPE prometheus_target_scrapes_sample_out_of_bounds_total counter
prometheus_target_scrapes_sample_out_of_bounds_total 0
# HELP prometheus_target_scrapes_sample_out_of_order_total Total number of samples rejected due to not being out of the expected order.
# TYPE prometheus_target_scrapes_sample_out_of_order_total counter
prometheus_target_scrapes_sample_out_of_order_total 0
# HELP prometheus_template_text_expansion_failures_total The total number of template text expansion failures.
# TYPE prometheus_template_text_expansion_failures_total counter
prometheus_template_text_expansion_failures_total 0
# HELP prometheus_template_text_expansions_total The total number of template text expansions.
# TYPE prometheus_template_text_expansions_total counter
prometheus_template_text_expansions_total 0
# HELP querier_cache_added_new_total The total number of new entries added to the cache
# TYPE querier_cache_added_new_total counter
querier_cache_added_new_total{cache="chunksembedded-cache"} 0
querier_cache_added_new_total{cache="frontend.embedded-cache"} 2
querier_cache_added_new_total{cache="store.index-cache-read.embedded-cache"} 0
# HELP querier_cache_added_total The total number of Put calls on the cache
# TYPE querier_cache_added_total counter
querier_cache_added_total{cache="chunksembedded-cache"} 0
querier_cache_added_total{cache="frontend.embedded-cache"} 2
querier_cache_added_total{cache="store.index-cache-read.embedded-cache"} 0
# HELP querier_cache_entries The total number of entries
# TYPE querier_cache_entries gauge
querier_cache_entries{cache="chunksembedded-cache"} 0
querier_cache_entries{cache="frontend.embedded-cache"} 2
querier_cache_entries{cache="store.index-cache-read.embedded-cache"} 0
# HELP querier_cache_gets_total The total number of Get calls
# TYPE querier_cache_gets_total counter
querier_cache_gets_total{cache="chunksembedded-cache"} 0
querier_cache_gets_total{cache="frontend.embedded-cache"} 2
querier_cache_gets_total{cache="store.index-cache-read.embedded-cache"} 0
# HELP querier_cache_memory_bytes The current cache size in bytes
# TYPE querier_cache_memory_bytes gauge
querier_cache_memory_bytes{cache="chunksembedded-cache"} 0
querier_cache_memory_bytes{cache="frontend.embedded-cache"} 926
querier_cache_memory_bytes{cache="store.index-cache-read.embedded-cache"} 0
# HELP querier_cache_misses_total The total number of Get calls that had no valid entry
# TYPE querier_cache_misses_total counter
querier_cache_misses_total{cache="chunksembedded-cache"} 0
querier_cache_misses_total{cache="frontend.embedded-cache"} 2
querier_cache_misses_total{cache="store.index-cache-read.embedded-cache"} 0
# HELP querier_cache_stale_gets_total The total number of Get calls that had an entry which expired (deprecated)
# TYPE querier_cache_stale_gets_total counter
querier_cache_stale_gets_total{cache="chunksembedded-cache"} 0
querier_cache_stale_gets_total{cache="frontend.embedded-cache"} 0
querier_cache_stale_gets_total{cache="store.index-cache-read.embedded-cache"} 0
# HELP timer_memberlist_gossip timer_memberlist_gossip
# TYPE timer_memberlist_gossip summary
timer_memberlist_gossip{quantile="0.5"} 0.0023156970273703337
timer_memberlist_gossip{quantile="0.9"} 0.007969923317432404
timer_memberlist_gossip{quantile="0.99"} 0.007969923317432404
timer_memberlist_gossip_sum 143.12405591985407
timer_memberlist_gossip_count 42948
# HELP timer_memberlist_probeNode timer_memberlist_probeNode
# TYPE timer_memberlist_probeNode summary
timer_memberlist_probeNode{quantile="0.5"} 0.00184951804112643
timer_memberlist_probeNode{quantile="0.9"} 0.0019993840251117945
timer_memberlist_probeNode{quantile="0.99"} 0.0019993840251117945
timer_memberlist_probeNode_sum 57.51169193640817
timer_memberlist_probeNode_count 17179
# HELP timer_memberlist_pushPullNode timer_memberlist_pushPullNode
# TYPE timer_memberlist_pushPullNode summary
timer_memberlist_pushPullNode{quantile="0.5"} NaN
timer_memberlist_pushPullNode{quantile="0.9"} NaN
timer_memberlist_pushPullNode{quantile="0.99"} NaN
timer_memberlist_pushPullNode_sum 7.796003381488845
timer_memberlist_pushPullNode_count 2870
```
