function ls --wraps=exa --description 'alias exa'
  exa $argv --icons --group-directories-first --ignore-glob="node_modules|.git";
end
