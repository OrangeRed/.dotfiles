# Manually source these envs if you don't want to reboot
if type -q go
    or test "$(status current-command)" = "source"

    # Add go to path
    set -gx GOPATH "$HOME/.local/share/go"
    if not string match -q -- "$GOPATH/bin" $PATH
      set -gx PATH "$GOPATH/bin" $PATH
    end
end
