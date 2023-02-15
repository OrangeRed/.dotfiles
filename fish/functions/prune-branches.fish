function prune-branches -a arg1 --description "clean branches with deleted remote"
  if test -z $arg1
    or test $arg1 = "-d"
    set del_flag "-d"
  else if test $arg1 = "-D"
    set del_flag "-D"
  else 
    echo $arg1 "is not a valid argument"
    return
  end
  
  git branch -vv | awk '/: gone]/{print $1}' | xargs git branch $del_flag
end
