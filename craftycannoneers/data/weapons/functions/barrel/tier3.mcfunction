#> TODO: Copy-paste blast bomb slime stuff and make it massive.




# Explosive effects
playsound blastbarrelexplode master @a ~ ~ ~ 5 1


# Chain reaction
tag @e[type=villager,tag=BlastBarrel,distance=..8] add IgniteBarrel
tag @e[type=armor_stand,tag=BlastBarrel,distance=..8] add IgniteBarrel
scoreboard players set @e[type=armor_stand,tag=BlastBarrel,distance=..7] eyeclick 92

kill @s