execute if entity @s[tag=Hit1,tag=!Hit2,predicate=game:onpurple] run scoreboard players add $OrangeHitStreak CmdData 1
execute if entity @s[tag=Hit1,tag=!Hit2,predicate=game:onpurple] run scoreboard players reset $OrangeStreakTimer CmdData
execute if entity @s[tag=Hit1,tag=!Hit2,predicate=game:onorange] run scoreboard players add $PurpleHitStreak CmdData 1
execute if entity @s[tag=Hit1,tag=!Hit2,predicate=game:onorange] run scoreboard players reset $PurpleStreakTimer CmdData
execute if entity @s[tag=Hit1,tag=!Hit2] run tag @s add StreakIncreased

execute if entity @s[tag=Hit1,tag=Hit2,predicate=game:onpurple] run scoreboard players add $OrangeHitStreak CmdData 1
execute if entity @s[tag=Hit1,tag=Hit2,predicate=game:onpurple] run scoreboard players reset $OrangeStreakTimer CmdData
execute if entity @s[tag=Hit1,tag=Hit2,predicate=game:onorange] run scoreboard players add $PurpleHitStreak CmdData 1
execute if entity @s[tag=Hit1,tag=Hit2,predicate=game:onorange] run scoreboard players reset $PurpleStreakTimer CmdData
execute if entity @s[tag=Hit1,tag=Hit2] run tag @s add StreakIncreased

execute if entity @s[tag=!Hit1,tag=!Hit2,predicate=game:onpurple] run scoreboard players add $OrangeHitStreak CmdData 1
execute if entity @s[tag=!Hit1,tag=!Hit2,predicate=game:onpurple] run scoreboard players reset $OrangeStreakTimer CmdData
execute if entity @s[tag=!Hit1,tag=!Hit2,predicate=game:onorange] run scoreboard players add $PurpleHitStreak CmdData 1
execute if entity @s[tag=!Hit1,tag=!Hit2,predicate=game:onorange] run scoreboard players reset $PurpleStreakTimer CmdData
execute if entity @s[tag=!Hit1,tag=!Hit2] run tag @s add StreakIncreased