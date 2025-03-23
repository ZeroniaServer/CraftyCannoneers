tellraw @a ["\n",{translate:"game.game_over",bold:true,color:"green"}]
tellraw @a ["",{translate:"game.ship_health.purple",color:"dark_purple"},{text:": ",color:"dark_purple"},{text:"❤",color:"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},color:"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},color:"gray"},{text:" | ",color:"dark_gray",bold:true},{translate:"game.ship_health.orange",color:"gold"},{text:": ",color:"gold"},{text:"❤",color:"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},color:"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},color:"gray"}]

#> Cannons
execute store result score $MVPCount CmdData if entity @a[tag=CannonMVP]
execute if score $MVPCount CmdData matches 1 if entity @a[tag=CannonMVP,scores={MVPcannon=1},limit=1] run tellraw @a ["",{translate:"mvp.cannon.1",color:"aqua",with:[{selector:"@a[tag=CannonMVP,limit=1]"},{translate:"mvp.cannon.damage",color:"aqua",with:[{"score":{"name":"@a[tag=CannonMVP,limit=1]","objective":"MVPdamage"},bold:true,color:"dark_aqua"},{translate:"mvp.cannon.single",color:"aqua",with:[{"score":{"name":"@a[tag=CannonMVP,limit=1]","objective":"MVPcannon"},bold:true,color:"dark_aqua"}]}]}]}]
execute if score $MVPCount CmdData matches 1 unless entity @a[tag=CannonMVP,scores={MVPcannon=1},limit=1] run tellraw @a ["",{translate:"mvp.cannon.1",color:"aqua",with:[{selector:"@a[tag=CannonMVP,limit=1]"},{translate:"mvp.cannon.damage",color:"aqua",with:[{"score":{"name":"@a[tag=CannonMVP,limit=1]","objective":"MVPdamage"},bold:true,color:"dark_aqua"},{translate:"mvp.cannon.plural",color:"aqua",with:[{"score":{"name":"@a[tag=CannonMVP,limit=1]","objective":"MVPcannon"},bold:true,color:"dark_aqua"}]}]}]}]

execute if score $MVPCount CmdData matches 2.. run tag @a[tag=CannonMVP,limit=1] add lastMVP
execute if score $MVPCount CmdData matches 2.. if entity @a[tag=CannonMVP,scores={MVPcannon=1},limit=1] run tellraw @a ["",{translate:"mvp.cannon.2",color:"aqua",with:[{selector:"@a[tag=CannonMVP,tag=!lastMVP]"},{selector:"@a[tag=lastMVP,limit=1]"},{translate:"mvp.cannon.damage",color:"aqua",with:[{"score":{"name":"@a[tag=CannonMVP,limit=1]","objective":"MVPdamage"},bold:true,color:"dark_aqua"},{translate:"mvp.cannon.single",color:"aqua",with:[{"score":{"name":"@a[tag=CannonMVP,limit=1]","objective":"MVPcannon"},bold:true,color:"dark_aqua"}]}]}]}]
execute if score $MVPCount CmdData matches 2.. unless entity @a[tag=CannonMVP,scores={MVPcannon=1},limit=1] run tellraw @a ["",{translate:"mvp.cannon.2",color:"aqua",with:[{selector:"@a[tag=CannonMVP,tag=!lastMVP]"},{selector:"@a[tag=lastMVP,limit=1]"},{translate:"mvp.cannon.damage",color:"aqua",with:[{"score":{"name":"@a[tag=CannonMVP,limit=1]","objective":"MVPdamage"},bold:true,color:"dark_aqua"},{translate:"mvp.cannon.plural",color:"aqua",with:[{"score":{"name":"@a[tag=CannonMVP,limit=1]","objective":"MVPcannon"},bold:true,color:"dark_aqua"}]}]}]}]
tag @a[tag=lastMVP,limit=1] remove lastMVP

