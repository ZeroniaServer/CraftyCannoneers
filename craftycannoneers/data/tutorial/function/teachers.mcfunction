data merge entity @s {Offers:{Recipes:[]},CustomName:["",{translate:"space.-4096"},{text:"\uE003"},{translate:"space.-4096"}],NoAI:1b,Silent:1b}
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
execute at @s run rotate @s facing entity @p[team=Lobby,distance=..10]
execute at @s[tag=CannonTeacher] unless entity @a[team=Lobby,distance=..10,limit=1] run rotate @s -90 0
execute at @s[tag=ChestTeacher] unless entity @a[team=Lobby,distance=..10,limit=1] run rotate @s 90 0
execute at @s[tag=CombatTeacher] unless entity @a[team=Lobby,distance=..10,limit=1] run rotate @s 0 0
execute at @s[tag=WeakpointTeacher] unless entity @a[team=Lobby,distance=..10,limit=1] run rotate @s 180 0