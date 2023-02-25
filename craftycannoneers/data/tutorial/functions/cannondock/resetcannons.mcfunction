kill @e[type=armor_stand,tag=cannon,tag=Tutorial]
execute as @e[type=villager,tag=cannon,tag=Tutorial] at @s run function arenaclear:kill
kill @e[type=marker,tag=villager,tag=Tutorial]

execute positioned -283 -24 -26 run function cannons:spawntutorial
execute positioned -283 -24 -37 run function cannons:spawntutorial
execute positioned -283 -24 -48 run function cannons:spawntutorial
execute positioned -282 -19 -62 run function cannons:spawntutorial
execute positioned -282 -19 -70 run function cannons:spawntutorial
execute positioned -283 -24 -70 run function cannons:spawntutorial
execute positioned -283 -24 -62 run function cannons:spawntutorial