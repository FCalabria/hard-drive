---
title: "Running scripts"
date: 2019-05-15T00:18:40+02:00
weight: 3
---

`#!/bin/sh` at the begining allows the script to be run writing just `myscript.sh` instead of `sh myscript.sh` on the command line.

For this to work you may need to set the file as executable (`chmod +x <filename>.sh`)

You can pass arguments to a script the same way you pass them to a function

```bash

# Command line
./my-script.sh arg1 arg2

# Script

echo "$1 - $2"

# will print
# arg1 - arg2
```

If you copy or move a script without the `.sh` to a folder in the `PATH` it can be executed as a command line tool. For example:

```bash
$ cp my-script.sh /usr/bin/my-script

# Execute it
$ my-script
```
