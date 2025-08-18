if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting

# Hotkeys
bind \cf fzf-cd

# pnpm
set -gx PNPM_HOME "/home/dmitriy/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
