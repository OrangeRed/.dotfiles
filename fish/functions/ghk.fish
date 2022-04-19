function ghk --wraps=clear --description 'alias git checkout'
  if git show-ref -q --heads $argv
    git checkout $argv;
  else
    git checkout -b $argv; 
  end
end
