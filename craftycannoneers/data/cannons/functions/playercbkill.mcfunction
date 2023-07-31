playsound playerbreak master @a ~ ~ ~ 1 1.3
particle block barrel ~ ~ ~ 0 0 0 1 60 force
particle cloud ~ ~ ~ 0.4 0.4 0.4 0.1 4 force
execute on passengers on passengers on passengers run kill
execute on passengers on passengers run function arenaclear:kill
execute on passengers run kill @s
kill @s