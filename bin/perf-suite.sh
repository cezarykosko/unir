#!/bin/bash

# Other options: make partisan-perf

sudo tc qdisc del dev lo root netem

# 1ms RTT
#sudo tc qdisc add dev lo root netem delay 0.5ms
#
#LATENCY=1 SIZE=1024 CONCURRENCY=1 make echo-perf
#LATENCY=1 SIZE=1024 CONCURRENCY=2 make echo-perf
#LATENCY=1 SIZE=1024 CONCURRENCY=4 make echo-perf
#LATENCY=1 SIZE=1024 CONCURRENCY=8 make echo-perf
#
#LATENCY=1 SIZE=2048 CONCURRENCY=1 make echo-perf
#LATENCY=1 SIZE=2048 CONCURRENCY=2 make echo-perf
#LATENCY=1 SIZE=2048 CONCURRENCY=4 make echo-perf
#LATENCY=1 SIZE=2048 CONCURRENCY=8 make echo-perf
#
#LATENCY=1 SIZE=4096 CONCURRENCY=1 make echo-perf
#LATENCY=1 SIZE=4096 CONCURRENCY=2 make echo-perf
#LATENCY=1 SIZE=4096 CONCURRENCY=4 make echo-perf
#LATENCY=1 SIZE=4096 CONCURRENCY=8 make echo-perf
#
#LATENCY=1 SIZE=8192 CONCURRENCY=1 make echo-perf
#LATENCY=1 SIZE=8192 CONCURRENCY=2 make echo-perf
#LATENCY=1 SIZE=8192 CONCURRENCY=4 make echo-perf
#LATENCY=1 SIZE=8192 CONCURRENCY=8 make echo-perf
#
#sudo tc qdisc del dev lo root netem

# 20ms RTT
sudo tc qdisc add dev lo root netem delay 10ms

#LATENCY=20 SIZE=1024 CONCURRENCY=1 make echo-perf
#LATENCY=20 SIZE=1024 CONCURRENCY=2 make echo-perf
#LATENCY=20 SIZE=1024 CONCURRENCY=4 make echo-perf
#LATENCY=20 SIZE=1024 CONCURRENCY=8 make echo-perf

#LATENCY=20 SIZE=2048 CONCURRENCY=1 make echo-perf
#LATENCY=20 SIZE=2048 CONCURRENCY=2 make echo-perf
#LATENCY=20 SIZE=2048 CONCURRENCY=4 make echo-perf
#LATENCY=20 SIZE=2048 CONCURRENCY=8 make echo-perf

LATENCY=20 SIZE=4096 CONCURRENCY=1 make echo-perf
LATENCY=20 SIZE=4096 CONCURRENCY=2 make echo-perf
LATENCY=20 SIZE=4096 CONCURRENCY=4 make echo-perf
LATENCY=20 SIZE=4096 CONCURRENCY=8 make echo-perf

LATENCY=20 SIZE=8192 CONCURRENCY=1 make echo-perf
LATENCY=20 SIZE=8192 CONCURRENCY=2 make echo-perf
LATENCY=20 SIZE=8192 CONCURRENCY=4 make echo-perf
LATENCY=20 SIZE=8192 CONCURRENCY=8 make echo-perf

sudo tc qdisc del dev lo root netem

# 100ms RTT
# sudo tc qdisc add dev lo root netem delay 50ms

# LATENCY=100 SIZE=1024 CONCURRENCY=1 make echo-perf
# LATENCY=100 SIZE=1024 CONCURRENCY=2 make echo-perf
# LATENCY=100 SIZE=1024 CONCURRENCY=4 make echo-perf
# LATENCY=100 SIZE=1024 CONCURRENCY=8 make echo-perf

# LATENCY=100 SIZE=2048 CONCURRENCY=1 make echo-perf
# LATENCY=100 SIZE=2048 CONCURRENCY=2 make echo-perf
# LATENCY=100 SIZE=2048 CONCURRENCY=4 make echo-perf
# LATENCY=100 SIZE=2048 CONCURRENCY=8 make echo-perf

# LATENCY=100 SIZE=4096 CONCURRENCY=1 make echo-perf
# LATENCY=100 SIZE=4096 CONCURRENCY=2 make echo-perf
# LATENCY=100 SIZE=4096 CONCURRENCY=4 make echo-perf
# LATENCY=100 SIZE=4096 CONCURRENCY=8 make echo-perf

# LATENCY=100 SIZE=8192 CONCURRENCY=1 make echo-perf
# LATENCY=100 SIZE=8192 CONCURRENCY=2 make echo-perf
# LATENCY=100 SIZE=8192 CONCURRENCY=4 make echo-perf
# LATENCY=100 SIZE=8192 CONCURRENCY=8 make echo-perf

# sudo tc qdisc del dev lo root netem
