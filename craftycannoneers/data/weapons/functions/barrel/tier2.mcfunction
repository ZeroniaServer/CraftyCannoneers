#> TODO: Copy-paste blast bomb slime stuff and make it slightly bigger.




# Explosive effects
playsound blastbarrelexplode master @a ~ ~ ~ 5 1.4


# Chain reaction
tag @e[type=villager,tag=BlastBarrel,distance=..6] add IgniteBarrel
tag @e[type=armor_stand,tag=BlastBarrel,distance=..6] add IgniteBarrel
scoreboard players set @e[type=armor_stand,tag=BlastBarrel,distance=..5] eyeclick 92

kill @s