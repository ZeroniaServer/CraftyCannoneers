function cannons:bounceblast/spawn4slime
function cannons:bounceblast/spawn4slime
function cannons:bounceblast/spawn4slime
function cannons:bounceblast/spawn4slime
function cannons:bounceblast/spawn4slime

data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute as @e[type=slime,tag=BounceSlime,tag=!HasName] run data modify entity @s CustomName set from storage craftycannoneers:temp CustomName
data remove storage craftycannoneers:temp CustomName
tag @e[type=slime,tag=BounceSlime,tag=!HasName] add HasName

tag @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..5] add UtilKilled
execute store result score @a[tag=UtilKilled,distance=..5] KillerUUID run scoreboard players get @s playerUUID