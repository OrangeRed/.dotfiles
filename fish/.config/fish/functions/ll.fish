# Alias exa --long
function ll --wraps exa
    exa --all --long --tree --level=1 $argv --icons --group-directories-first --ignore-glob="node_modules"
end
