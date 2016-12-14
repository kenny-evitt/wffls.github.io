# Array Functions

`functions/arrays.sh` contains functions to help interact with arrays and hashes/maps.

## array.contains

Reports true if element exists in an array.

```shell
x=(foo bar baz)
if array.contains "x" "foo" ; then
  echo "Exists"
fi
```

## array.join

Joins an array into a string.

```shell
x=(foo bar baz)
array.join x ,
=> foo,bar,baz
```

## array.length

Returns the length of an array.

```shell
x=(a b c)
array.length x
=> 3
```

## array.pop

Removes and the last element from array $1 and optionally stores it in $2

```shell
x=(a b c)
array.pop x y
echo $y
=> c
```

## array.push

Adds an element to the end of an array.

```shell
x=()
array.push x foo
```

## array.shift

Removes and returns the first element from array $1 and optionally stores it in $2

```shell
x=(a b c)
array.shift x y
echo $y
=> a
```

## array.unshift

Adds an element to the beginning of the array.

```shell
x=(b c)
array.unshift x a

```

## hash.keys

Returns the keys of a hash / associative array.

```shell
declare -A foo=(
  [a]=1
  [b]=2
  [c]=3
)

hash.keys "foo"
=> a b c

x=($(hash.keys "foo"))
echo "${x[1]}"
=> b
```
