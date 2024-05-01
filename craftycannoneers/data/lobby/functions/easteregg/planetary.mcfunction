advancement grant @s only tutorial:eastereggs/planetary
execute unless score $planetary CmdData matches 1 run particle block{block_state:"iron_block"} ~-0.2 ~ ~ 0.1 0.1 0.1 1 3
execute unless score $planetary CmdData matches 1 run particle block{block_state:"chorus_plant"} ~0.2 ~ ~ 0.1 0.1 0.1 1 3
execute unless score $planetary CmdData matches 1 run playsound planetary master @s ~ ~ ~ 1 0.8
execute unless score $planetary CmdData matches 1 as @e[type=item_display,tag=Planetary] run function lobby:easteregg/squish