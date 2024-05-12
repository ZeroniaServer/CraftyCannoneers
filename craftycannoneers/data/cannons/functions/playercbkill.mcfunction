playsound playerbreak master @a ~ ~ ~ 1 1.3
particle block{block_state:"barrel"} ~ ~ ~ 0 0 0 1 60 force @a[team=!Lobby]
particle cloud ~ ~ ~ 0.4 0.4 0.4 0.1 4 force @a[team=!Lobby]
execute on passengers on passengers on passengers run kill
execute on passengers on passengers on origin run kill @s[type=marker,tag=cbmarker]
execute on passengers on passengers run function arenaclear:kill
execute on passengers on origin run kill @s[type=marker,tag=cbmarker]
execute on passengers run kill
kill