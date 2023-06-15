scoreboard players add @s CmdData 1
item replace entity @s[scores={CmdData=1}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:88}
item replace entity @s[scores={CmdData=3}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:89}
item replace entity @s[scores={CmdData=5}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:90}
item replace entity @s[scores={CmdData=7}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:89}
item replace entity @s[scores={CmdData=9}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:88}
#TODO Placeholder sound probably
execute at @s[scores={CmdData=1}] run playsound minecraft:entity.evoker_fangs.attack master @a ~ ~ ~ 0.5 1.1

#> Set off Blast Barrels/Cargo Traps
execute at @s[scores={CmdData=9}] positioned ^ ^ ^1 as @e[type=villager,tag=CBTrap,distance=..2] on vehicle run tag @s add TrapExplode
execute at @s[scores={CmdData=9}] positioned ^ ^ ^1 as @e[type=villager,tag=BarrelVillager,distance=..2] run function weapons:barrel/chainreact

item replace entity @s[scores={CmdData=11}] armor.head with diamond_hoe{Unbreakable:1b,CustomModelData:87}

#> Break Cargo Barrels (protects player)
execute at @s[scores={CmdData=9}] positioned ^ ^ ^1 store success score $bitcargo CmdData if entity @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,limit=1,distance=..2]
execute if score $bitcargo CmdData matches 1 at @s[scores={CmdData=9}] positioned ^ ^ ^1 as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,limit=1,sort=nearest,distance=..2] at @s run function game:modifiers/lostcargo/spillbarrel

#> Break boat
execute at @s[scores={CmdData=9}] positioned ^ ^ ^1 run kill @e[type=boat,tag=BoatBoat,limit=1,sort=nearest,distance=..2]

#> Bite player
execute unless score $bitcargo CmdData matches 1 at @s[scores={CmdData=9}] positioned ^ ^ ^1 run effect give @a[team=!Lobby,team=!Spectator,gamemode=adventure,distance=..2,limit=1,sort=nearest] instant_damage 1 1 true
execute at @s[scores={CmdData=9}] if predicate game:tooth_chance positioned ^ ^ ^1 if entity @a[distance=..2,limit=1] at @s run function game:modifiers/sharks/losttooth
execute at @s[scores={CmdData=9}] run particle bubble ^ ^ ^2 0 0 0 0.1 10 force
tag @s[scores={CmdData=45..}] remove Attacking