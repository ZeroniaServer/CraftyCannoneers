loot give @s[team=!Lobby,team=!Spectator,team=!Developer] loot lobby:rock
scoreboard players set $rock CmdData 1
function entityid:hurt/find_entity
damage @s 0.1 sonic_boom by @e[type=spectral_arrow,tag=thearrow,limit=1]
kill @e[type=spectral_arrow,tag=thearrow,limit=1]
scoreboard players reset $rock CmdData