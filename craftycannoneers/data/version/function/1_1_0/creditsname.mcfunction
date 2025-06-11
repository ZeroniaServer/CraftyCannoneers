tag @s add CreditsName
data modify entity @s CustomName set from entity @e[type=armor_stand,tag=self,limit=1] CustomName
data merge entity @s {Duration:200000000,CustomNameVisible:1b,Radius:0f,custom_particle:{type:"block",block_state:"minecraft:air"}}