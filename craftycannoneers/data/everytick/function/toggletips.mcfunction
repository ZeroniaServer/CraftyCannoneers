#> Toggle tips
scoreboard players enable @s toggleTips

tag @s[scores={toggleTips=1..},tag=hideTips] add tempHideTips

tellraw @s[scores={toggleTips=1..},tag=!hideTips] [{translate:"tip.disabled",color:"red"}]
tag @s[scores={toggleTips=1..},tag=!hideTips] add hideTips

tellraw @s[scores={toggleTips=1..},tag=hideTips,tag=tempHideTips] [{translate:"tip.enabled",color:"green"}]
tag @s[scores={toggleTips=1..},tag=hideTips,tag=tempHideTips] remove hideTips

tag @s remove tempHideTips
scoreboard players reset @s[scores={toggleTips=1..}] toggleTips