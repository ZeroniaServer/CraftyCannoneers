scoreboard players add $StormTime CmdData 1

execute if score $StormTime CmdData matches 1 run weather thunder
execute if score $StormTime CmdData matches 75 run summon lightning_bolt 70 -28 0 {Tags:["StormEntity"]}
execute if score $StormTime CmdData matches 75 run summon lightning_bolt 70 -28 0 {Tags:["StormEntity"]}

execute if score $StormTime CmdData matches 90 run summon lightning_bolt 70 -28 0 {Tags:["StormEntity"]}
execute if score $StormTime CmdData matches 90 run summon lightning_bolt 70 -28 0 {Tags:["StormEntity"]}

execute if score $StormTime CmdData matches 690.. run summon marker 70 -27 0 {Tags:["StormEventPicker","StormEntity"]}
execute as @e[type=marker,tag=StormEventPicker,limit=1] run function game:modifiers/seastorms/pickevent

#> Lightning
execute as @e[type=lightning_bolt] at @s run function game:modifiers/seastorms/reallightning
execute as @e[type=marker,tag=LightningMarker] at @s run function game:modifiers/seastorms/marker