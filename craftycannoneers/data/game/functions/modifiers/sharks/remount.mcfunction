execute store result score $sharkidid CmdData run data get entity @s UUID[0]
ride @e[type=drowned,tag=Shark,predicate=game:matches_sharkid,predicate=!game:mounted,limit=1] mount @s
tag @s remove dismounted