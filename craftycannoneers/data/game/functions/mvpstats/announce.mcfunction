tellraw @a ["","\n",{"text":"Game Over!","underlined":true,"color":"green"}]
tellraw @a ["",{"text":"Purple: ","color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"text":"Orange: ","color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]

#> Cannons
scoreboard players set $MVPCount CmdData 0
execute as @a[tag=CannonMVP] run scoreboard players add $MVPCount CmdData 1
execute if score $MVPCount CmdData matches 1 run tellraw @a ["",{"selector":"@a[tag=CannonMVP,limit=1,sort=random]"},{"text":" is the MVP! ","color":"aqua"},{"score":{"name":"@a[tag=CannonMVP,limit=1,sort=random]","objective":"MVPcannon"},"bold":true,"color":"dark_aqua"},{"text":" cannons fired!","color":"aqua"}]
execute if score $MVPCount CmdData matches 2.. run tellraw @a ["",{"selector":"@a[tag=CannonMVP]"},{"text":" are the MVP's! ","color":"aqua"},{"score":{"name":"@a[tag=CannonMVP,limit=1,sort=random]","objective":"MVPcannon"},"bold":true,"color":"dark_aqua"},{"text":" cannons fired each!","color":"aqua"}]

#> Kills
scoreboard players set $MVPCount CmdData 0
execute as @a[tag=KillMVP] run scoreboard players add $MVPCount CmdData 1
execute if score $MVPCount CmdData matches 1 run tellraw @a ["",{"selector":"@a[tag=KillMVP,limit=1,sort=random]"},{"text":" is a true Pirate! ","color":"aqua"},{"score":{"name":"@a[tag=KillMVP,limit=1,sort=random]","objective":"MVPkill"},"bold":true,"color":"dark_aqua"},{"text":" kills!","color":"aqua"}]
execute if score $MVPCount CmdData matches 2.. run tellraw @a ["",{"selector":"@a[tag=KillMVP]"},{"text":" are true Pirates! ","color":"aqua"},{"score":{"name":"@a[tag=KillMVP,limit=1,sort=random]","objective":"MVPkill"},"bold":true,"color":"dark_aqua"},{"text":" kills each!","color":"aqua"}]

#> Deaths
scoreboard players set $MVPCount CmdData 0
execute as @a[tag=DeathMVP] run scoreboard players add $MVPCount CmdData 1
execute if score $MVPCount CmdData matches 1 run tellraw @a ["",{"selector":"@a[tag=DeathMVP,limit=1,sort=random]"},{"text":" visited Davy Jones' Locker! ","color":"aqua"},{"score":{"name":"@a[tag=DeathMVP,limit=1,sort=random]","objective":"MVPkill"},"bold":true,"color":"dark_aqua"},{"text":" pathetic deaths!","color":"aqua"}]
execute if score $MVPCount CmdData matches 2.. run tellraw @a ["",{"selector":"@a[tag=DeathMVP]"},{"text":" visited Davy Jones' Locker! ","color":"aqua"},{"score":{"name":"@a[tag=DeathMVP,limit=1,sort=random]","objective":"MVPkill"},"bold":true,"color":"dark_aqua"},{"text":" pathetic deaths each!","color":"aqua"}]

scoreboard players reset $MVPCount CmdData