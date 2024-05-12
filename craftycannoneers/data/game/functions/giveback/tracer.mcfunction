execute unless score $NoTracers CmdData matches 1 run clear @s diamond_hoe[custom_model_data=60]
execute unless score $NoTracers CmdData matches 1 run clear @s diamond_hoe[custom_model_data=91]
execute unless score $NoTracers CmdData matches 1 run loot give @s loot cannons:tracer
playsound entity.item.pickup player @s ~ ~ ~ 0.25 2
tag @s remove NeedsTracer