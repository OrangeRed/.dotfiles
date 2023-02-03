### Aliases

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
```
