## Name

dnf.repo

### Description

Manages dnf/yum repositories

### Parameters

* state: The state of the resource. Required. Default: present.
* file: name of the file in /etc/yum.repos.d/. Required. The file _must_ exist already.
* name: name of the repo. Required.
* description: A short description of the repo. Optional.
* baseurl: URL location of the repo. Optional.
* skip: Skip the repo if unavailable. Optional. Default 1.
* enabled: Enable this repository. Optional. Default 1.
* gpgcheck: Check RPMs for this repo. Optional. Default 0.
* gpgkey: Location of the key to check. Optional. Default "".

### Example

```bash
dnf.repo --file fedora-negativo17.repo --name negativo17 --description \
  "Negativo 17's repo" --baseurl 'http://negativo17.org/repos/flash-plugin/fedora-$releasever/$basearch/'
```

