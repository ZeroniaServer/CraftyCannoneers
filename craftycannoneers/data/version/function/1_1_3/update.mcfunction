tellraw @a [{"translate":"game.applied_updates","color":"green","with":[{"translate":"game.name","with":[{"translate":"game.crafty"},{"translate":"game.cannoneers"}]},{"text":"v1.1.3","color":"green"}]}]
execute as @e[type=item_display,tag=JoinpadLock,limit=3] run data merge entity @s {Rotation:[90.0f,0.0f],item_display:"fixed"}
kill @e[x=0,type=item_display,tag=SkullCache]
data merge entity @e[x=0,type=item_display,tag=DecoGOCB,limit=1] {transformation:{scale:[0.4375f,0.4375f,0.4375f],translation:[0.0f,0.75f,0.0f]},item_display:"head"}
data merge entity @e[x=0,type=item_display,tag=DecoCOCB,limit=1] {transformation:{scale:[0.4375f,0.4375f,0.4375f],translation:[0.0f,0.75f,0.0f]},item_display:"head"}
function lobby:credit/skullcache/start
scoreboard players set $WorldVersion CmdData 1130