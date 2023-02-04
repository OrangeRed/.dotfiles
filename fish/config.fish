if status is-interactive
    # Commands to run in interactive sessions can go here
end


## Disable Welcome Message
set fish_greeting
#


## env variables that shouldn't be shared
# set -a ENV_FILES /path/to/file
# ...
for file in $ENV_FILES
  for line in (cat $file | grep -v '^#' | grep -v '^\s*$')
    set item (string replace export "" $line | string split -m 1 '=')
    set -gx (string trim $item[1]) (string trim $item[2])
  end
end
#


## EXA COLORS
# consider loading this on session start instead
set -gx EXA_COLORS (echo "
da=38;5;245:
di=38;5;245:
*.*sh=32:
*.*css*=38;5;159:
*.*js*=33:
*.ts*=34:
*.yml=31:
*.yaml=31:
*.astro=31:
" | tr -d '\n')
# END EXA COLORS
