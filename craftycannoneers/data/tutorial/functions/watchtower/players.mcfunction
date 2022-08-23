execute at @s[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run function tutorial:watchtower/enter
execute at @s[predicate=!tutorial:watchtower,tag=InTower] run function tutorial:watchtower/exit

execute at @s[tag=SpotFake] run function tutorial:watchtower/spotfake

title @s[tag=!SpotFake,scores={spotfakewp=1..}] title {"text":""}
title @s[tag=!SpotFake,scores={spotfakewp=1..}] subtitle {"text":""}
scoreboard players reset @s[tag=!SpotFake,scores={spotfakewp=1..}] spotfakewp

#> Remove exposed status over time
scoreboard players add @s[tag=Exposed1] fakeexpose1 1
scoreboard players add @s[tag=Exposed2] fakeexpose2 1
scoreboard players add @s[tag=Exposed3] fakeexpose3 1
scoreboard players add @s[tag=Exposed4] fakeexpose4 1
scoreboard players add @s[tag=Exposed5] fakeexpose5 1
scoreboard players add @s[tag=Exposed6] fakeexpose6 1
scoreboard players add @s[tag=Exposed7] fakeexpose7 1

tag @s[tag=Exposed1,scores={fakeexpose1=220..}] remove Exposed1
tag @s[tag=Exposed2,scores={fakeexpose2=220..}] remove Exposed2
tag @s[tag=Exposed3,scores={fakeexpose3=220..}] remove Exposed3
tag @s[tag=Exposed4,scores={fakeexpose4=220..}] remove Exposed4
tag @s[tag=Exposed5,scores={fakeexpose5=220..}] remove Exposed5
tag @s[tag=Exposed6,scores={fakeexpose6=220..}] remove Exposed6
tag @s[tag=Exposed7,scores={fakeexpose7=220..}] remove Exposed7

execute if entity @s[tag=!InTower] run function tutorial:watchtower/clearexposetags

scoreboard players reset @s[tag=!Exposed1,scores={fakeexpose1=1..}] fakeexpose1
scoreboard players reset @s[tag=!Exposed2,scores={fakeexpose2=1..}] fakeexpose2
scoreboard players reset @s[tag=!Exposed3,scores={fakeexpose3=1..}] fakeexpose3
scoreboard players reset @s[tag=!Exposed4,scores={fakeexpose4=1..}] fakeexpose4
scoreboard players reset @s[tag=!Exposed5,scores={fakeexpose5=1..}] fakeexpose5
scoreboard players reset @s[tag=!Exposed6,scores={fakeexpose6=1..}] fakeexpose6
scoreboard players reset @s[tag=!Exposed7,scores={fakeexpose7=1..}] fakeexpose7

tag @s remove UsingSpyglass
tag @s[tag=SpotFake] remove SpotFake
tag @s[tag=SpotFake1] remove SpotFake1
tag @s[tag=SpotFake2] remove SpotFake2
tag @s[tag=SpotFake3] remove SpotFake3
tag @s[tag=SpotFake4] remove SpotFake4
tag @s[tag=SpotFake5] remove SpotFake5
tag @s[tag=SpotFake6] remove SpotFake6
tag @s[tag=SpotFake7] remove SpotFake7