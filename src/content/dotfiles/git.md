---
Title: "Git"
---

## Cool combos

- Unstage: `alias.unstage reset HEAD --`
- Add changes to last commit: `alias.amend commit --amend --no-edit`
- Push a new branch creating the origin counterpart: `alias.pushnew push -u origin HEAD`
- Show last 10 commits: `alias.hist log --pretty=format:'%ad | %Cgreen %s%d %Creset [%an] %Cblue%h' --graph --date=short -n 10`
- Show history as a tree: `alias.tree log --oneline --all --graph --decorate`

## Just some shortcuts

- `alias.ch checkout`
- `alias.br branch`
- `alias.co commit`
