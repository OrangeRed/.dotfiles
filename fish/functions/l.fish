function l --wraps=clear --description 'alias exa'
  exa --all $argv --icons --group-directories-first --ignore-glob="node_modules|.git" --git-ignore;
end

