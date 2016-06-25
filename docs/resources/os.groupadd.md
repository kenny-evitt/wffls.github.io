## Name

os.groupadd

### Description

Manages groups

### Parameters

* state: The state of the resource. Required. Default: present.
* group: The group. Required.
* gid: The gid of the group. Optional.

### Example

```bash
os.groupadd --group jdoe --gid 999
```

