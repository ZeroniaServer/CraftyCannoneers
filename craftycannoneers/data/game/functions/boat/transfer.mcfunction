scoreboard players operation @s firetime = $temp firetime
execute if score $motionlock CmdData matches 1 run tag @s add motionlock
execute if score $onfire CmdData matches 1 run tag @s add OnFire
scoreboard players operation @s CannonID = $temp CannonID
scoreboard players operation @s cannonshot = $temp cannonshot
scoreboard players operation @s playerUUID = $temp playerUUID
scoreboard players operation @s PowerM = $temp PowerM
scoreboard players add @s PowerM 0
execute if score $recoil CmdData matches 1 run tag @s add Recoil
tag @s[scores={CannonID=1..},tag=!OnFire] add FireCannon
execute unless entity @s[tag=FireCannon] on passengers run scoreboard players operation @s[type=camel] PowerM = $temp PowerM
function game:boat/cannon/updategunpowder