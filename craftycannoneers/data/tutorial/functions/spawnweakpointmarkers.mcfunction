summon marker ~ ~ ~ {Tags:["FakeWeakpoint","FakePointMarker","new"]}
summon marker ~ ~ ~1 {Tags:["FakeWeakpoint","FXParticle","1","new"]}
summon marker ~ ~ ~-1 {Tags:["FakeWeakpoint","FXParticle","2","new"]}
execute if entity @s[tag=S1] run tag @e[type=marker,tag=FakeWeakpoint,tag=new] add S1
execute if entity @s[tag=S2] run tag @e[type=marker,tag=FakeWeakpoint,tag=new] add S2
execute if entity @s[tag=S3] run tag @e[type=marker,tag=FakeWeakpoint,tag=new] add S3
execute if entity @s[tag=S4] run tag @e[type=marker,tag=FakeWeakpoint,tag=new] add S4
execute if entity @s[tag=S5] run tag @e[type=marker,tag=FakeWeakpoint,tag=new] add S5
execute if entity @s[tag=S6] run tag @e[type=marker,tag=FakeWeakpoint,tag=new] add S6
execute if entity @s[tag=S7] run tag @e[type=marker,tag=FakeWeakpoint,tag=new] add S7
tag @e[type=marker,tag=FakeWeakpoint,tag=new] remove new