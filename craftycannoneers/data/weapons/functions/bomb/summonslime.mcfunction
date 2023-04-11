function weapons:bomb/summon4slime
function weapons:bomb/summon4slime
function weapons:bomb/summon4slime
function weapons:bomb/summon4slime
function weapons:bomb/summon4slime

data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute as @e[type=slime,tag=BlastSlime,tag=!HasName] run data modify entity @s CustomName set from storage craftycannoneers:temp CustomName
tag @e[type=slime,tag=BlastSlime,tag=!HasName] add HasName

tag @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..6] add UtilKilled
execute store result score @a[tag=UtilKilled,distance=..6] KillerUUID run scoreboard players get @s playerUUID