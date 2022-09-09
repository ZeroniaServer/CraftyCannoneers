tellraw @s ["","\n",{"text":"Ship Weakpoint exposed by ","color":"aqua"},{"selector":"@s"},"\n"]

tag @s[tag=SpotFake1] add Exposed1
tag @s[tag=SpotFake2] add Exposed2
tag @s[tag=SpotFake3] add Exposed3
tag @s[tag=SpotFake4] add Exposed4
tag @s[tag=SpotFake5] add Exposed5
tag @s[tag=SpotFake6] add Exposed6
tag @s[tag=SpotFake7] add Exposed7

scoreboard players set @s[tag=SpotFake1] fakeexpose1 -2
scoreboard players set @s[tag=SpotFake2] fakeexpose2 -2
scoreboard players set @s[tag=SpotFake3] fakeexpose3 -2
scoreboard players set @s[tag=SpotFake4] fakeexpose4 -2
scoreboard players set @s[tag=SpotFake5] fakeexpose5 -2
scoreboard players set @s[tag=SpotFake6] fakeexpose6 -2
scoreboard players set @s[tag=SpotFake7] fakeexpose7 -2

playsound weakpointspot master @s ~ ~ ~ 0.4 1.4
title @s title {"text":" ","color":"white"}
title @s subtitle {"text":" ","color":"white"}
tag @s remove SpotFake