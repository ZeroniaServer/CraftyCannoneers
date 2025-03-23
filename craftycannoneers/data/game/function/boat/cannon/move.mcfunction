#> Score resets
scoreboard players set $rightdir CmdData 0
scoreboard players set $response CmdData 1
scoreboard players add @s PowerM 0

#> Sailing functionality
execute if entity @s[tag=!Sailing,tag=!OnFire,tag=tipped] run function game:boat/cannon/untipcannon
execute if entity @s[tag=Sailing] run function game:boat/cannon/sailing

#> Display functions
execute rotated as @s on passengers positioned as @s[type=item_display,tag=BoatCannonDisplay] run function game:boat/display

#> Make sure Cannon doesnt tip when first mounted
execute if entity @s[tag=!Sailing,tag=!fakestill] run function game:boat/cannon/fakestill

#> Permababy camel
execute on passengers if entity @s[type=camel] run function everytick:permababy
execute on passengers on passengers if entity @s[type=camel] run function everytick:permababy

#> Make passengers invulnerable unless an arrows nearby
execute at @s store success score $arrownearby CmdData if entity @e[type=arrow,limit=1,distance=..6]
execute if score $arrownearby CmdData matches 1 if entity @s[tag=invul] on passengers run function game:boat/cannon/noninvul
execute if score $arrownearby CmdData matches 1 run tag @s remove invul
execute if score $arrownearby CmdData matches 0 if entity @s[tag=!invul] on passengers run function game:boat/cannon/invul
execute if score $arrownearby CmdData matches 0 run tag @s add invul

#> Fire Cannon
execute at @s[tag=FireCannon] run function game:boat/cannon/firecannon

#> Cannon on fire
execute at @s[tag=OnFire] run function game:boat/cannon/cannononfire