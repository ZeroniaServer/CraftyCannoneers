kill @e[type=marker,tag=WindMarker]
summon marker 70 -27 0 {Tags:["WindMarker","StormEntity"]}

scoreboard players set $WindDirection CmdData 0
execute as @e[type=marker,tag=WindMarker] if predicate game:fiftyfifty run scoreboard players set $WindDirection CmdData 1

kill @e[type=marker,tag=WindMarker]

scoreboard players set $StormTime CmdData 350