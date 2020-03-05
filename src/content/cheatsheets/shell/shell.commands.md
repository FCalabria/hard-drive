---
title: "Commands"
date: 2019-05-15T00:18:40+02:00
weight: 1
---

- `cat <filename>` logs a file
- `head -n <number> <filename>` logs the first *number* lines of a file
- `tail -n <number> <filename>` logs the last *number* lines of a file
- `grep <text> <filename>`logs the lines containing *text* on the file
  - `-v --invert-match` logs the lines not containing *text* on the file
  - `-i --ignore-case` matches independently of the case
  - `-E` support for all regex instead of `<text>`
  - `-r` recursively searchs in all files. Use it with a directory instead of *filename*
- `find <directory-to-look> -name <name>` finds a file or directory with *name*. Use `-iname` for case insensitive search. Add `-type d` to look just for directories.
  
- `tree` logs the directory structure like a tree, including nested
- `sed 's/<oldExpresion>/<newExpresion>/' <filename>` logs the file substituting *oldExpresion* for *newExpresion*
  - `-E` support for all regex instead of `<oldExpresion>`
  - `-i 'subfix'` modify the original file and save the original one adding `subfix` to the name (for example, .old). If no subfix is provided, will not create the backup
- `mv <filename1> <filename2>` renames *filename1* to *filename2*
- `> <filename>` Will write the shell *stdout* to the file (replacing content)
- `2> <filename>` Will write the shell *stderror* to the file (replacing content)
- `&> <filename>` Will write the shell *stdout* and *stderror* to the file (replacing content)
- `>> <filename>` Will append the shell *stdout* to the file
- `echo $?` Will print the exit code of the last command. 0 means no error.

{{% notice tip %}}
To hide the output of a command, use _&> /dev/null_
{{% /notice %}}

## Chaining commands

- `<command> | <command>` Will run the first *command* and pass its output as the argument for the second *command*
- `<command> ; <command>` Will run both commands, independently of their output (i/ errors)
