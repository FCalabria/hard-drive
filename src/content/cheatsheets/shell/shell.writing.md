---
title: "Writing scripts"
date: 2019-05-15T00:18:40+02:00
weight: 2
---

`set -e` The script will exit early if any line fails

`set -o pipefail` The script will mark lines as failed if any piped command on it fails

## Variables

Variables are declared just like this `varname=value` but to be referenced need to have a $ before `$varname`

Double quotes enable variable interpolation, while single quotes don't. Use with care.

If you don't use quotes at all and your variable has whitespaces, it will be interpreted as different arguments.

```bash
myVar=1

echo "This is my var $myVar"
# This is my var 1
echo 'This is my var $myVar'
# This is my var $myVar
```

To assign the output of a command to a variable, you need to encapsulate it like `myVar=$(echo "here")`.

```bash
# This will error
myVar=echo "here"

# This will set myVar to here
myVar=$(echo "here")

```

## Functions

```bash
# Declaration
<functionName>() {
  # Code here
  firstArgument=$1
  # etc
}

# Call
<functionName> <args>

# For example

printSomething(){
  echo "$1 and also $2"
}

printSomething "text" "other text"

# will print
# text and also other text
```


## Loops and conditionals

```bash
for <varname> in <collection>; do
  # Code here
done

# For example
for file in src/*.md; do
  echo "$file"
done
```

If is done to work with standard error codes and if a comand exits with anything but a 0, it will evaluate to false.

We can use the `-q` flag to avoid outputs of anything on the `if` check

```bash
if <command>; then
  # Code here
fi

# For example
if grep -q port "$file"; then
  echo "$file"
fi
```

Or to compare expresions


```bash
if [ <comparison> ]; then
  # Code here
fi

# For example
if [ "$port" -lt 5000 ]; then
  echo "Port is under 5000"
fi
```


```bash
if <condition>; then
  # Code here
elif <another condition>; then
  #Code here
else
  # Code here
fi
```

{{% notice tip %}}
To enter an if when a variable is true _if [ $VARIABLE ];_ won't work. The correct way is _if [ "$VARIABLE" = true ];_
{{% /notice %}}

Some comparators:

- `<a> -lt <b>` less than
- `<a> -gt <b>` greater than
- `<a> -eq <b>` numeric equal to
- `-f <filename>` *filename* is a file and exists
- `-z "$<variableName>"` *variableName* has zero length (empty string)

[More expresions](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html)

### Doing more than check in the same conditional

You can use the normal boolean operators like:

```bash
if [ <comparison> ] && [ <comparison> ]; then
  # Code here
fi
```

Another option is use the `-a` and `-o` expresions:

```bash
## Equivalent to &&
if [ <comparison> -a <comparison> ]; then
  # Code here
fi


## Equivalent to ||
if [ <comparison> -o <comparison> ]; then
  # Code here
fi
```

Or double brackets:

```bash
if [[ <comparison> && <comparison> ]]; then
  # Code here
fi
```

## Fail checks

You can check the number of arguments provided to a script with `$#`.

So a fail check can be

```bash
if [ $# -eq 0 ]; then
  echo "Arguments missing"
  exit 64
fi
```
