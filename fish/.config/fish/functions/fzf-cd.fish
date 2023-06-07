# fzf change directory wrapper
function fzf-cd --wraps fzf
  cd $(
    fd --type directory --maxdepth 3 --hidden . ~ |
    sort -V |
    fzf $argv
  );
end
