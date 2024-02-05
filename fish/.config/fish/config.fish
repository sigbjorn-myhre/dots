set -gx PATH /Users/sig/.local/bin $PATH
set -gx PATH /opt/homebrew/bin $PATH

zoxide init --cmd j fish | source

source /opt/homebrew/opt/asdf/libexec/asdf.fish
