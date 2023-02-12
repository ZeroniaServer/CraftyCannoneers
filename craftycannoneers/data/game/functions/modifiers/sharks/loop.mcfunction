execute as @e[type=drowned,tag=SharkEntity,tag=Pos1] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..12] positioned 57 -32 34 unless entity @s[distance=..10] run tp @s 57 -40 34
execute as @e[type=drowned,tag=SharkEntity,tag=Pos2] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..12] positioned 68 -32 34 unless entity @s[distance=..10] run tp @s 68 -40 34
execute as @e[type=drowned,tag=SharkEntity,tag=Pos3] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..12] positioned 79 -32 34 unless entity @s[distance=..10] run tp @s 79 -40 34

execute as @e[type=drowned,tag=SharkEntity,tag=Pos4] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..12] positioned 83 -40 -34 unless entity @s[distance=..10] run tp @s 83 -40 -34
execute as @e[type=drowned,tag=SharkEntity,tag=Pos5] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..12] positioned 72 -40 -34 unless entity @s[distance=..10] run tp @s 72 -40 -34
execute as @e[type=drowned,tag=SharkEntity,tag=Pos6] at @s unless entity @a[team=!Lobby,team=!Spectator,distance=..12] positioned 61 -40 -34 unless entity @s[distance=..10] run tp @s 61 -40 -34

execute as @e[type=drowned,tag=SharkEntity] at @s unless entity @a[team=!Lobby,team=!Spectator,predicate=game:inwater,distance=..12] if block ~ ~5 ~ water run effect give @s slow_falling 1 100 true
execute as @e[type=drowned,tag=SharkEntity] at @s unless entity @a[team=!Lobby,team=!Spectator,predicate=game:inwater,distance=..12] if block ~ ~5 ~ water run tp @s ~ ~0.1 ~


#> Bite players
execute as @e[type=drowned,tag=SharkEntity,tag=!Attacking] at @s unless entity @e[type=drowned,tag=SharkEntity,tag=Attacking,scores={CmdData=..6},distance=..5] if entity @a[team=!Lobby,team=!Spectator,predicate=game:inwater,distance=..3] run tag @s add Attacking
scoreboard players add @e[type=drowned,tag=SharkEntity,tag=Attacking] CmdData 1
item replace entity @e[type=drowned,tag=SharkEntity,tag=Attacking,scores={CmdData=1}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:88}
item replace entity @e[type=drowned,tag=SharkEntity,tag=Attacking,scores={CmdData=3}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:89}
item replace entity @e[type=drowned,tag=SharkEntity,tag=Attacking,scores={CmdData=5}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:90}
item replace entity @e[type=drowned,tag=SharkEntity,tag=Attacking,scores={CmdData=7}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:89}
item replace entity @e[type=drowned,tag=SharkEntity,tag=Attacking,scores={CmdData=9}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:88}
#Placeholder sound probably
execute as @e[type=drowned,tag=SharkEntity,tag=Attacking,scores={CmdData=1}] at @s run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 0.5 1.1
item replace entity @e[type=drowned,tag=SharkEntity,tag=Attacking,scores={CmdData=11}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:87}
execute as @e[type=drowned,tag=SharkEntity,tag=Attacking,scores={CmdData=9}] at @s positioned ^ ^ ^1.5 run effect give @a[distance=..1.5,limit=1,sort=nearest] instant_damage 1 1 true
execute as @e[type=drowned,tag=SharkEntity,tag=Attacking,scores={CmdData=9}] at @s if entity @s[predicate=game:tooth_chance] positioned ^ ^ ^1.5 if entity @a[distance=..1.5,limit=1,sort=nearest] run tag @s add LostTooth
#Placeholder sound probably
execute as @e[type=drowned,tag=SharkEntity,tag=LostTooth] at @s run playsound minecraft:enchant.thorns.hit master @a ~ ~ ~ 1 0.9
execute as @e[type=drowned,tag=SharkEntity,tag=LostTooth] at @s run loot spawn ^ ^ ^0.5 loot weapons:shark_tooth
tag @e[type=drowned,tag=LostTooth] remove LostTooth
execute as @e[type=drowned,tag=SharkEntity,tag=Attacking,scores={CmdData=9}] at @s run particle bubble ^ ^ ^2 0 0 0 0.1 10 force
execute as @e[type=drowned,tag=SharkEntity,tag=Attacking,scores={CmdData=45..}] run tag @s remove Attacking
execute as @e[type=drowned,tag=SharkEntity,tag=!Attacking,scores={CmdData=1..}] at @s run scoreboard players reset @s CmdData 