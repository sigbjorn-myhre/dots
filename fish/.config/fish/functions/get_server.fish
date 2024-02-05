# Defined interactively
function get_server
sudo lsof -nP -i4TCP:$argv | grep LISTEN
end
