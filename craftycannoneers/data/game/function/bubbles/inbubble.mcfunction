scoreboard players add @s bubblewarn 1
execute at @s[scores={bubblewarn=1},predicate=game:bubble/prebubble1] run playsound block.bubble_column.upwards_inside master @s ~ ~ ~ 1 0.8
execute at @s[scores={bubblewarn=1},predicate=game:bubble/prebubble2] run playsound block.bubble_column.upwards_inside master @s ~ ~ ~ 1 0.8
execute at @s[scores={bubblewarn=15}] run playsound block.bubble_column.whirlpool_inside master @s ~ ~ ~ 1 0.8
execute at @s[scores={bubblewarn=15}] run tellraw @s {translate:"game.bubble_column",color:"aqua"}
scoreboard players set @s[scores={bubblewarn=60..}] bubblewarn 14
tag @s remove InBubble

function game:bubbles/block3
function game:bubbles/block3
function game:bubbles/block3