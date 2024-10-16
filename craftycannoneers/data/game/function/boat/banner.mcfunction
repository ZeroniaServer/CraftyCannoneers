#> Rotate the sail along with the boat
execute on vehicle rotated as @s on passengers run rotate @s[type=!player] ~ ~
function game:boat/display

#> Set banner color
execute on vehicle if entity @s[tag=!motionlock] on passengers if entity @s[type=player,team=Purple] on vehicle on passengers run item replace entity @s[tag=BoatBanner] container.0 with purple_banner
execute on vehicle if entity @s[tag=!motionlock] on passengers if entity @s[type=player,team=Orange] on vehicle on passengers run item replace entity @s[tag=BoatBanner] container.0 with orange_banner
execute on vehicle if entity @s[tag=motionlock] on passengers if entity @s[type=player,team=Purple] on vehicle on passengers run item replace entity @s[tag=BoatBanner] container.0 with purple_banner
execute on vehicle if entity @s[tag=motionlock] on passengers if entity @s[type=player,team=Orange] on vehicle on passengers run item replace entity @s[tag=BoatBanner] container.0 with orange_banner

tag @s[tag=New] remove New

#> Killing (failsafe)
execute at @s[predicate=!game:boat/inboat] run function game:boat/boatbreak
execute unless entity @e[type=oak_boat,tag=BoatBoat,tag=1] at @s[tag=1,tag=!kill] run function game:boat/boatbreak
execute unless entity @e[type=oak_boat,tag=BoatBoat,tag=2] at @s[tag=2,tag=!kill] run function game:boat/boatbreak
execute unless entity @e[type=oak_boat,tag=BoatBoat,tag=3] at @s[tag=3,tag=!kill] run function game:boat/boatbreak
execute unless entity @e[type=oak_boat,tag=BoatBoat,tag=4] at @s[tag=4,tag=!kill] run function game:boat/boatbreak