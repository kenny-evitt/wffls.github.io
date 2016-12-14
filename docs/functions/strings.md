# String Functions

`functions/strings.sh` contains functions to help manipulate strings.

## string.split

Splits a string into an array. Stores the result in `__split`. The delimiter can be multi-character.

```shell
string.split "foo/bar", "/"
log.info $__split[1] # bar
```

## string.trim

Trims the whitespace on both sides of a string.

```shell
trimmed=$(string.trim "   foobar   "
log.info "$trimmed" # foobar
```
