set fish_greeting ""

# Paths
set PATH $HOME/bin $PATH
set PATH $HOME/.rvm/bin $PATH

# Editors
set -x EDITOR "/usr/bin/vim"
set -x VISUAL "/usr/bin/vim"

if status --is-interactive
  # Keybinds
  bind \c\[1\;5C forward-word
  bind \c\[1\;5D backward-word

  # Load SSH Keys
  eval (keychain --eval --quiet -Q id_rsa | tr \n \;)
end
