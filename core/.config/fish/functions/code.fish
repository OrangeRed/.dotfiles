# Alias codium
function code --wraps 'codium'
  if command -q codium
    codium $argv
  else
    echo "VSCodium is not installed"
  end
end