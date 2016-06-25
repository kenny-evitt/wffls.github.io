## Name

apt.ppa

### Description

Manages PPA repositories

### Parameters

* state: The state of the resource. Required. Default: present.
* ppa: The PPA. Required.
* refresh: run apt-get update if the PPA was modified. Default: true.

### Example

```bash
apt.ppa --ppa ppa:chris-lea/redis-server
```