#> Kills
execute store result score $MVPCount CmdData if entity @a[tag=KillMVP]
execute if score $MVPCount CmdData matches 1 if entity @a[tag=KillMVP,scores={MVPkill=1},limit=1] run tellraw @a ["",{translate:"mvp.kill.1",color:"aqua",with:[{selector:"@a[tag=KillMVP,limit=1]"},{translate:"mvp.kill.single",color:"aqua",with:[{"score":{"name":"@a[tag=KillMVP,limit=1]","objective":"MVPkill"},bold:true,color:"dark_aqua"}]}]}]
execute if score $MVPCount CmdData matches 1 unless entity @a[tag=KillMVP,scores={MVPkill=1},limit=1] run tellraw @a ["",{translate:"mvp.kill.1",color:"aqua",with:[{selector:"@a[tag=KillMVP,limit=1]"},{translate:"mvp.kill.plural",color:"aqua",with:[{"score":{"name":"@a[tag=KillMVP,limit=1]","objective":"MVPkill"},bold:true,color:"dark_aqua"}]}]}]

execute if score $MVPCount CmdData matches 2.. run tag @a[tag=KillMVP,limit=1] add lastMVP
execute if score $MVPCount CmdData matches 2.. if entity @a[tag=KillMVP,scores={MVPkill=1},limit=1] run tellraw @a ["",{translate:"mvp.kill.2",color:"aqua",with:[{selector:"@a[tag=KillMVP,tag=!lastMVP]"},{selector:"@a[tag=lastMVP,limit=1]"},{translate:"mvp.kill.single_each",color:"aqua",with:[{"score":{"name":"@a[tag=KillMVP,limit=1]","objective":"MVPkill"},bold:true,color:"dark_aqua"}]}]}]
execute if score $MVPCount CmdData matches 2.. unless entity @a[tag=KillMVP,scores={MVPkill=1},limit=1] run tellraw @a ["",{translate:"mvp.kill.2",color:"aqua",with:[{selector:"@a[tag=KillMVP,tag=!lastMVP]"},{selector:"@a[tag=lastMVP,limit=1]"},{translate:"mvp.kill.plural_each",color:"aqua",with:[{"score":{"name":"@a[tag=KillMVP,limit=1]","objective":"MVPkill"},bold:true,color:"dark_aqua"}]}]}]
tag @a[tag=lastMVP,limit=1] remove lastMVP

#> Deaths
execute store result score $MVPCount CmdData if entity @a[tag=DeathMVP]
execute if score $MVPCount CmdData matches 1 if entity @a[tag=DeathMVP,scores={MVPdeath=1},limit=1] run tellraw @a ["",{translate:"mvp.death.1",color:"aqua",with:[{selector:"@a[tag=DeathMVP,limit=1]"},{translate:"mvp.death.single",color:"aqua",with:[{"score":{"name":"@a[tag=DeathMVP,limit=1]","objective":"MVPdeath"},bold:true,color:"dark_aqua"}]}]}]
execute if score $MVPCount CmdData matches 1 unless entity @a[tag=DeathMVP,scores={MVPdeath=1},limit=1] run tellraw @a ["",{translate:"mvp.death.1",color:"aqua",with:[{selector:"@a[tag=DeathMVP,limit=1]"},{translate:"mvp.death.plural",color:"aqua",with:[{"score":{"name":"@a[tag=DeathMVP,limit=1]","objective":"MVPdeath"},bold:true,color:"dark_aqua"}]}]}]

execute if score $MVPCount CmdData matches 2.. run tag @a[tag=DeathMVP,limit=1] add lastMVP
execute if score $MVPCount CmdData matches 2.. if entity @a[tag=DeathMVP,scores={MVPdeath=1},limit=1] run tellraw @a ["",{translate:"mvp.death.2",color:"aqua",with:[{selector:"@a[tag=DeathMVP,tag=!lastMVP]"},{selector:"@a[tag=lastMVP,limit=1]"},{translate:"mvp.death.single_each",color:"aqua",with:[{"score":{"name":"@a[tag=DeathMVP,limit=1]","objective":"MVPdeath"},bold:true,color:"dark_aqua"}]}]}]
execute if score $MVPCount CmdData matches 2.. unless entity @a[tag=DeathMVP,scores={MVPdeath=1},limit=1] run tellraw @a ["",{translate:"mvp.death.2",color:"aqua",with:[{selector:"@a[tag=DeathMVP,tag=!lastMVP]"},{selector:"@a[tag=lastMVP,limit=1]"},{translate:"mvp.death.plural_each",color:"aqua",with:[{"score":{"name":"@a[tag=DeathMVP,limit=1]","objective":"MVPdeath"},bold:true,color:"dark_aqua"}]}]}]
tag @a[tag=lastMVP,limit=1] remove lastMVP

tellraw @a ""

scoreboard players reset $MVPCount CmdData