scoreboard players add @s parrotpet 1

tellraw @s[scores={parrotpet=1}] {"text":"The parrot thanks you for your kindness...","italic":true,"color":"light_purple"}
tellraw @s[scores={parrotpet=10}] {"text":"The parrot appreciates you...","italic":true,"color":"light_purple"}
tellraw @s[scores={parrotpet=20}] {"text":"The parrot would like to be your best friend...","italic":true,"color":"light_purple"}
tellraw @s[scores={parrotpet=30}] {"text":"The parrot wishes for this moment to last forever...","italic":true,"color":"light_purple"}
tellraw @s[scores={parrotpet=50}] {"text":"The parrot loves you.","italic":true,"color":"light_purple"}
advancement grant @s[scores={parrotpet=50}] only tutorial:eastereggs/parrot

execute at @e[type=armor_stand,tag=Parrot,limit=1] run playsound parrot master @a ~ ~ ~ 1 1
execute at @e[type=armor_stand,tag=Parrot,limit=1] run particle heart ~ ~0.3 ~ 0.2 0.2 0.2 0.1 4 normal @a[team=Lobby]
scoreboard players set @e[type=armor_stand,tag=Parrot] CmdData 1