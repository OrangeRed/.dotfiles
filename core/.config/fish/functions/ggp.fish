# Alias git push
function ggp --wraps 'git push'
    git push $argv
end
