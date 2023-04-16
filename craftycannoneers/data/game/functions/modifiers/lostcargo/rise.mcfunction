scoreboard players add @s CmdData 1
execute at @s[tag=Purple,scores={CmdData=1}] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Purple","Picker"]}
execute at @s[tag=Purple,scores={CmdData=3},predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Purple","Picker"]}
execute at @s[tag=Purple,scores={CmdData=6},predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Purple","Picker"]}
execute at @s[tag=Purple,scores={CmdData=9},predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Purple","Picker"]}
execute at @s[tag=Purple,scores={CmdData=12},predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Purple","Picker"]}

execute at @s[tag=Orange,scores={CmdData=1}] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Orange","Picker"]}
execute at @s[tag=Orange,scores={CmdData=3},predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Orange","Picker"]}
execute at @s[tag=Orange,scores={CmdData=6},predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Orange","Picker"]}
execute at @s[tag=Orange,scores={CmdData=9},predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Orange","Picker"]}
execute at @s[tag=Orange,scores={CmdData=12},predicate=game:fiftyfifty] run summon marker ~ ~ ~ {Tags:["CargoEntity","BarrelSpawn","Orange","Picker"]}

tag @s[scores={CmdData=13..}] add Done