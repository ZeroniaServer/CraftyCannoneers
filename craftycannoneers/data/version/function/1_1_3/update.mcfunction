tellraw @a [{"translate":"game.applied_updates","color":"green","with":[{"translate":"game.name","with":[{"translate":"game.crafty"},{"translate":"game.cannoneers"}]},{"text":"v1.1.3","color":"green"}]}]
execute as @e[type=item_display,tag=JoinpadLock,limit=3] run data merge entity @s {Rotation:[90.0f,0.0f],item_display:"fixed"}
scoreboard players set $WorldVersion CmdData 1130