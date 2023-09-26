scoreboard players operation $currentcheck playerUUID = @s playerUUID

execute as @e[type=item_display,tag=CannonDisp,distance=..3,limit=1,sort=nearest] run tag @s[scores={playerUUID=0}] add NewClaim
scoreboard players operation @e[type=item_display,tag=NewClaim,limit=1,sort=nearest] playerUUID = $currentcheck playerUUID

execute as @e[type=item_display,tag=CannonDisp,distance=..3,limit=1,sort=nearest] if score $currentcheck playerUUID = @s playerUUID run tag @s add CurrentCheck

execute as @e[type=item_display,tag=CurrentCheck] at @s run tag @e[type=interaction,tag=CannonVLeft,limit=1,sort=nearest,distance=..2] add CurrentCheck
execute as @e[type=item_display,tag=CurrentCheck] at @s run tag @e[type=interaction,tag=CannonVRight,limit=1,sort=nearest,distance=..2] add CurrentCheck
execute as @e[type=item_display,tag=CurrentCheck] at @s run tag @e[type=interaction,tag=CannonVMain,limit=1,sort=nearest,distance=..2] add CurrentCheck

execute unless entity @e[type=item_display,tag=CurrentCheck,limit=1] run tellraw @s {"translate":"cannon.occupied","italic":true,"color":"red"}
execute unless entity @e[type=item_display,tag=CurrentCheck,limit=1] run tag @s remove FillLeft
execute unless entity @e[type=item_display,tag=CurrentCheck,limit=1] run tag @s remove FillRight
execute unless entity @e[type=item_display,tag=CurrentCheck,limit=1] run tag @s remove FillCB

execute if entity @e[type=item_display,tag=CurrentCheck,tag=OnFire] run tellraw @s {"translate":"cannon.on_fire","italic":true,"color":"red"}
execute if entity @e[type=item_display,tag=CurrentCheck,tag=OnFire] run tag @s remove FillLeft
execute if entity @e[type=item_display,tag=CurrentCheck,tag=OnFire] run tag @s remove FillRight
execute if entity @e[type=item_display,tag=CurrentCheck,tag=OnFire] run tag @s remove FillCB

execute if entity @e[type=item_display,tag=NewClaim,tag=CurrentCheck,tag=!OnFire] run function cannons:unclaimmultiple

execute unless entity @e[type=item_display,tag=CurrentCheck,tag=OnFire] run scoreboard players set @e[type=item_display,tag=CurrentCheck,scores={cannonclaim=4..120}] cannonclaim 3

execute if entity @s[tag=self] unless entity @s[tag=!FillLeft,tag=!FillRight] run function cannons:usegunpowder
execute if entity @s[tag=hitter] unless entity @s[tag=!FillLeft,tag=!FillRight] run function cannons:takegunpowder
execute if entity @s[tag=FillCB] run function cannons:usecannonball

#Remove tags
tag @s remove HoldGP
tag @s remove FillLeft
tag @s remove FillRight
tag @s remove FillCB

tag @e[type=item_display,tag=CurrentCheck] remove CurrentCheck
tag @e[type=interaction,tag=CurrentCheck] remove CurrentCheck