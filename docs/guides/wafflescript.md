# Install wafflescript

Installing wafflescript is quick and easy!

1\. Check the [Release Page](https://github.com/wffls/wafflescript/releases) for the latest release.

2\. Download and Untar it:

```bash
$ wget https://github.com/wffls/wafflescript/releases/download/X/wafflescript_X_linux_x86_64.tgz
$ tar xzf wafflescript_X_linux_x86_64.tgz -C /usr/local/bin
```

3\. Use it as the "shebang" interpreter in a script:

```bash
#!/usr/local/bin/wafflescript

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
