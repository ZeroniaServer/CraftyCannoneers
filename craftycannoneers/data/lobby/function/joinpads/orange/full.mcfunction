# Midgame joining
execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. unless score @s joinorange matches 1.. run title @s actionbar ["",{translate:"game.watch_game",color:"gray",bold:false}]
execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. unless score @s joinorange matches 1.. run title @s times 0 30 5
execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. unless score @s joinorange matches 1.. run tag @s add tryJoinOrange

execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. if score @s joinorange matches 1.. run tellraw @s ["",{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{translate:"game.started",color:"red",bold:true}]
execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. if score @s joinorange matches 1.. run tellraw @s ["",{translate:"game.watch_game",color:"gray",italic:true}]

execute if score $NoMidgameJoins CmdData matches 1 if score $gamestate CmdData matches 2.. run return fail

# Actual team full
execute unless score @s joinorange matches 1.. unless score $InPurple CmdData >= $MaxTeamSize CmdData run title @s actionbar ["",{translate:"game.try_join",color:"aqua",bold:false,with:[{translate:"game.try_join.purple",color:"dark_purple",bold:true},{translate:"game.try_join.team",color:"aqua",bold:false}]}]
execute unless score @s joinorange matches 1.. if score $InPurple CmdData >= $MaxTeamSize CmdData run title @s actionbar ["",{translate:"game.watch_game",color:"gray",bold:false}]
execute unless score @s joinorange matches 1.. run title @s times 0 30 5
execute unless score @s joinorange matches 1.. run tag @s add tryJoinOrange

execute if score @s joinorange matches 1.. run tellraw @s ["",{text:"[",color:"dark_gray"},{text:"!",color:"red",bold:true},{text:"] ",color:"dark_gray"},{translate:"game.full",color:"red",bold:true}]
execute if score @s joinorange matches 1.. unless score $InPurple CmdData >= $MaxTeamSize CmdData run tellraw @s ["",{translate:"game.try_join",color:"dark_aqua",italic:true,with:[{translate:"game.try_join.purple",color:"dark_purple",bold:true,italic:true},{translate:"game.try_join.team",color:"dark_aqua",italic:true}]}]
execute if score @s joinorange matches 1.. if score $InPurple CmdData >= $MaxTeamSize CmdData run tellraw @s ["",{translate:"game.watch_game",color:"gray",italic:true}]