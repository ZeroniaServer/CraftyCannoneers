#> Arena water
execute unless predicate game:inarena run function game:ingame/water
title @s[scores={drowning=1..},predicate=game:inarena] title {text:" ",color:"dark_red"}
title @s[scores={drowning=1..},predicate=game:inarena] subtitle {text:" ",color:"dark_red"}
scoreboard players reset @s[scores={drowning=1..},predicate=game:inarena] drowning

#> Boarding Axe
function game:boardingaxe/main

#> Raid Horn
function game:raidhorn/main

#> Ship effects
execute unless score $gamestate CmdData matches 3 run function game:ingame/shipeffects

#> Harpoon
function game:harpoon/main

#> Player stuck
execute at @s run function game:ingame/playerstuck

#> Arrow scoreboards
execute if score @s[tag=!arrowcounted] dropArrow matches 1.. run function game:ingame/arrowcount
scoreboard players set @s[scores={dropArrow=1..}] useCrossbow 3
scoreboard players reset @s dropArrow
tag @s remove arrowcounted
scoreboard players add @s shotArrows 0
scoreboard players set @s arrowsToShoot 5
scoreboard players operation @s arrowsToShoot -= @s shotArrows
execute if score @s arrowsToShoot matches ..-1 run scoreboard players set @s arrowsToShoot 0
scoreboard players operation @s remainderArrows = @s hasArrows
scoreboard players operation @s remainderArrows -= @s arrowsToShoot
scoreboard players remove @s[tag=loaded,scores={arrowsToShoot=0}] remainderArrows 1
scoreboard players remove @s[scores={useCrossbow=1..}] useCrossbow 1

#> Spawnpoints
spawnpoint @s[team=Orange] 88 -26 55 90
spawnpoint @s[team=Purple] 52 -26 -55 -90

#> Give back items
execute at @s[tag=NeedsCutlass,tag=!fullinv] run function game:giveback/cutlass
execute at @s[tag=NeedsCrossbow,tag=!fullinv] run function game:giveback/crossbow
execute at @s[tag=NeedsSpyglass,tag=!fullinv] run function game:giveback/spyglass
execute at @s[tag=NeedsTracer,tag=!fullinv] run function game:giveback/tracer

#> Kill
execute if score @s kill matches 1.. run function game:ingame/kill

#> Death
scoreboard players add @s[scores={respawn=1..}] respawn 1
execute if score @s death matches 1.. run function game:ingame/death
scoreboard players reset @s[scores={respawn=220..}] respawn

#> Chest balancing
function balancing:chestluck

#> Bubble columns
function game:bubbles/main

#> Reset KillerUUID
execute if score @s KillerUUID = @s KillerUUID run scoreboard players add @s KillerUUIDreset 1
scoreboard players reset @s[scores={KillerUUIDreset=10..}] KillerUUID
scoreboard players reset @s[scores={KillerUUIDreset=10..}] KillerUUIDreset

#> Barrel tags
tag @s[tag=!barrelMainhand,predicate=weapons:barrel_mainhand] add barrelMainhand
tag @s[tag=barrelMainhand,predicate=!weapons:barrel_mainhand] remove barrelMainhand
tag @s[tag=!barrelOffhand,predicate=weapons:barrel_offhand] add barrelOffhand
tag @s[tag=barrelOffhand,predicate=!weapons:barrel_offhand] remove barrelOffhand
tag @s remove lookAtBarrel

#> Cannon tags
tag @s remove lookAtCannon
execute if entity @s[tag=!UsingSpyglass] if entity @e[type=interaction,tag=cannon,distance=..8] run function game:raycast/check_start_ray_cannon
tag @s remove lookAtBCannon

#> Crab Trap tags
execute if score $Wildlife CmdData matches 1 run tag @s[tag=!crabTrapMainhand,predicate=weapons:crab_trap_mainhand] add crabTrapMainhand
execute if score $Wildlife CmdData matches 1 run tag @s[tag=crabTrapMainhand,predicate=!weapons:crab_trap_mainhand] remove crabTrapMainhand
execute if score $Wildlife CmdData matches 1 run tag @s[tag=!crabTrapOffhand,predicate=weapons:crab_trap_offhand] add crabTrapOffhand
execute if score $Wildlife CmdData matches 1 run tag @s[tag=crabTrapOffhand,predicate=!weapons:crab_trap_offhand] remove crabTrapOffhand

#> Crab tracking
execute if score $Wildlife CmdData matches 1 run scoreboard players add @s hasCrabTraps 0
execute if score $Wildlife CmdData matches 1 run scoreboard players operation $curr crabs += @s hasCrabTraps

#> Reset placement score
scoreboard players reset @s[scores={spawnPlaceable=0..}]