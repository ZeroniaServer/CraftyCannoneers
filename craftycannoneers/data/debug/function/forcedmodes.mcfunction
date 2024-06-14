gamemode adventure @s[team=Lobby,gamemode=!adventure]
gamemode spectator @s[team=Spectator,gamemode=!spectator]

execute unless score $EndTime CmdData matches 150.. run gamemode adventure @s[team=Purple,gamemode=!adventure,tag=!InPlayerCB]
execute unless score $EndTime CmdData matches 150.. run gamemode adventure @s[team=Orange,gamemode=!adventure,tag=!InPlayerCB]

execute if score $EndTime CmdData matches 150.. run gamemode spectator @s[team=Purple,gamemode=!spectator]
execute if score $EndTime CmdData matches 150.. run gamemode spectator @s[team=Orange,gamemode=!spectator]