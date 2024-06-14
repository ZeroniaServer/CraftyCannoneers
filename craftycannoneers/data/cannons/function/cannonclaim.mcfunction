#> Claim timer
execute unless score @s playerUUID matches 0 run scoreboard players add @s cannonclaim 1

#> Set accuracy on claim
execute if score @s cannonclaim matches 1 run function cannons:accuracy/randomaccuracy

#> Unclaim if on fire (but not firing)
execute if entity @s[tag=OnFire,tag=!FireCannon,scores={cannonclaim=1..120}] run function cannons:accuracy/randomaccuracy
scoreboard players set @s[tag=OnFire,tag=!FireCannon,scores={cannonclaim=1..120}] cannonclaim 125

#> Add nametag
execute at @s[scores={cannonclaim=3}] run function cannons:setcannonname

#> Unclaim time
execute at @s[scores={cannonclaim=120..}] run function cannons:accuracy/randomaccuracy
execute at @s[scores={cannonclaim=120..}] run kill @e[type=area_effect_cloud,tag=CannonNametag,limit=1,sort=nearest,distance=..3]
execute at @s[scores={cannonclaim=120..}] run kill @e[type=area_effect_cloud,tag=GPDispText,limit=2,sort=nearest,distance=..3]
scoreboard players set @s[scores={cannonclaim=120..}] playerUUID 0
execute at @s[scores={cannonclaim=120..,playerUUID=0}] run scoreboard players reset @e[type=item_display,tag=GPDispL,distance=..2,limit=1,sort=nearest] gpdisp_time
execute at @s[scores={cannonclaim=120..,playerUUID=0}] run scoreboard players reset @e[type=item_display,tag=GPDispR,distance=..2,limit=1,sort=nearest] gpdisp_time
scoreboard players reset @s[scores={cannonclaim=120..,playerUUID=0}] cannonclaim

#> Reset gunpowder after 6 seconds in Cannon Dock
scoreboard players reset @s[tag=Tutorial,scores={cannonclaim=1..}] eyeclick
scoreboard players add @s[tag=Tutorial,scores={playerUUID=0}] eyeclick 1
execute at @s[tag=Tutorial,scores={eyeclick=120..,playerUUID=0}] run function cannons:resetgunpowder
scoreboard players reset @s[tag=Tutorial,scores={eyeclick=120..}] eyeclick

#> Check for owner existing + being within range
execute at @s[scores={cannonclaim=1..120}] run function cannons:hasowner