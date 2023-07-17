fill ~5 ~-10 ~5 ~-5 ~20 ~-5 air replace fire
tp @s[tag=!StormEntity] ~ 500 ~
execute if entity @s[tag=!StormEntity,tag=!damaged] as @a[team=!Lobby,team=!Spectator,distance=..3] run damage @s 5 lightning_bolt at ~ ~ ~
tag @s[tag=!StormEntity,tag=!damaged] add damaged

#> Set off Blast Barrels/Cargo Traps
execute at @s as @e[type=husk,tag=CBTrap,distance=..3] on vehicle run tag @s add TrapExplode
scoreboard players set $noname CmdData 1
execute at @s as @e[type=bat,tag=BlastBarrel,distance=..3] run function weapons:barrel/chainreact
scoreboard players set $noname CmdData 0

#> Break nearby Cargo Barrels
execute at @s as @e[type=item_display,tag=CBDisplay,tag=!CBTrapDisplay,distance=..3] at @s run function game:modifiers/lostcargo/spillbarrel

#> Break nearby Crab Traps
execute at @s as @e[type=item_display,tag=CrabTrap,distance=..3] at @s run function weapons:crabtrap/break

#> Break nearby Boats
execute at @s run kill @e[type=boat,tag=Sailing,distance=..3]