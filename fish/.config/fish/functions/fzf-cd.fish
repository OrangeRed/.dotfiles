function 'fzf-cd' --wraps fzf --description 'fzf change directory wrapper'
  cd $(
    fd --type directory --maxdepth 3 --hidden . ~ |
    sort -V |
    fzf $argv
  );
end
