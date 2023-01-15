execute if entity @s[tag=Tip1] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.1","color":"gray"}]
execute if entity @s[tag=Tip2] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.2","color":"gray"}]
execute if entity @s[tag=Tip3] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.3","color":"gray"}]
execute if entity @s[tag=Tip4] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.4","color":"gray"}]
execute if entity @s[tag=Tip5] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.5","color":"gray"}]
execute if entity @s[tag=Tip6] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.6","color":"gray"}]
execute if entity @s[tag=Tip7] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.7","color":"gray"}]
execute if entity @s[tag=Tip8] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.8","color":"gray"}]
execute if entity @s[tag=Tip9] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.9","color":"gray"}]
execute if entity @s[tag=Tip10] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.10","color":"gray"}]
execute if entity @s[tag=Tip11] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.11","color":"gray"}]
execute if entity @s[tag=Tip12] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.12","color":"gray"}]
execute if entity @s[tag=Tip13] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.13","color":"gray"}]
execute if entity @s[tag=Tip14] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.14","color":"gray"}]
execute if entity @s[tag=Tip15] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.15","color":"gray"}]
execute if entity @s[tag=Tip16] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.16","color":"gray"}]
execute if entity @s[tag=Tip17] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.17","color":"gray"}]
execute if entity @s[tag=Tip18] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.18","color":"gray"}]
execute if entity @s[tag=Tip19] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.19","color":"gray"}]
execute if entity @s[tag=Tip20] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.20","color":"gray"}]
execute if entity @s[tag=Tip21] run tellraw @a[tag=!hideTips] ["",{"text":"<","color":"aqua"},{"translate":"tip.tip","bold":true,"color":"dark_aqua"},{"text":"> ","color":"aqua"},{"translate":"tip.21","color":"gray"}]

execute as @a[tag=!hideTips,scores={GamesPlayed=2..}] run tellraw @s ["",{"translate":"tip.note.1","color":"dark_aqua"},{"score":{"name":"@s","objective":"GamesPlayed"},"color":"dark_aqua"},{"translate":"tip.note.2","color":"dark_aqua"}]
tellraw @a[tag=!hideTips,scores={GamesPlayed=1}] ["",{"translate":"tip.note.3","color":"dark_aqua"}]
tellraw @a[tag=!hideTips,scores={GamesPlayed=..0}] ["",{"text":"tip.note.4","color":"dark_aqua"},{"translate":"tip.here","color":"green","clickEvent":{"action":"run_command","value":"/trigger toggleTips"},"hoverEvent":{"action":"show_text","contents":[{"translate":"tip.here.hover"}]}},{"translate":"tip.note.5","color":"dark_aqua"}]

scoreboard players set $Tip CmdData 0

execute unless entity @e[type=marker,tag=TipSet] run function tutorial:tips/newset
kill @s