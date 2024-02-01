scoreboard players add @s CmdData 1
scoreboard players set @s[scores={CmdData=..29},tag=Instant] CmdData 30
execute if score @s CmdData matches 1 run function game:modifiers/seastorms/lightningcheck
execute if score @s CmdData matches 1..30 run particle minecraft:electric_spark ~ ~ ~ 1 0 1 0.1 10 force @a[team=!Lobby]
execute if score @s[tag=!Instant] CmdData matches 30 run summon lightning_bolt ~ ~ ~ {Tags:["StormEntity"]}
execute if score @s[tag=Instant] CmdData matches 30 run summon lightning_bolt ~ ~ ~

tag @s[predicate=cannons:safezones/island] add InSafezone
tag @s[predicate=cannons:safezones/ships] add InSafezone
tag @s[predicate=cannons:safezones/lobby] add InSafezone
execute at @s[tag=!InSafezone] if entity @e[type=item_display,tag=cannon,distance=..2] run tag @s add InSafezone
execute at @s[tag=!InSafezone] if entity @e[type=interaction,tag=cannon,distance=..2] run tag @s add InSafezone
execute if score @s[tag=Instant,tag=!InSafezone] CmdData matches 30 run summon marker ~ ~ ~ {Tags:["ImpactMarker","Power2","lightningstrike"]}

execute if score @s CmdData matches 30 run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~10 ~ 20 0
execute if score @s CmdData matches 30 run particle flash ~ ~ ~ 0 0 0 0 3 force @a[team=!Lobby]
execute if score @s CmdData matches 30 run particle minecraft:firework ~ ~20 ~ 0 30 0 0.1 100

#> Set off Blast Barrels/Cargo Traps
execute if score @s CmdData matches 30 as @e[type=husk,tag=CBTrap,distance=..3] on vehicle run tag @s add TrapExplode
scoreboard players set $noname CmdData 1
execute if score @s CmdData matches 30 as @e[type=bat,tag=BlastBarrel,distance=..3] run function weapons:barrel/chainreact
scoreboard players set $noname CmdData 0

#> Break nearby Cargo Barrels
execute if score @s CmdData matches 30 as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..3] at @s run function game:modifiers/lostcargo/spillbarrel

#> Break nearby Crab Traps
execute if score @s CmdData matches 30 as @e[type=item_display,tag=CrabTrap,distance=..3] at @s run function weapons:crabtrap/break

#> Break nearby Boats
execute if score @s CmdData matches 30 run kill @e[type=boat,tag=Sailing,distance=..3]

kill @s[scores={CmdData=30..}]