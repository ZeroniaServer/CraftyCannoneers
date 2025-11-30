setblock 78 -31 5 moving_piston
setblock 62 -31 -5 moving_piston
tellraw @a [{translate:"game.applied_updates",color:"green",with:[{translate:"game.name",with:[{translate:"game.crafty"},{translate:"game.cannoneers"}]},{text:"v1.1.10",color:"green"}]}]
scoreboard players set $WorldVersion CmdData 1191