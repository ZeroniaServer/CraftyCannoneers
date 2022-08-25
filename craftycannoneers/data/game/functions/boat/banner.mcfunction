#> Copy rotation from boat
function game:boat/copyrotation

#> Set banner color
execute if entity @a[team=Purple,predicate=game:boat/inboat,distance=..1.5] run item replace entity @s armor.head with purple_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:10},{Pattern:ls,Color:10},{Pattern:ts,Color:10},{Pattern:hhb,Color:10},{Pattern:sku,Color:0}]}}
execute if entity @a[team=Orange,predicate=game:boat/inboat,distance=..1.5] run item replace entity @s armor.head with orange_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:1},{Pattern:ls,Color:1},{Pattern:hhb,Color:1},{Pattern:ts,Color:1},{Pattern:sku,Color:0}]}}

tag @s[tag=New] remove New

#> Killing (failsafe)
kill @s[predicate=!game:boat/inboat]
execute unless entity @e[type=boat,tag=BoatBoat,tag=1,distance=..2] run kill @s[tag=1]
execute unless entity @e[type=boat,tag=BoatBoat,tag=2,distance=..2] run kill @s[tag=2]
execute unless entity @e[type=boat,tag=BoatBoat,tag=3,distance=..2] run kill @s[tag=3]
execute unless entity @e[type=boat,tag=BoatBoat,tag=4,distance=..2] run kill @s[tag=4]