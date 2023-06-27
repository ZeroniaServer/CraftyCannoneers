#> Hold bomb tags
tag @a[team=!Lobby,predicate=weapons:bomb_mainhand] add HoldBomb
tag @a[team=!Lobby,predicate=weapons:bomb_offhand] add HoldBomb

#> Click bomb
execute as @a[tag=HoldBomb,tag=!BombDelay,scores={eyeclick=1..}] at @s run function weapons:bomb/clickbomb

#> Bomb throw delay
scoreboard players add @a[tag=BombDelay] BombDelay 1
tag @a[tag=BombDelay,scores={BombDelay=5..}] remove BombDelay
scoreboard players reset @a[tag=!BombDelay,scores={BombDelay=1..}] BombDelay

#> Reset
tag @a remove HoldBomb