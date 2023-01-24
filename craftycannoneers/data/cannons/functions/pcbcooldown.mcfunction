tag @a[team=!Orange,team=!Purple,tag=PCBCooldown] remove PCBCooldown
scoreboard players reset @a[tag=!PCBCooldown,scores={PCBCooldown=1..}] PCBCooldown

scoreboard players add @a[tag=PCBCooldown] PCBCooldown 1

tag @a[scores={PCBCooldown=50..}] remove PCBCooldown