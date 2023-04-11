kill @e[type=marker,tag=CargoSpawn]
kill @e[type=marker,tag=BarrelSpawn]
execute as @e[type=item_display,tag=CargoBarrel] run function game:modifiers/lostcargo/killbarrel

#> Purple
summon marker 73 -28 -46 {Tags:["CargoSpawn","CargoEntity","Purple"]}
summon marker 78 -28 -46 {Tags:["CargoSpawn","CargoEntity","Purple"]}
summon marker 68 -28 -46 {Tags:["CargoSpawn","CargoEntity","Purple"]}
summon marker 58 -28 -46 {Tags:["CargoSpawn","CargoEntity","Purple"]}
summon marker 63 -28 -46 {Tags:["CargoSpawn","CargoEntity","Purple"]}
summon marker 83 -28 -46 {Tags:["CargoSpawn","CargoEntity","Purple"]}
summon marker 53 -28 -46 {Tags:["CargoSpawn","CargoEntity","Purple"]}

#> Orange
summon marker 57 -28 46 {Tags:["CargoSpawn","CargoEntity","Orange"]}
summon marker 62 -28 46 {Tags:["CargoSpawn","CargoEntity","Orange"]}
summon marker 67 -28 46 {Tags:["CargoSpawn","CargoEntity","Orange"]}
summon marker 72 -28 46 {Tags:["CargoSpawn","CargoEntity","Orange"]}
summon marker 77 -28 46 {Tags:["CargoSpawn","CargoEntity","Orange"]}
summon marker 82 -28 46 {Tags:["CargoSpawn","CargoEntity","Orange"]}
summon marker 87 -28 46 {Tags:["CargoSpawn","CargoEntity","Orange"]}