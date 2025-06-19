function ls --wraps=eza
    command eza -lah --icons --group-directories-first --no-user $argv
end
