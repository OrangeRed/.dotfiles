# Manually source envs if you don't want to relog.
#
# Note that if envs were not set in some higher process like the login shell then
# sourced variables will only be available in the current shell and its children
if status --is-login
    or test "$(status current-command)" = "source"

    # Skip if nvm isn't downloaded
    if ! functions -q nvm
        return
    end

    set -gx nvm_default_version latest
    set -gx nvm_default_packages pnpm

    # Add pnpm to path
    set -gx PNPM_HOME "$HOME/.local/share/pnpm"
    if not string match -q -- $PNPM_HOME $PATH
      set PATH "$PNPM_HOME" $PATH
    end
end
