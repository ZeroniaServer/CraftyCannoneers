#> Pet the parrot
scoreboard players add @e[type=armor_stand,tag=Parrot,scores={CmdData=1..}] CmdData 1
scoreboard players reset @e[type=armor_stand,tag=Parrot,scores={CmdData=20..}] CmdData

execute as @a[scores={parrotpet=1..}] at @s unless entity @e[type=armor_stand,tag=Parrot,distance=..7] run scoreboard players reset @s parrotpet