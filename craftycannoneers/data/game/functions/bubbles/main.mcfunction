tag @s[predicate=game:bubble/bubble1] add InBubble
tag @s[predicate=game:bubble/bubble2] add InBubble

scoreboard players add @s[tag=!InBubble,scores={bubblewarn=1..}] bubblewarn 1
scoreboard players reset @s[tag=!InBubble,scores={bubblewarn=60..}] bubblewarn

execute at @s[tag=InBubble] run function game:bubbles/inbubble