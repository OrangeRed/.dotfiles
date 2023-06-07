## EXA COLORS
set -Ux EXA_COLORS "\
da=38;5;245:\
di=38;5;245:\
*.*sh=32:\
*.*css*=38;5;159:\
*.*js*=33:\
*.ts*=34:\
*.yml=31:\
*.yaml=31:\
*.astro=31:"
# END EXA COLORS

## FZF DEFAULT OPTS
set -Ux FZF_DEFAULT_OPTS "\
-i --cycle --height "95%" \
--layout reverse --no-scrollbar --prompt '  ' \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f38ba8,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:yellow,pointer:#f38ba8 \
--color=marker:#f38ba8,fg+:#cdd6f4,prompt:#f38ba8,hl+:#f38ba8"
# END FZF DEFAULT OPTS