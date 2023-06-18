#> Rotate the sail along with the boat
execute on vehicle rotated as @s on passengers positioned as @s[type=!player] run tp @s ~ ~ ~ ~ ~

#> Set banner color
execute if entity @s[tag=1] if entity @a[team=Purple,predicate=game:boat/inboat1,limit=1] run item replace entity @s armor.head with purple_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:10},{Pattern:ls,Color:10},{Pattern:ts,Color:10},{Pattern:hhb,Color:10},{Pattern:sku,Color:0}]}}
execute if entity @s[tag=2] if entity @a[team=Purple,predicate=game:boat/inboat2,limit=1] run item replace entity @s armor.head with purple_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:10},{Pattern:ls,Color:10},{Pattern:ts,Color:10},{Pattern:hhb,Color:10},{Pattern:sku,Color:0}]}}
execute if entity @s[tag=3] if entity @a[team=Purple,predicate=game:boat/inboat3,limit=1] run item replace entity @s armor.head with purple_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:10},{Pattern:ls,Color:10},{Pattern:ts,Color:10},{Pattern:hhb,Color:10},{Pattern:sku,Color:0}]}}
execute if entity @s[tag=4] if entity @a[team=Purple,predicate=game:boat/inboat4,limit=1] run item replace entity @s armor.head with purple_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:10},{Pattern:ls,Color:10},{Pattern:ts,Color:10},{Pattern:hhb,Color:10},{Pattern:sku,Color:0}]}}

execute if entity @s[tag=1] if entity @a[team=Orange,predicate=game:boat/inboat1,limit=1] run item replace entity @s armor.head with orange_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:1},{Pattern:ls,Color:1},{Pattern:hhb,Color:1},{Pattern:ts,Color:1},{Pattern:sku,Color:0}]}}
execute if entity @s[tag=2] if entity @a[team=Orange,predicate=game:boat/inboat2,limit=1] run item replace entity @s armor.head with orange_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:1},{Pattern:ls,Color:1},{Pattern:hhb,Color:1},{Pattern:ts,Color:1},{Pattern:sku,Color:0}]}}
execute if entity @s[tag=3] if entity @a[team=Orange,predicate=game:boat/inboat3,limit=1] run item replace entity @s armor.head with orange_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:1},{Pattern:ls,Color:1},{Pattern:hhb,Color:1},{Pattern:ts,Color:1},{Pattern:sku,Color:0}]}}
execute if entity @s[tag=4] if entity @a[team=Orange,predicate=game:boat/inboat4,limit=1] run item replace entity @s armor.head with orange_banner{BlockEntityTag:{Patterns:[{Pattern:mc,Color:15},{Pattern:rs,Color:1},{Pattern:ls,Color:1},{Pattern:hhb,Color:1},{Pattern:ts,Color:1},{Pattern:sku,Color:0}]}}

tag @s[tag=New] remove New

#> Killing (failsafe)
execute at @s[predicate=!game:boat/inboat] run function game:boat/boatbreak
execute unless entity @e[type=boat,tag=BoatBoat,tag=1] at @s[tag=1,tag=!kill] run function game:boat/boatbreak
execute unless entity @e[type=boat,tag=BoatBoat,tag=2] at @s[tag=2,tag=!kill] run function game:boat/boatbreak
execute unless entity @e[type=boat,tag=BoatBoat,tag=3] at @s[tag=3,tag=!kill] run function game:boat/boatbreak
execute unless entity @e[type=boat,tag=BoatBoat,tag=4] at @s[tag=4,tag=!kill] run function game:boat/boatbreak