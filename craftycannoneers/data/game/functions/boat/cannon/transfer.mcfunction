scoreboard players operation @s CannonID = $temp CannonID
scoreboard players operation @s cannonshot = $temp cannonshot
scoreboard players operation @s playerUUID = $temp playerUUID
scoreboard players operation @s PowerM = $temp PowerM
scoreboard players add @s PowerM 0
tag @s[scores={CannonID=1..}] add FireCannon
execute unless entity @s[tag=FireCannon] on passengers run scoreboard players operation @s[type=camel] PowerM = $temp PowerM
function game:boat/cannon/transfergunpowder