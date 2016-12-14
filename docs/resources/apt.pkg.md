## Name

apt.pkg

### Description

Manage packages via apt.

### Parameters

* state: The state of the resource. Required. Default: present.
* package: The name of the package. Required.
* name: Alias for package.
* version: The version of the package. Leave empty for first version found. Set to "latest" to always update.

### Example

```bash
apt.pkg --package tmux --version latest
```

