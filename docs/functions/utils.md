# Utility Functions

`functions/utils.sh` contains utility functions to help with using Waffles.

## waffles.build_ini_file

Builds an ini file from a given hash.

```shell
waffles.build_ini_file data_openstack_keystone_settings /etc/keystone/keystone.conf
```

## waffles.command_exists

A simple wrapper around `which`.

```shell
if [[ waffles.command_exists apt-get ]]; then
  log.info "We're on a Debian-based system."
fi
```

## waffles.dir

A simple function that returns the current directory of the script currently being run.

## waffles.popd

An alias for `exec.mute popd $1`

## waffles.pushd

An alias for `exec.mute pushd $1`
