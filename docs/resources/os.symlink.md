## Name

os.symlink

### Description

Manages symlinks

### Parameters

* state: The state of the resource. Required. Default: present.
* name: The name of the link. Required.
* target: The target of the link.

### Example

```bash
os.symlink --name /usr/local/man --target /usr/share/man
```

