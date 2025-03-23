#> Toggle tips
execute unless score @s GamesPlayed matches 0..3 run scoreboard players set @s GamesPlayed 3

scoreboard players enable @s toggleTips
tellraw @s[scores={toggleTips=1..,GamesPlayed=2..}] [{translate:"tip.cannot_disable",color:"red",with:[{"score":{"name":"@s","objective":"GamesPlayed"},color:"red"}]}]
tellraw @s[scores={toggleTips=1..,GamesPlayed=1}] [{translate:"tip.cannot_disable.one",color:"red"}]
scoreboard players reset @s[scores={toggleTips=1..,GamesPlayed=1..}] toggleTips

tag @s[scores={toggleTips=1..},tag=hideTips] add tempHideTips

tellraw @s[scores={toggleTips=1..,GamesPlayed=..0},tag=!hideTips] [{translate:"tip.disabled",color:"red"}]
tag @s[scores={toggleTips=1..,GamesPlayed=..0},tag=!hideTips] add hideTips

tellraw @s[scores={toggleTips=1..,GamesPlayed=..0},tag=hideTips,tag=tempHideTips] [{translate:"tip.enabled",color:"green"}]
tag @s[scores={toggleTips=1..,GamesPlayed=..0},tag=hideTips,tag=tempHideTips] remove hideTips

tag @s remove tempHideTips
scoreboard players reset @s[scores={toggleTips=1..}] toggleTips