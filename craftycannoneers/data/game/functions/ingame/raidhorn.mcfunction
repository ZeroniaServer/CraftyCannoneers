tag @a[team=!Lobby,predicate=game:horn_mainhand] add HoldHorn
tag @a[team=!Lobby,predicate=game:horn_offhand] add HoldHorn
scoreboard players add @a[tag=HoldHorn,scores={eyeclick=1..}] horntime 1
execute as @a[scores={horntime=1..}] unless entity @s[scores={eyeclick=1..}] run title @s subtitle {"text":" ","color":"white"}
execute as @a[scores={horntime=1..}] unless entity @s[scores={eyeclick=1..}] run scoreboard players reset @s horntime

#Titles are epic
execute as @a[tag=HoldHorn,scores={horntime=1..34}] at @s anchored eyes run particle note ^ ^ ^0.6 0.2 0.2 0.2 0.1 1 force
execute as @a[tag=HoldHorn,scores={horntime=1..34}] run title @s title {"text":" ","color":"white"}
execute as @a[tag=HoldHorn,scores={horntime=1..3}] run title @s subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=HoldHorn,scores={horntime=4..6}] run title @s subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|","bold":true,"color":"green"},{"text":"|||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=HoldHorn,scores={horntime=7..9}] run title @s subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||","bold":true,"color":"green"},{"text":"||||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=HoldHorn,scores={horntime=10..12}] run title @s subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||","bold":true,"color":"green"},{"text":"|||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=HoldHorn,scores={horntime=13..15}] run title @s subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||","bold":true,"color":"green"},{"text":"||||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=HoldHorn,scores={horntime=16..18}] run title @s subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||","bold":true,"color":"green"},{"text":"|||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=HoldHorn,scores={horntime=19..21}] run title @s subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||","bold":true,"color":"green"},{"text":"||||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=HoldHorn,scores={horntime=22..24}] run title @s subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||","bold":true,"color":"green"},{"text":"|||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=HoldHorn,scores={horntime=25..27}] run title @s subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||","bold":true,"color":"green"},{"text":"||","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=HoldHorn,scores={horntime=28..30}] run title @s subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"|||||||||","bold":true,"color":"green"},{"text":"|","bold":true,"color":"red"},{"text":" ]","color":"gray"}]
execute as @a[tag=HoldHorn,scores={horntime=31..33}] run title @s subtitle ["",{"text":"Starting Raid... ","color":"dark_aqua"},{"text":"[ ","color":"gray"},{"text":"||||||||||","bold":true,"color":"green"},{"text":" ]","color":"gray"}]

# Raid effects
execute as @a[team=Purple,tag=HoldHorn,scores={horntime=34..}] at @s run effect give @a[team=Purple,distance=0.001..7] strength 28 1 true
execute as @a[team=Purple,tag=HoldHorn,scores={horntime=34..}] at @s run effect give @a[team=Purple,distance=7.1..14] strength 20 1 true
execute as @a[team=Purple,tag=HoldHorn,scores={horntime=34..}] at @s run effect give @a[team=Purple,distance=14.1..20] strength 20 0 true
execute as @a[team=Purple,tag=HoldHorn,scores={horntime=34..}] at @s run effect give @a[team=Purple,distance=20.1..] strength 16 0 true
execute as @a[team=Purple,tag=HoldHorn,scores={horntime=34..}] at @s run effect give @a[team=Purple] regeneration 1 4 true
execute as @a[team=Purple,tag=HoldHorn,scores={horntime=34..}] at @s run effect give @a[team=Purple] haste 12 1 true
execute as @a[team=Purple,tag=HoldHorn,scores={horntime=34..}] as @a[team=Purple] at @s run particle note ~ ~1 ~ 0.4 0.6 0.4 0.1 15 force
execute as @a[team=Purple,tag=HoldHorn,scores={horntime=34..}] as @a[team=Purple] at @s run particle note ^ ^1 ^0.6 0.3 0.3 0.3 0.1 10 force @s
execute as @a[team=Purple,tag=HoldHorn,scores={horntime=34..}] as @a[team=Purple] at @s run playsound block.note_block.flute master @s ~ ~ ~ 1 0

execute as @a[team=Orange,tag=HoldHorn,scores={horntime=34..}] at @s run effect give @a[team=Orange,distance=0.001..7] strength 28 1 true
execute as @a[team=Orange,tag=HoldHorn,scores={horntime=34..}] at @s run effect give @a[team=Orange,distance=7.1..14] strength 20 1 true
execute as @a[team=Orange,tag=HoldHorn,scores={horntime=34..}] at @s run effect give @a[team=Orange,distance=14.1..20] strength 20 0 true
execute as @a[team=Orange,tag=HoldHorn,scores={horntime=34..}] at @s run effect give @a[team=Orange,distance=20.1..] strength 16 0 true
execute as @a[team=Orange,tag=HoldHorn,scores={horntime=34..}] at @s run effect give @a[team=Orange] regeneration 1 4 true
execute as @a[team=Orange,tag=HoldHorn,scores={horntime=34..}] at @s run effect give @a[team=Orange] haste 12 1 true
execute as @a[team=Orange,tag=HoldHorn,scores={horntime=34..}] as @a[team=Orange] at @s run particle note ~ ~1 ~ 0.4 0.6 0.4 0.1 15 force
execute as @a[team=Orange,tag=HoldHorn,scores={horntime=34..}] as @a[team=Orange] at @s run particle note ^ ^1 ^0.6 0.3 0.3 0.3 0.1 10 force @s
execute as @a[team=Orange,tag=HoldHorn,scores={horntime=34..}] as @a[team=Orange] at @s run playsound block.note_block.flute master @s ~ ~ ~ 1 0

execute as @a[tag=HoldHorn,scores={horntime=34..}] at @s run effect give @s strength 20 0 true



execute as @a[predicate=game:horn_mainhand,tag=HoldHorn,scores={horntime=34..}] run item replace entity @s weapon.mainhand with air
execute as @a[predicate=game:horn_offhand,tag=HoldHorn,scores={horntime=34..}] run item replace entity @s weapon.offhand with air
execute as @a[tag=HoldHorn,scores={horntime=34..}] run title @s subtitle {"text":" ","color":"white"}
execute as @a[team=Orange,tag=HoldHorn,scores={horntime=34..}] at @s run playsound raidhorn master @a[team=Orange] ~ ~ ~ 6 1
execute as @a[team=Orange,tag=HoldHorn,scores={horntime=34..}] at @s run playsound raidhornenemy master @a[team=!Orange] ~ ~ ~ 6 1
execute as @a[team=Purple,tag=HoldHorn,scores={horntime=34..}] at @s run playsound raidhorn master @a[team=Purple] ~ ~ ~ 6 1
execute as @a[team=Purple,tag=HoldHorn,scores={horntime=34..}] at @s run playsound raidhornenemy master @a[team=!Purple] ~ ~ ~ 6 1
execute as @a[tag=HoldHorn,scores={horntime=34..}] run scoreboard players reset @s horntime
execute as @a[tag=HoldHorn,scores={horntime=34..}] run tag @s remove HoldHorn

tag @a[tag=HoldHorn] remove HoldHorn