scoreboard players add @s CmdData 1
item replace entity @s[scores={CmdData=1}] armor.head with diamond_hoe[unbreakable={},custom_model_data=88]
item replace entity @s[scores={CmdData=3}] armor.head with diamond_hoe[unbreakable={},custom_model_data=89]
item replace entity @s[scores={CmdData=5}] armor.head with diamond_hoe[unbreakable={},custom_model_data=90]
item replace entity @s[scores={CmdData=7}] armor.head with diamond_hoe[unbreakable={},custom_model_data=89]
item replace entity @s[scores={CmdData=9}] armor.head with diamond_hoe[unbreakable={},custom_model_data=88]

execute at @s[scores={CmdData=1}] run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 0.5 1.1

#> Set off Blast Barrels/Cargo Traps
execute at @s[scores={CmdData=9}] positioned ^ ^ ^1 as @e[type=husk,tag=CBTrap,distance=..2] on vehicle run function game:modifiers/lostcargo/sharkbite
scoreboard players set $shark CmdData 1
execute at @s[scores={CmdData=9}] positioned ^ ^ ^1 as @e[type=bat,tag=BlastBarrel,distance=..2] run function weapons:barrel/chainreact
scoreboard players set $shark CmdData 0

#> Break Cargo Barrels (protects player)
execute at @s[scores={CmdData=9}] positioned ^ ^ ^1 store success score $bitcargo CmdData if entity @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,limit=1,distance=..2]
execute if score $bitcargo CmdData matches 1 at @s[scores={CmdData=9}] positioned ^ ^ ^1 as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,limit=1,sort=nearest,distance=..2] at @s run function game:modifiers/lostcargo/spillbarrel

#> Break nearby Crab Traps
execute at @s[scores={CmdData=9}] positioned ^ ^ ^1 as @e[type=item_display,tag=CrabTrap,distance=..2] at @s run function weapons:crabtrap/break

#> Break boat
execute at @s[scores={CmdData=9}] positioned ^ ^ ^1 run kill @e[type=boat,tag=BoatBoat,limit=1,sort=nearest,distance=..2]

#> Bite player
execute unless score $bitcargo CmdData matches 1 at @s[scores={CmdData=9}] positioned ^ ^ ^1 run effect give @a[team=!Lobby,team=!Spectator,tag=SharkTarget,gamemode=adventure,distance=..2,limit=1,sort=nearest] instant_damage 1 1 true
execute at @s[scores={CmdData=9}] if predicate game:tooth_chance positioned ^ ^ ^1 if entity @a[team=!Lobby,team=!Spectator,tag=SharkTarget,distance=..2,limit=1] at @s run function game:modifiers/sharks/losttooth
execute at @s[scores={CmdData=9}] run particle bubble ^ ^ ^2 0 0 0 0.1 10 force @a[team=!Lobby]
item replace entity @s[scores={CmdData=11}] armor.head with diamond_hoe[unbreakable={},custom_model_data=87]

execute at @s[scores={CmdData=9}] store result score @s sharkcooldown run random value 1..60

scoreboard players set @s[scores={CmdData=9}] crabmode 100

tag @s[scores={CmdData=9}] add OnCooldown
tag @s[scores={CmdData=45..}] remove Attacking