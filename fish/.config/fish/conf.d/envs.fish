# Manually source envs if you don't want to relog.
#
# Note that if envs were not set in some higher process like the login shell then
# sourced variables will only be available in the current shell and its children
if status --is-login
    or test "$(status current-command)" = "source"

    set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"

    set -gx EXA_COLORS (string join "" \
        "da=38;5;245:" \
        "di=38;5;245:" \
        "*.*sh=32:" \
        "*.*css*=38;5;159:" \
        "*.*js*=33:" \
        "*.ts*=34:" \
        "*.yml=31:" \
        "*.yaml=31:" \
        "*.astro=31")

    set -gx FZF_DEFAULT_OPTS (string join "" \
        " -i --cycle --height '95%' --layout reverse --prompt '  '" \
        " --color=bg+:#313244,bg:#1e1e2e,spinner:#f38ba8,hl:#f38ba8" \
        " --color=fg:#cdd6f4,header:#f38ba8,info:yellow,pointer:#f38ba8" \
        " --color=marker:#f38ba8,fg+:#cdd6f4,prompt:#f38ba8,hl+:#f38ba8")
end
