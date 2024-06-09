#> Ship regen
effect give @s[team=Orange,predicate=game:onorange,tag=!onboatregen,tag=!NoRegen] regeneration infinite 1 true
tag @s[team=Orange,predicate=game:onorange,tag=!onboatregen] add onboatregen
effect clear @s[team=Orange,predicate=!game:onorange,tag=onboatregen] regeneration
tag @s[team=Orange,predicate=!game:onorange,tag=onboatregen] remove onboatregen
effect give @s[team=Orange,predicate=game:onorange,predicate=!game:hasregen,tag=!NoRegen] regeneration infinite 1 true

effect give @s[team=Purple,predicate=game:onpurple,tag=!onboatregen,tag=!NoRegen] regeneration infinite 1 true
tag @s[team=Purple,predicate=game:onpurple,tag=!onboatregen] add onboatregen
effect clear @s[team=Purple,predicate=!game:onpurple,tag=onboatregen] regeneration
tag @s[team=Purple,predicate=!game:onpurple,tag=onboatregen] remove onboatregen
effect give @s[team=Purple,predicate=game:onpurple,predicate=!game:hasregen,tag=!NoRegen] regeneration infinite 1 true

#> Enemy messages
execute unless score @s openchest matches 1.. unless score @s spotting matches 1.. unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run advancement grant @s[team=Orange,predicate=game:onpurple,tag=!EnemyMSG] only tutorial:zzzunlockables/intruder
execute unless score @s openchest matches 1.. unless score @s spotting matches 1.. unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run title @s[team=Orange,predicate=game:onpurple,tag=!EnemyMSG] title {"text":" ","color":"red"}
execute unless score @s openchest matches 1.. unless score @s spotting matches 1.. unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run title @s[team=Orange,predicate=game:onpurple,predicate=game:onground,tag=!EnemyMSG,tag=!SeeWeakpoint] subtitle {"translate":"game.boarded","color":"dark_red"}
execute unless score @s openchest matches 1.. unless score @s spotting matches 1.. unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run tag @s[team=Orange,predicate=game:onpurple,predicate=game:onground,tag=!EnemyMSG,tag=!SeeWeakpoint] add EnemyMSG
tag @s[team=Orange,tag=EnemyMSG,predicate=!game:onpurple] remove EnemyMSG

execute unless score @s openchest matches 1.. unless score @s spotting matches 1.. unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run advancement grant @s[team=Purple,predicate=game:onorange,tag=!EnemyMSG] only tutorial:zzzunlockables/intruder
execute unless score @s openchest matches 1.. unless score @s spotting matches 1.. unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run title @s[team=Purple,predicate=game:onorange,tag=!EnemyMSG] title {"text":" ","color":"red"}
execute unless score @s openchest matches 1.. unless score @s spotting matches 1.. unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run title @s[team=Purple,predicate=game:onorange,predicate=game:onground,tag=!EnemyMSG,tag=!SeeWeakpoint] subtitle {"translate":"game.boarded","color":"dark_red"}
execute unless score @s openchest matches 1.. unless score @s spotting matches 1.. unless block ~ ~-1 ~ air unless block ~ ~-1 ~ water run tag @s[team=Purple,predicate=game:onorange,predicate=game:onground,tag=!EnemyMSG,tag=!SeeWeakpoint] add EnemyMSG
tag @s[team=Purple,tag=EnemyMSG,predicate=!game:onorange] remove EnemyMSG

#> Weakness on enemy ship + other conditions
effect give @s[team=Orange,predicate=game:onpurple,tag=!onboatweakness] weakness infinite 0 true
tag @s[team=Orange,predicate=game:onpurple,tag=!onboatweakness] add onboatweakness

effect give @s[team=Purple,predicate=game:onorange,tag=!onboatweakness] weakness infinite 0 true
tag @s[team=Purple,predicate=game:onorange,tag=!onboatweakness] add onboatweakness

effect clear @s[tag=onboatweakness,tag=!lookAtBarrel,tag=!lookAtBCannon,tag=!lookAtCannon] weakness
tag @s[tag=onboatweakness,tag=!lookAtBarrel,tag=!lookAtBCannon,tag=!lookAtCannon] remove onboatweakness

effect clear @s[team=Orange,predicate=!game:onpurple,tag=onboatweakness,tag=!lookAtBCannon,tag=!lookAtCannon,tag=!lookAtBarrel] weakness
tag @s[team=Orange,predicate=!game:onpurple,tag=onboatweakness,tag=!lookAtBCannon,tag=!lookAtCannon,tag=!lookAtBarrel] remove onboatweakness

effect clear @s[team=Purple,predicate=!game:onorange,tag=onboatweakness,tag=!lookAtBCannon,tag=!lookAtCannon,tag=!lookAtBarrel] weakness
tag @s[team=Purple,predicate=!game:onorange,tag=onboatweakness,tag=!lookAtBCannon,tag=!lookAtCannon,tag=!lookAtBarrel] remove onboatweakness

effect clear @s[tag=!lookAtBCannon,tag=!lookAtCannon,tag=!lookAtBarrel,tag=!onboatweakness] weakness
attribute @s[tag=!lookAtBCannon,tag=!lookAtCannon,tag=!lookAtBarrel,tag=!onboatweakness] generic.attack_damage modifier remove craftycannoneers:nodamage

#> Gapple timer
effect give @s[scores={eatGapple=1..}] instant_health 1 0 true
scoreboard players add @s gappleTimer 0
scoreboard players set @s[scores={eatGapple=1..}] gappleTimer 1
scoreboard players reset @s eatGapple
scoreboard players add @s[scores={gappleTimer=1..100}] gappleTimer 1
scoreboard players set @s[scores={gappleTimer=101..}] gappleTimer 0