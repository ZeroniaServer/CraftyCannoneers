#> TODO: Copy-paste blast bomb slime stuff.




# Explosive effects
playsound blastbarrelexplode master @a ~ ~ ~ 5 1.6


# Chain reaction
tag @e[type=villager,tag=BlastBarrel,distance=..6] add IgniteBarrel
tag @e[type=armor_stand,tag=BlastBarrel,distance=..6] add IgniteBarrel
scoreboard players set @e[type=armor_stand,tag=BlastBarrel,distance=..4] eyeclick 92

kill @s