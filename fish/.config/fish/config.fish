set -gx XDG_CONFIG_HOME $HOME/.config
set -gx EDITOR hx

fish_add_path $HOME/.local/bin/

fzf --fish | source

zoxide init --cmd j fish | source

source /opt/homebrew/opt/asdf/libexec/asdf.fish
