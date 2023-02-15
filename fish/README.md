### Fish Plugins (using fisher)

| Plugin        | Path + Git                                                          |
| ------------- | :------------------------------------------------------------------ |
| **Fisher**    | [jorgebucaran/fisher](https://github.com/jorgebucaran/fisher)       |
| **nvm**       | [jorgebucaran/nvm.fish](https://github.com/jorgebucaran/nvm.fish)   |
| **SSH agent** | [danhper/fish-ssh-agent](https://github.com/danhper/fish-ssh-agent) |
| **Z Jumping** | [jethrokuan/z](https://github.com/jethrokuan/z)                     |

### Fish Functions

```
### EXA ###
alias ls="exa --all $argv \
	      --icons --group-directories-first --ignore-glob='node_modules|.git';"
alias ll="exa --all --long --tree --level=1 $argv \
	      --icons --group-directories-first --ignore-glob='node_modules';"

### GIT ###
alias ggl="git pull $argv;"
alias ggp="git push $argv;"
alias ggt="git status $argv;"
alias prune-branches="git branch -vv | awk '/: gone]/{print $1}' | xargs git branch $del_flag"
```
