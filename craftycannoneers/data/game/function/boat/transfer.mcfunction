scoreboard players operation @s firetime = $temp firetime
execute if score $motionlock CmdData matches 1 run tag @s add motionlock
execute if score $onfire CmdData matches 1 run tag @s add OnFire
scoreboard players operation @s CannonID = $temp CannonID
scoreboard players operation @s cannonshot = $temp cannonshot
scoreboard players operation @s playerUUID = $temp playerUUID
scoreboard players operation @s PowerM = $temp PowerM
scoreboard players add @s PowerM 0
execute if score $recoil CmdData matches 1 run tag @s add Recoil
execute on passengers run data modify entity @s[tag=BoatCannonBarrel] transformation set from storage craftycannoneeers:boat transformation
execute on passengers run data merge entity @s[tag=BoatCannonBarrel] {start_interpolation:0,interpolation_duration:0}
execute if score $tipped CmdData matches 1 unless score $onfire CmdData matches 1 run function game:boat/cannon/tipcannon
execute if score $tipped CmdData matches 1 if score $onfire CmdData matches 1 run function game:boat/cannon/tipfire
tag @s[scores={CannonID=1..}] add FireCannon
execute unless entity @s[tag=FireCannon] on passengers run scoreboard players operation @s[type=camel] PowerM = $temp PowerM
function game:boat/cannon/updategunpowder