execute if entity @a[team=Lobby,gamemode=!adventure] run gamemode adventure @a[team=Lobby,gamemode=!adventure]
execute if entity @a[team=Spectator,gamemode=!spectator] run gamemode spectator @a[team=Spectator,gamemode=!spectator]

execute if entity @a[team=Purple,gamemode=!adventure] run gamemode adventure @a[team=Purple,gamemode=!adventure,gamemode=!spectator]
execute if entity @a[team=Orange,gamemode=!adventure] run gamemode adventure @a[team=Orange,gamemode=!adventure,gamemode=!spectator]