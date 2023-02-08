#> Snowy Skirmish
execute as @e[type=armor_stand,tag=SnowmanDeco,limit=1] at @s run function lobby:easteregg/snowman/loop

#> Rocket Launch
execute as @e[type=armor_stand,tag=RocketLaunch,limit=1] at @s run function lobby:easteregg/rocket/loop
execute as @e[type=item,tag=RRHeadItem] at @s run function lobby:easteregg/rocket/headitem

#> Pet the Parrot
scoreboard players add $parrotpet CmdData 1
execute if score $parrotpet CmdData matches 20.. run scoreboard players reset $parrotpet CmdData