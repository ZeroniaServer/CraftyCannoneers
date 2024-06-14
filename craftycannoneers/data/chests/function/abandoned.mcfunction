function chests:looted
data remove entity @s Items
execute on passengers run kill
kill