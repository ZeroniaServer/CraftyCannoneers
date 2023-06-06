#> Rotate the sail along with the boat
execute on vehicle rotated as @s on passengers positioned as @s[type=!player] run tp @s ~ ~ ~ ~ ~

#> Handle Boat Cannon if enabled
execute if score $BoatCannons CmdData matches 1 run function game:boat/movecannon

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
kill @s[predicate=!game:boat/inboat]
execute unless entity @e[type=boat,tag=BoatBoat,tag=1,distance=..2] run kill @s[tag=1]
execute unless entity @e[type=boat,tag=BoatBoat,tag=2,distance=..2] run kill @s[tag=2]
execute unless entity @e[type=boat,tag=BoatBoat,tag=3,distance=..2] run kill @s[tag=3]
execute unless entity @e[type=boat,tag=BoatBoat,tag=4,distance=..2] run kill @s[tag=4]