#!/usr/bin/env bash

echo "Installing gdb and valgrind..."
apt-get update > /dev/null 2>&1
apt-get install -y gdb
apt-get install -y valgrind

