#!/bin/bash

sudo tc qdisc del dev lo root netem

# 1ms RTT
sudo tc qdisc add dev lo root netem delay 0.5ms

LATENCY=1 SIZE=1024 CONCURRENCY=1 make echo-perf
LATENCY=1 SIZE=1024 CONCURRENCY=2 make echo-perf
LATENCY=1 SIZE=1024 CONCURRENCY=4 make echo-perf
LATENCY=1 SIZE=1024 CONCURRENCY=8 make echo-perf
LATENCY=1 SIZE=1024 CONCURRENCY=16 make echo-perf
LATENCY=1 SIZE=1024 CONCURRENCY=32 make echo-perf
LATENCY=1 SIZE=1024 CONCURRENCY=64 make echo-perf
LATENCY=1 SIZE=1024 CONCURRENCY=128 make echo-perf

LATENCY=1 SIZE=8192 CONCURRENCY=1 make echo-perf
LATENCY=1 SIZE=8192 CONCURRENCY=2 make echo-perf
LATENCY=1 SIZE=8192 CONCURRENCY=4 make echo-perf
LATENCY=1 SIZE=8192 CONCURRENCY=8 make echo-perf
LATENCY=1 SIZE=8192 CONCURRENCY=16 make echo-perf
LATENCY=1 SIZE=8192 CONCURRENCY=32 make echo-perf
LATENCY=1 SIZE=8192 CONCURRENCY=64 make echo-perf
LATENCY=1 SIZE=8192 CONCURRENCY=128 make echo-perf

sudo tc qdisc del dev lo root netem

# 20ms RTT
sudo tc qdisc add dev lo root netem delay 10ms

LATENCY=20 SIZE=1024 CONCURRENCY=1 make echo-perf
LATENCY=20 SIZE=1024 CONCURRENCY=2 make echo-perf
LATENCY=20 SIZE=1024 CONCURRENCY=4 make echo-perf
LATENCY=20 SIZE=1024 CONCURRENCY=8 make echo-perf
LATENCY=20 SIZE=1024 CONCURRENCY=16 make echo-perf
LATENCY=20 SIZE=1024 CONCURRENCY=32 make echo-perf
LATENCY=20 SIZE=1024 CONCURRENCY=64 make echo-perf
LATENCY=20 SIZE=1024 CONCURRENCY=128 make echo-perf

LATENCY=20 SIZE=8192 CONCURRENCY=1 make echo-perf
LATENCY=20 SIZE=8192 CONCURRENCY=2 make echo-perf
LATENCY=20 SIZE=8192 CONCURRENCY=4 make echo-perf
LATENCY=20 SIZE=8192 CONCURRENCY=8 make echo-perf
LATENCY=20 SIZE=8192 CONCURRENCY=16 make echo-perf
LATENCY=20 SIZE=8192 CONCURRENCY=32 make echo-perf
LATENCY=20 SIZE=8192 CONCURRENCY=64 make echo-perf
LATENCY=20 SIZE=8192 CONCURRENCY=128 make echo-perf

sudo tc qdisc del dev lo root netem