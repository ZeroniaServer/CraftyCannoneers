execute as @e[type=endermite,tag=CrabVehicle,tag=!dismounted,distance=..7] run function game:modifiers/crabs/dismount
execute as @e[type=cat,tag=CrabVehicle,tag=!dismounted,distance=..7] run function game:modifiers/crabs/dismount

#> Summon 20 slimes
function game:modifiers/lostcargo/summon4slime
function game:modifiers/lostcargo/summon4slime
function game:modifiers/lostcargo/summon4slime
function game:modifiers/lostcargo/summon4slime
function game:modifiers/lostcargo/summon4slime

#> Copy name
data modify storage craftycannoneers:temp CustomName set from entity @s CustomName
execute as @e[type=slime,tag=BlastSlime,tag=!HasName] run data modify entity @s CustomName set from storage craftycannoneers:temp CustomName
tag @e[type=slime,tag=BlastSlime,tag=!HasName] add HasName

#> Hurt players in damage zones
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..7] run function game:modifiers/lostcargo/trapdamage