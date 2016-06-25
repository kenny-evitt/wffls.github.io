## Name

sudoers.cmd

### Description

Provides an easy way to give a user sudo access to a single command
defined in a sudoers.d file.

### Parameters

* state: The state of the resource. Required. Default: present.
* user: The user of the sudo privilege. Required.
* command: The command of the sudo privilege. Required.
* password: Whether to prompt for a password. Required. Default: false.

### Example

```bash
sudoers.cmd --user consul --command /usr/local/bin/consul_build_hosts_file.sh
```

