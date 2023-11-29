# Alias exa
function ls --wraps exa
    eza $argv --icons --group-directories-first --ignore-glob="node_modules|.git"
end
