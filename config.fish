set fish_greeting ""

# Paths
set PATH $HOME/.rvm/bin $PATH
set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/stripe/henson/bin $PATH
set PATH $HOME/stripe/password-vault/bin $PATH
set PATH $HOME/stripe/space-commander/bin $PATH
set PATH $HOME/bin $PATH

# Editors
set -x EDITOR "/usr/bin/vim"
set -x VISUAL "/usr/bin/vim"

# rbenv
if type rbenv > /dev/null
  set -gx RBENV_ROOT $HOME/.rbenv
  . (rbenv init -|psub)
end

if status --is-interactive
  # Keybinds
  bind \c\[1\;5C forward-word
  bind \c\[1\;5D backward-word

  # Load SSH Keys
  # eval (keychain --eval --quiet -Q id_rsa | tr \n \;)
end
