scoreboard players add @s CmdData 1
attribute @s[scores={CmdData=1}] attack_damage base set 4
execute if score @s CmdData matches 6.. run function weapons:bomb/killslime