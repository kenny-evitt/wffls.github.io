## Name

dnf.copr

### Description

Manages copr repositories

### Parameters

* state: The state of the resource. Required. Default: present.
* name: The user name of the copr repo. rhscl in rhscl/perl516. Required.
* project: The project name of the copr repo. perl516 in rhscl/perl516. Required.

### Example

```bash
dnf.copr --name rhscl --project perl516
```

