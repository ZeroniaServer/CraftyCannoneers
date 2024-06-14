scoreboard players add @s CmdData 1
execute if score @s CmdData matches 11 on passengers run kill
execute if score @s CmdData matches 11..21 run particle block{block_state:"sand"} ~ ~ ~ 0 0 0 0.1 2
execute if score @s CmdData matches 11..21 run particle block{block_state:"mud"} ~ ~ ~ 0 0 0 0.1 3
execute if score @s CmdData matches 11..21 run playsound chesttutorial master @a ~ ~ ~ 1 1
execute if score @s CmdData matches 11..21 run playsound chestbury master @a ~ ~ ~ 1 1
execute if score @s CmdData matches 11..23 run tp @s ~ ~-0.1 ~
kill @s[scores={CmdData=40..}]