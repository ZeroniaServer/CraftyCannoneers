execute at @s[scores={CmdData=1}] run tag @e[type=armor_stand,tag=CannonDisp,tag=!OnFire,distance=..6,limit=2,sort=nearest] add OnFire
execute at @s[scores={CmdData=1}] run scoreboard players reset @e[type=armor_stand,tag=CannonDisp,tag=OnFire,distance=..6,sort=nearest] firetime
execute at @s[scores={CmdData=1}] run fill ~-1 ~1 ~-1 ~1 ~1 ~1 fire replace air
execute at @s[scores={CmdData=3}] run fill ~-1 ~1 ~-1 ~1 ~1 ~1 air replace fire
execute at @s[scores={CmdData=3}] run fill ~-2 ~2 ~-2 ~2 ~2 ~2 fire replace air
execute at @s[scores={CmdData=5}] run fill ~-2 ~2 ~-2 ~2 ~2 ~2 air replace fire
execute at @s[scores={CmdData=5}] run fill ~-3 ~3 ~-3 ~3 ~3 ~3 fire replace air
execute at @s[predicate=!cannons:safezones/tutorial,scores={CmdData=5..}] run gamerule doFireTick true
execute at @s[predicate=!cannons:safezones/tutorial,scores={CmdData=155}] run gamerule doFireTick false
execute at @s[predicate=cannons:safezones/tutorial,scores={CmdData=5..}] unless score $gamestate CmdData matches 2.. run gamerule doFireTick true
execute at @s[predicate=cannons:safezones/tutorial,scores={CmdData=155}] unless score $gamestate CmdData matches 2.. run gamerule doFireTick false
execute at @s[scores={CmdData=505}] run function cannons:firering/extinguishfire
kill @s[scores={CmdData=505..}]