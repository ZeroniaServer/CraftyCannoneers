#> Ship regen
effect give @s[team=Orange,predicate=game:onorange,tag=!onboatregen,tag=!NoRegen] regeneration 1000000 1 true
tag @s[team=Orange,predicate=game:onorange,tag=!onboatregen] add onboatregen
effect clear @s[team=Orange,predicate=!game:onorange,tag=onboatregen] regeneration
tag @s[team=Orange,predicate=!game:onorange,tag=onboatregen] remove onboatregen
effect give @s[team=Orange,predicate=game:onorange,predicate=!game:hasregen,tag=!NoRegen] regeneration 1000000 1 true

effect give @s[team=Purple,predicate=game:onpurple,tag=!onboatregen,tag=!NoRegen] regeneration 1000000 1 true
tag @s[team=Purple,predicate=game:onpurple,tag=!onboatregen] add onboatregen
effect clear @s[team=Purple,predicate=!game:onpurple,tag=onboatregen] regeneration
tag @s[team=Purple,predicate=!game:onpurple,tag=onboatregen] remove onboatregen
effect give @s[team=Purple,predicate=game:onpurple,predicate=!game:hasregen,tag=!NoRegen] regeneration 1000000 1 true

#> Enemy messages
advancement grant @s[team=Orange,predicate=game:onpurple,tag=!EnemyMSG] only tutorial:zzzunlockables/intruder
title @s[team=Orange,predicate=game:onpurple,tag=!EnemyMSG] title {"text":" ","color":"red"}
execute if entity @s[team=Orange,predicate=game:onpurple,tag=!EnemyMSG,tag=!SeeWeakpoint] unless entity @s[scores={openchest=1..}] unless entity @s[scores={spotting=1..}] run title @s subtitle {"translate":"game.boarded","color":"dark_red"}
execute if entity @s[team=Orange,predicate=game:onpurple,tag=!EnemyMSG,tag=!SeeWeakpoint] unless entity @s[scores={openchest=1..}] unless entity @s[scores={spotting=1..}] run tag @s add EnemyMSG
execute as @s[team=Orange,tag=EnemyMSG,predicate=!game:onpurple] run tag @s remove EnemyMSG

advancement grant @s[team=Purple,predicate=game:onorange,tag=!EnemyMSG] only tutorial:zzzunlockables/intruder
title @s[team=Purple,predicate=game:onorange,tag=!EnemyMSG] title {"text":" ","color":"red"}
execute if entity @s[team=Purple,predicate=game:onorange,tag=!EnemyMSG,tag=!SeeWeakpoint] unless entity @s[scores={openchest=1..}] unless entity @s[scores={spotting=1..}] run title @s subtitle {"translate":"game.boarded","color":"dark_red"}
execute if entity @s[team=Purple,predicate=game:onorange,tag=!EnemyMSG,tag=!SeeWeakpoint] unless entity @s[scores={openchest=1..}] unless entity @s[scores={spotting=1..}] run tag @s add EnemyMSG
execute as @s[team=Purple,tag=EnemyMSG,predicate=!game:onorange] run tag @s remove EnemyMSG

#> Weakness on enemy ship
effect give @s[team=Orange,predicate=game:onpurple] weakness 1 0 true
effect give @s[team=Purple,predicate=game:onorange] weakness 1 0 true

#> Gapple timer
scoreboard players add @s gappleTimer 0
scoreboard players set @s[scores={eatGapple=1..}] gappleTimer 1
scoreboard players reset @s eatGapple
scoreboard players add @s[scores={gappleTimer=1..100}] gappleTimer 1
scoreboard players set @s[scores={gappleTimer=101..}] gappleTimer 0