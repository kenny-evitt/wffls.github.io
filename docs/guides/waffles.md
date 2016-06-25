# Install Waffles

Installing Waffles is quick and easy!

1\. Clone the repository to a directory of your choice and install:

```bash
$ git clone https://github.com/jtopjian/waffles /opt/waffles
```

2\. Source the `init.sh` file either on the command-line or in a script.

## Command-line

```bash
$ source /opt/waffles.sh
$ apt.pkg --help
```

## Script

```bash
#!/bin/bash

source /opt/waffles.sh

# Install memcached
apt.pkg --package memcached --version latest

# Set the listen option
file.line --file /etc/memcached.conf --line "-l 0.0.0.0" --match "^-l"

# Determine the amount of memory available and use half of that for memcached
memory_bytes=$(elements System.Memory.Total 2>/dev/null)
memory=$(( $memory_bytes / 1024 / 1024 / 2 ))

# Set the memory available to memcached
file.line --file /etc/memcached.conf --line "-m $memory" --match "^-m"

# Manage the memcached service
service.sysv --name memcached

# If any changes happened above, restart memcached
if [[ -n $waffles_total_changes ]]; then
  exec.mute /etc/init.d/memcached restart
fi
```
