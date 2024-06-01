# Alias exa --long
function ll --wraps eza
    eza --all --long --tree --level=1 $argv --icons --group-directories-first --ignore-glob="node_modules"
end
