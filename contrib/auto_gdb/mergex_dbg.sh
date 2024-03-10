#!/usr/bin/env bash
# use testnet settings,  if you need mainnet,  use ~/.mergex/mergexd.pid file instead
export LC_ALL=C

mergex_pid=$(<~/.mergex/testnet3/mergexd.pid)
sudo gdb -batch -ex "source debug.gdb" mergexd ${mergex_pid}
