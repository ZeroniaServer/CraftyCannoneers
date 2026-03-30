advancement revoke @s only weapons:bomb/throw
tag @s[team=!Lobby,predicate=weapons:bomb_mainhand] add HoldBomb
tag @s[team=!Lobby,predicate=weapons:bomb_offhand] add HoldBomb
execute at @s[tag=HoldBomb,tag=!BombDelay] run function weapons:bomb/clickbomb
tag @s remove HoldBomb