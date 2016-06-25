# Waffles

A collection of tools to help make deploying, provisioning, and maintaining systems easier.

## Waffles Shell Scripts

The core of the Waffles project is... [Waffles](/waffles): a suite of Bash scripts to manage server resources in an idempotent fashion. You can use Waffles to create server build scripts that can be executed multiple times and only making changes when needed.

Waffles tries to be:

### Easy to Use

To get started with Waffles, simply "source" the `init.sh` script:

```shell
$ source /opt/waffles/init.sh
$ apt.pkg --help
```

### Simple

If you're proficient in shell scripting and system administration, you should have no problem dissecting and understanding Waffles.

### Helpful

Waffles helps make the tasks you're already doing easier; whether that's adding an `apt` PPA, a line to an `ini` file, or adding a Cron entry.

### Resourceful

Waffles doesn't try to reinvent the wheel. Waffles leans on core system tools like `awk`, `sed`, and plain 'ol Bash to accomplish its tasks. Some Waffles resources have dependencies, but only when it makes sense.

### Humble

If there's a better tool for the job, Waffles yields to it. Waffles isn't interested in creating servers -- use [Terraform](https://terraform.io) for that. Use [Consul](https://consul.io) or [Juju](https://jujucharms.com/) for service orchestration.

Use Waffles for maintaining basic resources within a server.

## Wafflescript

[Wafflescript](/wafflescript) is a compiled binary of Waffles. Simply copy the `wafflescript` binary to any system and immediately take advantage of the various Waffles resources.
