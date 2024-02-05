# Defined in /var/folders/54/gy_mrf613wg0qgxxbnn49zy80000gn/T//fish.HXvuCs/counting.fish @ line 2
function counting
  set num 0
  while true
    echo $num
    sleep 0.01
    set num (math $num + 1)
  end
end
