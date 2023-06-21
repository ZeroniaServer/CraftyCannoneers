scoreboard players operation $currentcheck playerUUID = @s playerUUID

execute as @e[type=item_display,tag=CannonDisp,tag=!Owned,distance=..3,limit=1,sort=nearest] if score @s playerUUID matches 0 run tag @s add NoOwner
execute as @e[type=item_display,tag=CannonDisp,tag=!NoOwner,distance=..3,limit=1,sort=nearest] if score @s playerUUID = $currentcheck playerUUID run tag @s add Owned

execute as @e[type=item_display,tag=Owned,limit=1,sort=nearest] if score @s playerUUID = $currentcheck playerUUID run scoreboard players operation $currentcannon playerUUID = @s playerUUID
execute if entity @e[type=item_display,tag=NoOwner,limit=1,sort=nearest] run scoreboard players operation $currentcannon playerUUID = @s playerUUID
execute as @e[type=item_display,tag=NoOwner,limit=1,sort=nearest] run tag @s add NewClaim
execute as @e[type=item_display,tag=NoOwner,limit=1,sort=nearest] run scoreboard players operation @s playerUUID = $currentcannon playerUUID
execute as @e[type=item_display,tag=Owned,limit=1,sort=nearest] run scoreboard players operation @s playerUUID = $currentcannon playerUUID
tag @e[type=item_display,tag=NoOwner] remove NoOwner
tag @e[type=item_display,tag=Owned] remove Owned

execute as @e[type=item_display,tag=CannonDisp,tag=!OnFire] if score $currentcannon playerUUID = @s playerUUID run tag @s add CurrentCheck
execute as @e[type=item_display,tag=CurrentCheck] at @s run tag @e[type=interaction,tag=CannonVLeft,limit=1,sort=nearest,distance=..2] add CurrentCheck
execute as @e[type=item_display,tag=CurrentCheck] at @s run tag @e[type=interaction,tag=CannonVRight,limit=1,sort=nearest,distance=..2] add CurrentCheck
execute as @e[type=item_display,tag=CurrentCheck] at @s run tag @e[type=interaction,tag=CannonVMain,limit=1,sort=nearest,distance=..2] add CurrentCheck

execute unless entity @e[type=item_display,tag=CurrentCheck] if entity @e[type=item_display,tag=CannonDisp,tag=!CurrentCheck,tag=!OnFire,distance=..3] run tellraw @s {"translate":"cannon.occupied","italic":true,"color":"red"}
execute unless entity @e[type=item_display,tag=CurrentCheck] if entity @e[type=item_display,tag=CannonDisp,tag=!CurrentCheck,tag=OnFire,distance=..3] run tellraw @s {"translate":"cannon.on_fire","italic":true,"color":"red"}
execute unless entity @e[type=item_display,tag=CurrentCheck] run tag @s remove FillLeft
execute unless entity @e[type=item_display,tag=CurrentCheck] run tag @s remove FillRight
execute unless entity @e[type=item_display,tag=CurrentCheck] run tag @s remove FillCB

execute if entity @e[type=item_display,tag=NewClaim,tag=CurrentCheck] run function cannons:unclaimmultiple

scoreboard players set @e[type=item_display,tag=CurrentCheck,scores={cannonclaim=4..120}] cannonclaim 3

execute if entity @s[tag=self] unless entity @s[tag=!FillLeft,tag=!FillRight] run function cannons:usegunpowder
execute if entity @s[tag=hitter] unless entity @s[tag=!FillLeft,tag=!FillRight] run function cannons:takegunpowder
execute if entity @s[tag=FillCB] run function cannons:usecannonball

#Remove tags
tag @s remove HoldGP
tag @s remove FillLeft
tag @s remove FillRight
tag @s remove FillCB

tag @e[type=item_display,tag=CurrentCheck] remove CurrentCheck

# scoreboard players reset $currentcannon playerUUID
# scoreboard players reset $currentcheck playerUUID