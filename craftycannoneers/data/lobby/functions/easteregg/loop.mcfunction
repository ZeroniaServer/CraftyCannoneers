#> Snowy Skirmish
execute as @e[type=armor_stand,tag=SnowmanDeco] at @s run function lobby:easteregg/snowman/loop

#> Rocket Launch
execute as @e[type=armor_stand,tag=RocketLaunch] at @s run function lobby:easteregg/rocket/loop
execute as @e[type=item,tag=RRHeadItem] at @s run function lobby:easteregg/rocket/headitem

#> Pet the Parrot
execute as @e[type=armor_stand,tag=Parrot] run function lobby:easteregg/parrot/loop