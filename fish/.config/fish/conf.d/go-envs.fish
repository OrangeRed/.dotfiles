# Manually source envs if you don't want to relog.
#
# Note that if envs were not set in some higher process like the login shell then
# sourced variables will only be available in the current shell and its children
if status --is-login
    or test "$(status current-command)" = "source"

    # Skip if go binary isn't downloaded
    if ! type -q go
        return
    end

    # Add go to path
    set -gx GOPATH "$HOME/.local/share/go"
    if not string match -q -- "$GOPATH/bin" $PATH
      set PATH "$GOPATH/bin" $PATH
    end
end
