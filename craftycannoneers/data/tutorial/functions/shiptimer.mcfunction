#> Ship restoring
execute if score $fakeweakpointhit CmdData matches 7 run function tutorial:restoreship
execute if score $shiptimer CmdData matches 1..1199 run scoreboard players add $shiptimer CmdData 1
execute if score $shiptimer CmdData matches 1200 run function tutorial:restoreship

execute if score $shiptimer CmdData matches 600 run title @a[team=Lobby,tag=OnDock] actionbar ["",{"text":"The Training Ship will repair itself in ","color":"aqua"},{"text":"30","bold":true,"color":"blue"},{"text":" seconds!","color":"aqua"}]
execute if score $shiptimer CmdData matches 1000 run title @a[team=Lobby,tag=OnDock] actionbar ["",{"text":"The Training Ship will repair itself in ","color":"aqua"},{"text":"10","bold":true,"color":"blue"},{"text":" seconds!","color":"aqua"}]
execute if score $shiptimer CmdData matches 1100 run title @a[team=Lobby,tag=OnDock] actionbar ["",{"text":"The Training Ship will repair itself in ","color":"aqua"},{"text":"5","bold":true,"color":"blue"},{"text":" seconds!","color":"aqua"}]
execute if score $shiptimer CmdData matches 1120 run title @a[team=Lobby,tag=OnDock] actionbar ["",{"text":"The Training Ship will repair itself in ","color":"aqua"},{"text":"4","bold":true,"color":"blue"},{"text":" seconds!","color":"aqua"}]
execute if score $shiptimer CmdData matches 1140 run title @a[team=Lobby,tag=OnDock] actionbar ["",{"text":"The Training Ship will repair itself in ","color":"aqua"},{"text":"3","bold":true,"color":"blue"},{"text":" seconds!","color":"aqua"}]
execute if score $shiptimer CmdData matches 1160 run title @a[team=Lobby,tag=OnDock] actionbar ["",{"text":"The Training Ship will repair itself in ","color":"aqua"},{"text":"2","bold":true,"color":"blue"},{"text":" seconds!","color":"aqua"}]
execute if score $shiptimer CmdData matches 1180 run title @a[team=Lobby,tag=OnDock] actionbar ["",{"text":"The Training Ship will repair itself in ","color":"aqua"},{"text":"1","bold":true,"color":"blue"},{"text":" second!","color":"aqua"}]