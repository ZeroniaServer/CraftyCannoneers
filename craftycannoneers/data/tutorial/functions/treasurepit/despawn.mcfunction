scoreboard players add @s CmdData 1
execute at @s[scores={CmdData=11..21}] run particle block sand ~ ~ ~ 0 0 0 0.1 2
execute at @s[scores={CmdData=11..21}] run particle block mud ~ ~ ~ 0 0 0 0.1 3
execute at @s[scores={CmdData=11..21}] run playsound chesttutorial master @a ~ ~ ~ 1 1
execute at @s[scores={CmdData=11..21}] run playsound chestbury master @a ~ ~ ~ 1 1
execute at @s[scores={CmdData=11..23}] run tp @s ~ ~-0.1 ~
data remove entity @s[scores={CmdData=40..}] Items
kill @s[scores={CmdData=40..}]