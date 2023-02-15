function ll --wraps=exa --description 'alias exa --long'
  exa --all --long --tree --level=1 $argv --icons --group-directories-first --ignore-glob="node_modules";
end