## Name

dnf.pkg

### Description

Manage packages via dnf.

### Parameters

* state: The state of the resource. Required. Default: present.
* package: The name of the package, or the path to the rpm-file. Required.
* version: The version of the package. Leave empty for first version found. Set to "latest" to always update.

### Example

```bash
dnf.pkg --package tmux --version latest
dnf.pkg --package http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
```


