tag @s add IgniteBarrel
execute if score @s CmdData matches 1.. unless score @s eyeclick matches 1.. run tag @s add fuseAffectable
scoreboard players set @s[tag=fuseAffectable] eyeclick 92
scoreboard players operation @s[tag=fuseAffectable] eyeclick -= $dist CmdData
tag @s remove fuseAffectable
execute if score @s CmdData matches 1.. run scoreboard players operation @s playerUUID = $tempuuid playerUUID
execute if score @s CmdData matches 1.. run data modify entity @s CustomName set from storage craftycannoneers:temp CustomName