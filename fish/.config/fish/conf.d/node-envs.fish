# Manually source these envs if you don't want to reboot
if functions -q nvm
    or test "$(status current-command)" = "source"

    set -gx nvm_default_version latest
    set -gx nvm_default_packages pnpm

    # Add pnpm to path
    set -gx PNPM_HOME "$HOME/.local/share/pnpm"
    if not string match -q -- $PNPM_HOME $PATH
      set -gx PATH "$PNPM_HOME" $PATH
    end
end
