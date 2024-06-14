#> Fire Cannon
tag @s[tag=!FireCannon,scores={CmdData=1..}] add FireCannon
execute at @s[tag=FireCannon] run function cannons:firecannon

#> Claim Cannon
function cannons:cannonclaim

#> Cannon on fire
execute at @s[tag=OnFire] run function cannons:firering/cannononfire