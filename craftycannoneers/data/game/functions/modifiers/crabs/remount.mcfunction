execute store result score $crabid CmdData run data get entity @s UUID[0]
ride @e[type=endermite,tag=CrabController,predicate=game:matches_crabid,predicate=!game:mounted,limit=1] mount @s
ride @e[type=item_display,tag=CrabDisplay,predicate=game:matches_crabid,predicate=!game:mounted,limit=1] mount @s
tag @s remove dismounted