execute store result score @s RNGscore run random value 0..10
tag @s[scores={RNGscore=1..6}] add RotLeft
tag @s[scores={RNGscore=7..}] add RotRight
scoreboard players remove @s[tag=RotRight] RNGscore 6
scoreboard players set $angle CmdData 3
execute store result storage craftycannoneers:firework angle int 1 run scoreboard players operation $angle CmdData *= @s RNGscore
execute at @s run function game:endfirework/rotate with storage craftycannoneers:firework angle
tag @s remove new3