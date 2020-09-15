---
Title: "Git"
---

## Cool combos

- Unstage: `unstage = reset HEAD --`
- Add changes to last commit: `amend = commit --amend --no-edit`
- The "I forgot to delete a console.log" comand: `ups = !git add . && git amend && git push --force`
- Push a new branch creating the origin counterpart: `pushnew = push -u origin HEAD`
- Update remote references and pull master: `updateAll = !git stash -u && git checkout master && git fetch --all --prune && git pull && git checkout -`
- Show last 10 commits: `hist = log --pretty=format:'%ad | %Cgreen %s%d %Creset [%an] %Cblue%h' --graph --date=short -n 10`
- Show history as a tree: `tree = log --oneline --all --graph --decorate`

## Just some shortcuts

- `alias.ch checkout`
- `alias.br branch`
- `alias.co commit`
