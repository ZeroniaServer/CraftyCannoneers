loot give @s[team=!Lobby,team=!Spectator,team=!Developer] loot lobby:rock
damage @s 0.1 sonic_boom
scoreboard players set $rock CmdData 1
function entityid:hurt/find_entity
scoreboard players reset $rock CmdData