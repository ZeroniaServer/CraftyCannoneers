scoreboard objectives remove msgdelay
scoreboard objectives remove walk
scoreboard objectives remove sprint
scoreboard objectives remove crouch
scoreboard objectives remove jump
tellraw @a [{translate:"game.applied_updates",color:"green",with:[{translate:"game.name",with:[{translate:"game.crafty"},{translate:"game.cannoneers"}]},{text:"v1.0.8",color:"green"}]}]
scoreboard players set $WorldVersion CmdData 1080