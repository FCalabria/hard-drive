---
Title: "Bash"
---

## Aliases

- Open the coverage report: `alias o:coverage='open -a "Google Chrome" coverage/html/index.html'`
- Delete all in location. Use with caution: `alias salla='rm -rf --'`
- Remove all node_modules (thanks to [Carlos](https://mobile.twitter.com/carlosvillu/status/1166991558002057217)): `alias purge-node-modules='find . -name node_modules -type d -prune -exec trash {} +'`
- Show stale branches:

```sh
alias git:stale='git_stale'

# I want to modify this function to delete the stale branches with an optional argument
git_stale() {
     show_stale() {
       git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}'
     }
     show_stale
}
```

## Other stuff

Show current git branch in command line. This is adapted for branch names like _MC-1234-that-is-a-jira-ticket-code_ or _folder/MC-1234-that-is-a-jira-ticket-code_
```sh
git_current_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
git_branch_code() {
     git_current_branch | sed -n 's/.*\([A-Z]\{2\}-.\{4\}\)-.*/ \1/p'
}
git_branch_name() {
     git_current_branch | sed -e 's/\([a-zA-Z]*\)\{0,1\}\/\{0,1\}[A-Z]\{2\}-.\{4\}-\(.*\)/[\1] \2/' -e 's/-/ /g' -e 's/\[\] //g'
}
export PS1="\[\033[45m\]\t\[\033[00m\] \[\033[35m\]\W\[\033[00m\]\$(git_branch_code) \[\033[1m\]\$(git_branch_name)\[\033[00m\] \$ "
```
