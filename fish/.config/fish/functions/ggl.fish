# Alias git pull
function ggl --wraps='git pull'
  git pull $argv; 
end
