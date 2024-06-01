# Alias exa
function ls --wraps eza
    eza $argv --icons --group-directories-first --ignore-glob="node_modules|.git"
end
