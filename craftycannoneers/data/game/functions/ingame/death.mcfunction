tag @s remove NoRegen
function cannons:despawnplayerc
function game:givegear
gamemode adventure @s[gamemode=!spectator]
title @s title {"text":""}
title @s subtitle {"text":""}
tp @s[team=Orange] 88 -26 55 90 0
tp @s[team=Purple] 52 -26 -55 -90 0
tag @s remove onboatregen
tag @s remove onboatweakness
tag @s remove lookAtBarrel
tag @s remove lookAtCannon
tag @s remove lookAtBCannon
attribute @s generic.attack_damage modifier remove 9c55d773-f866-4def-9740-6253d5ebb737
tag @s add loaded
tag @s remove NeedsCutlass
tag @s remove NeedsCrossbow
tag @s remove NeedsSpyglass
tag @s remove NeedsTracer
tag @s remove cr
tag @s remove InPlayerCB
scoreboard players add @s MVPdeath 1
scoreboard players set @s shotArrows 0
scoreboard players reset @s death
scoreboard players add @s hasArrows 1
scoreboard players set @s respawn 1
scoreboard players operation $tempuuid playerUUID = @s playerUUID
execute as @e[type=item_display,tag=FireCannon,scores={CmdData=7}] if score @s playerUUID = $tempuuid playerUUID run scoreboard players reset @s playerUUID
function game:mvpstats/ingame_check