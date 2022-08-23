scoreboard players add @s CmdData 1
execute if entity @s[scores={CmdData=11..21}] run particle block sand ~ ~ ~ 0 0 0 0.1 2
execute if entity @s[scores={CmdData=11..21}] run particle block mud ~ ~ ~ 0 0 0 0.1 3
execute if entity @s[scores={CmdData=11..21}] run playsound chesttutorial master @a ~ ~ ~ 1 1
execute if entity @s[scores={CmdData=11..21}] run playsound chestbury master @a ~ ~ ~ 1 1
execute if entity @s[scores={CmdData=11..23}] run tp @s ~ ~-0.1 ~
execute if entity @s[scores={CmdData=40..}] run tp @s ~ ~-200 ~
execute if entity @s[scores={CmdData=40..}] run kill @s