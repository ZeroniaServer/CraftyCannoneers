#> Boarding Axe
function game:ingame/boardingaxe

#> Raid Horn
function game:raidhorn/main

#> Ship Effects
function game:ingame/shipeffects

#> Harpoon
function game:ingame/harpoon

#> Player stuck
function game:ingame/playerstuck

#> Spawnpoints
spawnpoint @s[team=Orange] 88 -26 55 90
spawnpoint @s[team=Purple] 52 -26 -55 -90

#> Kill
execute if entity @s[scores={kill=1..}] run function game:ingame/kill

#> Death
execute if entity @s[scores={death=1..}] run function game:ingame/death

#> Chest balancing
function balancing:chestluck