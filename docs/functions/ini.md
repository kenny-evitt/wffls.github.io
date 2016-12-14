# ini Functions

`functions/ini_file.sh` contains functions to work with ini files.

For the following functions, consider the example ini file:

```bash
opt=a global option
singleglobal
[section 1]
opt=a section 1 option
[section 2]
opt=a section 2 option
```

## ini_file.get_option

Returns the line in an ini file matching the parameters.

```bash
$ ini_file.get_option "file.ini" "section 1" "opt"
opt=a section 1 option
$ ini_file.get_option "file.ini" "section 2" "opt"
opt=a section 2 option
$ ini_file.get_option "file.ini" "__none__" "opt"
opt=a global option
```

## ini_file.options_has_value

Returns `0` if the ini file contains the requested value.

```bash
$ ini_file.option_has_value "file.ini" "section 1" "opt" "a section 1 option"
0
$ ini_file.option_has_value "file.ini" "__none__" "opt" "a global option"
0
$ ini_file.option_has_value "file.ini" "__none__" "global" "a global value"
1
```

## ini_file.has_section

Returns `0` if the ini file contains the requested section.

```bash
$ ini_file.has_section "file.ini" "section 1"
0
$ ini_file.has_section "file.ini" "section 3"
1
```

## ini_file.remove

Removes a single ini entry.

```bash
$ ini_file.remove "file.ini" "__none__" "singleglobal"
$ ini_file.remove "file.ini" "section 1" "opt"
```

## ini_file.remove_section

Removes an entire ini section.

```bash
$ ini_file.remove_section "file.ini" "section 1"
```

## ini_file.set

Sets an entry in an ini file.

```bash
$ ini_file.set "file.ini" "section 1" "opt" "a section 1 option"
$ ini_file.set "file.ini" "__none__" "singleglobal" "__none__"
$ ini_file.set "file.ini" "section 1" "opt" "a section 1 option - modified"
```
