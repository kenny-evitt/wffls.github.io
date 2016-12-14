## Name

ruby.gem

### Description

Manage a ruby gem.

### Parameters

* state: The state of the resource. Required. Default: present.
* name: The name of the gem. Required.
* version: The version of the gem. Optional.
* url: A URL to install the gem from. Optional.

### Example

```bash
ruby.gem --name test-kitchen
```

