tag @s add CreditsName
data modify entity @s CustomName set from entity @e[type=armor_stand,tag=self,limit=1] CustomName
data merge entity @s {Duration:200000000,CustomNameVisible:1b}