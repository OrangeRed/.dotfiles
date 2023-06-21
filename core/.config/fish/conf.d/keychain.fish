# Add all keys of ~/.ssh/id* to the ssh keychain
if status is-interactive
    set -l keys (find ~/.ssh/ -type f \( -name "id*" -and -not -name "*.*" \)) 
    
    keychain -q --ignore-missing --eval $keys ~/.ssh/port_key | source
end
