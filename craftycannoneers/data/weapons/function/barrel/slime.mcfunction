scoreboard players add @s CmdData 1
attribute @s[scores={CmdData=1}] attack_damage base set 4
attribute @s[scores={CmdData=6}] scale base set 0
tp @s[scores={CmdData=6..}] ~ -64 ~
execute if score @s CmdData matches 100.. run function weapons:bomb/killslime