tellraw @a [{"translate":"game.applied_updates","color":"green","with":[{"translate":"game.name","with":[{"translate":"game.crafty"},{"translate":"game.cannoneers"}]},{"text":"v1.1.4","color":"green"}]}]
function arenaclear:cannons
execute as @e[type=armor_stand,tag=fakechest] run function chests:kill
execute as @e[type=item_display,tag=CargoBarrelFake] run function game:modifiers/lostcargo/killbarrel
scoreboard players set $WorldVersion CmdData 1140