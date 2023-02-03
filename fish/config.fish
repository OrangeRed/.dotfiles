if status is-interactive
    # Commands to run in interactive sessions can go here
end


# Disable Welcome Message
set fish_greeting


# EXA COLORS
set -Ux EXA_COLORS (echo "
da=38;5;245:
di=38;5;245:
*.*sh=32:
*.*css*=38;5;159:
*.js*=33:
*.ts*=34:
*.yml=31
" | tr -d '\n')
# END EXA COLORS
