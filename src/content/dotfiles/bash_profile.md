---
Title: "Bash"
---

## Aliases

- Open the coverage report: `alias o:coverage='open -a "Google Chrome" coverage/html/index.html'`
- Fetch and pull master: `alias git:updateAll='git stash -u && git checkout master && git fetch --all --prune && git pull && git checkout - && echo -e "\033[1mYour pending changes are stashed\033[00m"'`
- Delete all in location. Use with caution: `alias salla='rm -rf --'`
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

Show current git branch in command line. This is adapted for branch names like _MC-1234-that-is-a-jira-ticket-code_. It doesn't look very good with _master_ but 🤷🏻

```sh
git_current_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
git_branch_code() {
     git_current_branch | sed -n 's/\(.\{2\}-.\{4\}\)-.*/ \1/p'
}
git_branch_name() {
     git_current_branch | sed -e 's/\(.\{2\}-.\{4\}-\)\(.*\)/ \2/' -e 's/-/ /g'
}
export PS1="\[\033[45m\]\t\[\033[00m\] \[\033[35m\]\W\[\033[00m\]\$(git_branch_code)\[\033[1m\]\$(git_branch_name)\[\033[00m\] \$ "
```