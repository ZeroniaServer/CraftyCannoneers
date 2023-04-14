fill ~5 ~-10 ~5 ~-5 ~20 ~-5 air replace fire
tp @s[tag=!StormEntity] ~ 500 ~
execute if entity @s[tag=!StormEntity,tag=!damaged] as @a[team=!Lobby,team=!Spectator,distance=..3] run damage @s 5 lightning_bolt at ~ ~ ~
tag @s[tag=!StormEntity,tag=!damaged] add damaged

#> Set off Blast Barrels/Cargo Traps
execute at @s as @e[type=villager,tag=CBTrap,distance=..3] on vehicle run tag @s add TrapExplode
execute at @s as @e[type=villager,tag=BarrelVillager,distance=..3] run function weapons:barrel/chainreact