# fzf change directory wrapper
function fzf-cd --wraps fzf
    set -l directory (
      fd --type directory --maxdepth 3 --hidden . ~ |
      sort -V |
      fzf $argv
    )

    if test -n "$directory"
        cd $directory
    end

    commandline -f repaint
    clear
end
