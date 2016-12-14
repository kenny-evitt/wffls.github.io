# Exec Functions

`functions/exec.sh` contains functions to help execute commands.

## exec.capture_error

Takes a command as input, prints the command, and detects if anything was written to `stderr`. If there was, the error is printed to `stderr` again, and if `WAFFLES_EXIT_ON_ERROR` is set, Waffles halts.

```shell
exec.capture_error apt-get update
```

## waffles.command_exists

A simple wrapper around `which`.

```shell
if [[ waffles.command_exists apt-get ]]; then
  log.info "We're on a Debian-based system."
fi
```

## exec.mute

Prints the command being run, but suppresses the command output.

```shell
exec.mute apt-get update
```

## exec.sudo

Runs a command as another user via sudo:

```shell
exec.sudo username tar xzvf foobar.tar.gz
```
