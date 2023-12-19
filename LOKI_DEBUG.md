via https://github.com/grafana/loki/issues/1045

For reference, the following metrics are currently defined:

By all components:

* `log_messages_total`: Total number of messages logged by Loki.
* `loki_request_duration_seconds_count`: Number of received HTTP requests.

By distributors:

* `loki_distributor_ingester_appends_total`: The total number of batch appends
  sent to ingesters.
* `loki_distributor_ingester_append_failures_total`: The total number of failed
  batch appends sent to ingesters.
* `loki_distributor_bytes_received_total`: The total number of uncompressed
  bytes received per tenant.
* `loki_distributor_lines_received_total`: The total number of lines received
  per tenant.

By ingesters:

* `cortex_ingester_flush_queue_length`: The total number of series pending in
  the flush queue.
* `loki_ingester_chunk_age_seconds`: Distribution of chunk ages when flushed.
* `loki_ingester_chunk_encode_time_seconds`: Distribution of chunk encode times.
* `loki_ingester_chunk_entries`: Distribution of entires per-chunk when flushed.
* `loki_ingester_chunk_size_bytes`: Distribution of chunk sizes when flushed.
* `loki_ingester_chunk_stored_bytes_total`: Total bytes stored in chunks per
  tenant.
* `loki_ingester_chunks_created_total`: The total number of chunks created in
  the ingester.
* `loki_ingester_chunks_flushed_total`: The total number of chunks flushed by
  the ingester.
* `loki_ingester_chunks_stored_total`: Total stored chunks per tenant.
* `loki_ingester_received_chunks`: The total number of chunks sent by this
  ingester whilst joining during the handoff process.
* `loki_ingester_samples_per_chunk`: The number of samples in a chunk.
* `loki_ingester_sent_chunks`: The total number of chunks sent by this ingester
  whilst leaving during the handoff process.
* `loki_ingester_streams_created_total`: The total number of streams created per
  tenant.
* `loki_ingester_streams_removed_total`: The total number of streams removed per
  tenant.
