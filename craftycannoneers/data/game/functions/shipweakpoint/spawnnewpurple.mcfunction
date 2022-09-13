execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run tellraw @a[team=Orange] ["","\n",{"text":"Enemy Weakpoint destroyed!","italic":true,"color":"green"},"\n",{"text":"Something destroyed an ","color":"dark_aqua"},{"text":"exposed","underlined":true,"color":"dark_green"},{"text":" Weakpoint.","color":"dark_aqua"},"\n"]
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run tellraw @a[team=Purple] ["","\n",{"text":"Something destroyed of your ship's Weakpoints!","color":"red"},"\n"]
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=!Spotted] run tellraw @a[team=Orange] ["","\n",{"text":"Enemy Weakpoint destroyed!","italic":true,"color":"green"},"\n",{"text":"Something destroyed an ","color":"dark_aqua"},{"text":"unexposed","underlined":true,"color":"red"},{"text":" Weakpoint. No bonus damage dealt.","color":"dark_aqua"},"\n"]
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run scoreboard players add $DamagePurple CmdData 85
execute unless score $OrangeWPDelay CmdData matches 1.. if entity @s[type=slime,tag=Spotted] run scoreboard players add $CritPurple CmdData 87

tp @e[type=slime,tag=Weakpoint,tag=Orange] 0 -1000 0
kill @e[type=#game:weakpoint,tag=Weakpoint,tag=Orange]

scoreboard players add $OrangeWP CmdData 1

tag @e[type=marker,tag=WeakpointLoc,tag=Purple,sort=random,limit=1] add SelectedWeakP

execute as @e[type=marker,tag=SelectedWeakP,tag=Purple] at @s unless block ~ ~ ~ air run summon slime ~ ~ ~2 {PersistenceRequired:1b,Tags:["Weakpoint","Orange"],Invulnerable:1b,Size:3,NoAI:1b,NoGravity:1b,Silent:1b}
execute as @e[type=marker,tag=SelectedWeakP,tag=Purple] at @s unless block ~ ~ ~ air run summon marker ~1 ~ ~1 {Tags:["Weakpoint","XParticle","1","Orange"]}
execute as @e[type=marker,tag=SelectedWeakP,tag=Purple] at @s unless block ~ ~ ~ air run summon marker ~-1 ~ ~1 {Tags:["Weakpoint","XParticle","2","Orange"]}

team join NoName @e[type=slime,tag=Weakpoint]

execute if score $OrangeWP CmdData matches 7.. run tellraw @a[team=Orange] ["",{"text":"All enemy Weakpoints have been destroyed!","color":"aqua"},"\n"]
execute if score $OrangeWP CmdData matches 7.. run tellraw @a[team=Purple] ["",{"text":"All of your Weakpoints have been destroyed!","color":"red"},"\n"]

kill @e[type=marker,tag=SelectedWeakP]