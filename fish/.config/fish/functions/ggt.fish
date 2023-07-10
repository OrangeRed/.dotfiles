# Alias git status
function ggt --wraps 'git status'
    git status $argv
end
