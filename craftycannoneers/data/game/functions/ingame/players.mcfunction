#> Arena water
function game:ingame/water

#> Boarding Axe
function game:ingame/boardingaxe

#> Raid Horn
function game:raidhorn/main

#> Ship effects
execute unless score $gamestate CmdData matches 3 run function game:ingame/shipeffects

#> Harpoon
function game:ingame/harpoon

#> Player stuck
function game:ingame/playerstuck

#> Arrow scoreboards
execute if score @s[tag=!arrowcounted] dropArrow matches 1.. run function game:ingame/arrowcount
scoreboard players set @s[scores={dropArrow=1..}] useCrossbow 3
scoreboard players reset @s dropArrow
tag @s remove arrowcounted
scoreboard players add @s shotArrows 0
scoreboard players set @s arrowsToShoot 5
scoreboard players operation @s arrowsToShoot -= @s shotArrows
execute if score @s arrowsToShoot matches ..-1 run scoreboard players set @s arrowsToShoot 0
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
execute if entity @s[scores={kill=1..}] run function game:ingame/kill

#> Death
execute if entity @s[scores={death=1..}] run function game:ingame/death

#> Chest balancing
function balancing:chestluck

#> Bubble columns
function game:bubbles/main