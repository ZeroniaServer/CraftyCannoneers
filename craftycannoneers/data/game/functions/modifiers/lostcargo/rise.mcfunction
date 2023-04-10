scoreboard players add @s CmdData 1
execute if score @s[tag=Purple] CmdData matches 1 at @s run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Purple","Picker"]}
execute if score @s[tag=Purple] CmdData matches 3 at @s[predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Purple","Picker"]}
execute if score @s[tag=Purple] CmdData matches 6 at @s[predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Purple","Picker"]}
execute if score @s[tag=Purple] CmdData matches 9 at @s[predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Purple","Picker"]}
execute if score @s[tag=Purple] CmdData matches 12 at @s[predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Purple","Picker"]}

execute if score @s[tag=Orange] CmdData matches 1 at @s run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Orange","Picker"]}
execute if score @s[tag=Orange] CmdData matches 3 at @s[predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Orange","Picker"]}
execute if score @s[tag=Orange] CmdData matches 6 at @s[predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Orange","Picker"]}
execute if score @s[tag=Orange] CmdData matches 9 at @s[predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Orange","Picker"]}
execute if score @s[tag=Orange] CmdData matches 12 at @s[predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Orange","Picker"]}


tag @s[scores={CmdData=13..}] add Done