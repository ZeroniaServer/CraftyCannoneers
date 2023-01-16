scoreboard players add @s parrotpet 1

tellraw @s[scores={parrotpet=1}] {"translate":"easter_egg.parrot.1","italic":true,"color":"light_purple"}
tellraw @s[scores={parrotpet=10}] {"translate":"easter_egg.parrot.2","italic":true,"color":"light_purple"}
tellraw @s[scores={parrotpet=20}] {"translate":"easter_egg.parrot.3","italic":true,"color":"light_purple"}
tellraw @s[scores={parrotpet=30}] {"translate":"easter_egg.parrot.4","italic":true,"color":"light_purple"}
tellraw @s[scores={parrotpet=50}] {"translate":"easter_egg.parrot.5","italic":true,"color":"light_purple"}
advancement grant @s[scores={parrotpet=50}] only tutorial:eastereggs/parrot

execute at @e[type=armor_stand,tag=Parrot,limit=1] run playsound parrot master @a ~ ~ ~ 1 1
execute at @e[type=armor_stand,tag=Parrot,limit=1] run particle heart ~ ~0.3 ~ 0.2 0.2 0.2 0.1 4 normal @a[team=Lobby]
scoreboard players set @e[type=armor_stand,tag=Parrot] CmdData 1