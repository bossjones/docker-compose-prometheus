# Simple Scalable
The simple scalable deployment mode, is the preferred way to deploy Loki for most installations. The simple scalable deployment is the default configuration installed by the Loki Helm Chart. This deployment mode is the easiest way to deploy Loki at scale. It strikes a balance between deploying in monolithic mode or deploying each component as a separate microservice.

Note: This deployment mode is sometimes referred to by the acronym SSD for simple scalable deployment, not to be confused with solid state drives. Loki uses an object store.
Loki's simple scalable deployment mode separates execution paths into read, write, and backend targets. These targets can be scaled independently, letting you customize your Loki deployment to meet your business needs for log ingestion and log query so that your infrastructure costs better match how you use Loki.

The simple scalable deployment mode can scale up to a few TBs of logs per day, however if you go much beyond this, the microservices mode will be a better choice for most users.

Simple scalable mode diagram

The three execution paths in simple scalable mode are each activated by appending the following arguments to Loki on startup:

-target=write - The write target is stateful and is controlled by a Kubernetes StatefulSet. It contains the following components: – Distributor – Ingester
-target=read - The read target is stateless and can be run as a Kubernetes Deployment that can be scaled automatically. It contains the following components: – Query front end – Queriers
-target=backend - The backend target is stateful, and is controlled by a Kubernetes StatefulSet. Contains the following components: – Compactor – Index gateways – Query scheduler – Ruler
The simple scalable deployment mode requires a reverse proxy to be deployed in front of Loki, to direct client API requests to either the read or write nodes. The Loki Helm chart includes a default reverse proxy configuration, using Nginx.


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
