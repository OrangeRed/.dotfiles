# Alias exa
function ls --wraps 'exa'
  exa $argv --icons --group-directories-first --ignore-glob="node_modules|.git";
end
