# Alias git first push
function gfp --wraps 'git push'
    set -l branch (git rev-parse --abbrev-ref HEAD)
    echo -n "$branch ~~> feature/EP-$branch"
    git push -u origin "$branch:feature/EP-$branch"
end
