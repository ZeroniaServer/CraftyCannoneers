execute unless score $NoTracers CmdData matches 1 run loot give @s loot cannons:tracer
playsound entity.item.pickup player @s ~ ~ ~ 0.25 2
tag @s remove NeedsTracer
function game:invcount