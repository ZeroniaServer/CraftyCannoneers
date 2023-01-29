summon marker 70 -27 0 {Tags:["StormEventPicker","StormEntity"]}
scoreboard players set @e[type=marker,tag=StormEventPicker] RNGmax 2
execute as @e[type=marker,tag=StormEventPicker] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=marker,tag=StormEventPicker] run scoreboard players operation @s RNGscore %= @s RNGmax

execute as @e[type=marker,tag=StormEventPicker,scores={RNGscore=0}] run function game:modifiers/seastorms/lightning
execute as @e[type=marker,tag=StormEventPicker,scores={RNGscore=1}] run function game:modifiers/seastorms/thunder

kill @e[type=marker,tag=StormEventPicker]

scoreboard players set $StormTime CmdData 91

say event picked