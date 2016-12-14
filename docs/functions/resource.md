# Resource Functions

[TOC]

`functions/resource.sh` contains functions that coordinate resource execution. These functions should only be used when building resources.

## waffles.resource.check_dependencies

This function takes an array of commands that the resource is dependent upon. It then checks if those commands exist:

```bash
# Check if all dependencies are installed
local _wrd=("apt-add-repository" "apt-get" "sed")
if ! waffles.resource.check_dependencies "${_wrd[@]}" ; then
  return 2
fi
```

## waffles.resource.process

This function does several things:

* Calls `waffles.resource.read`, which in turn calls `calling_waffles.resource.read`.
* Compares the resource state versus the state that the resource has been requested to be in.
* Depending on the results of the above, calls `waffles.resource.x`, which in turn calls `calling_waffles.resource.x`.

This function requires two arguments:

* `$1`: The resource type (`apt.pkg`)
* `$2`: The resource name (`apache2`)

## waffles.resource.read

Calls `resource_type.read`. May also perform pre and post actions.

## waffles.resource.create

Calls `resource_type.create`.

Also flags that a resource has changed and increments the amount of total changes made throughout the Waffles run.

## waffles.resource.update

Calls `resource_type.update`.

Also flags that a resource has changed and increments the amount of total changes made throughout the Waffles run.

## waffles.resource.delete

Calls `resource_type.delete`.

Also flags that a resource has changed and increments the amount of total changes made throughout the Waffles run.
