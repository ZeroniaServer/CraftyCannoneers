#> Toggle tips
execute unless score @s GamesPlayed matches 0..3 run scoreboard players set @s GamesPlayed 3

scoreboard players enable @s toggleTips
tellraw @s[scores={toggleTips=1..,GamesPlayed=2..}] [{"text":"You cannot do this until you play ","color":"red"},{"score":{"name":"@s","objective":"GamesPlayed"},"color":"red"},{"text":" more games."}]
tellraw @s[scores={toggleTips=1..,GamesPlayed=1}] [{"text":"You cannot do this until you play 1 more game.","color":"red"}]
scoreboard players reset @s[scores={toggleTips=1..,GamesPlayed=1..}] toggleTips

tag @s[scores={toggleTips=1..},tag=hideTips] add tempHideTips

tellraw @s[scores={toggleTips=1..,GamesPlayed=..0},tag=!hideTips] [{"text":"You have disabled ingame tips. You can re-enable them using your Lobby Book.","color":"red"}]
tag @s[scores={toggleTips=1..,GamesPlayed=..0},tag=!hideTips] add hideTips

tellraw @s[scores={toggleTips=1..,GamesPlayed=..0},tag=hideTips,tag=tempHideTips] [{"text":"You have enabled ingame tips. You can disable them using your Lobby Book.","color":"green"}]
tag @s[scores={toggleTips=1..,GamesPlayed=..0},tag=hideTips,tag=tempHideTips] remove hideTips

tag @s remove tempHideTips
scoreboard players reset @s[scores={toggleTips=1..}] toggleTips