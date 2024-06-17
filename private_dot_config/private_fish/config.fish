fish_ssh_agent

set PATH "$HOME/.local/bin:$PATH"

# pnpm
set -gx PNPM_HOME "/home/carl/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
pyenv init - | source

# Set X Server Display
# https://nickymeuleman.netlify.app/blog/gui-on-wsl2-cypress
# set DISPLAY (cat /etc/resolv.conf | string match -r 'nameserver\s+\K.*' | head -n 1):0.0
# pushd /mnt/c/
# set DISPLAY (cmd.exe /C "powershell -Command \"(Get-NetIPAddress -InterfaceAlias 'vEthernet (WSL)' -AddressFamily IPv4).IPAddress + ':0.0'\"" | string trim)
# popd

sudo /etc/init.d/dbus start &> /dev/null

set -Ux fish_user_paths ~/bin $fish_user_paths
