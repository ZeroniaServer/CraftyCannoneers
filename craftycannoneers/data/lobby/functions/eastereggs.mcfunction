#> Pet the parrot
scoreboard players add @e[type=armor_stand,tag=Parrot,scores={CmdData=1..}] CmdData 1
scoreboard players reset @e[type=armor_stand,tag=Parrot,scores={CmdData=20..}] CmdData

execute as @a[scores={parrotpet=1..}] at @s unless entity @e[type=armor_stand,tag=Parrot,distance=..7] run scoreboard players reset @s parrotpet

#> Complete Easter Eggs
advancement grant @a[advancements={tutorial:eastereggs/parrot=true,tutorial:eastereggs/snowman=true,tutorial:eastereggs/planetary=true,tutorial:eastereggs/goldy=true,tutorial:eastereggs/rocketriders=true,tutorial:eastereggs/end=false}] only tutorial:eastereggs/end