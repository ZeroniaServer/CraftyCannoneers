gamerule doFireTick false

summon marker 39 -40 -68 {Tags:["FireRemover","Purple"]}
summon marker 34 -40 43 {Tags:["FireRemover","Orange"]}

tag @s add self
scoreboard players operation @e[type=marker,tag=FireRemover,tag=!HasUUID] playerUUID = @s playerUUID
execute as @e[type=marker,tag=FireRemover,tag=!HasUUID] at @s run data modify entity @s CustomName set from entity @e[type=marker,tag=self,limit=1,sort=nearest] CustomName
tag @e[type=marker,tag=FireRemover,tag=!HasUUID] add HasUUID
tag @s remove self

execute as @e[type=marker,tag=FireRemover] at @s run function cannons:extinguishloop
gamerule doFireTick true