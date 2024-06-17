set PATH "$HOME/.local/bin:$PATH"

# pnpm
set -gx PNPM_HOME "/home/carl/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# Pyenv
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
pyenv init - | source

# Add ~/bin to path
set -Ux fish_user_paths ~/bin $fish_user_paths

# Disable welcome message
set fish_greeting

