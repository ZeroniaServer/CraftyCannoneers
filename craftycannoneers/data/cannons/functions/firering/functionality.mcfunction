scoreboard players add @s CmdData 1

#> Ignite nearby gas bubbles/clouds
scoreboard players operation @e[type=armor_stand,tag=GasBubble,distance=..3] playerUUID = @s playerUUID
tag @e[type=armor_stand,tag=GasBubble,distance=..3] add GasIgnite
scoreboard players operation @e[type=marker,tag=GasCloud,distance=..3] playerUUID = @s playerUUID
tag @e[type=marker,tag=GasCloud,distance=..3] add GasIgnite

execute at @s[scores={CmdData=1}] run playsound fireshot master @a ~ ~ ~ 1 0.6

#> Set fire
execute at @s[predicate=!cannons:safezones/island] run function cannons:firering/setfire

#> Kill on island
kill @s[predicate=cannons:safezones/island]