execute as @a[team=Lobby,gamemode=!adventure] run gamemode adventure
execute as @a[team=Spectator,gamemode=!spectator] run gamemode spectator

execute as @a[team=Purple,gamemode=!adventure,tag=!InPlayerCB] unless score $EndTime CmdData matches 150.. run gamemode adventure
execute as @a[team=Orange,gamemode=!adventure,tag=!InPlayerCB] unless score $EndTime CmdData matches 150.. run gamemode adventure

execute as @a[team=Purple,gamemode=!spectator] if score $EndTime CmdData matches 150.. run gamemode spectator
execute as @a[team=Orange,gamemode=!spectator] if score $EndTime CmdData matches 150.. run gamemode spectator