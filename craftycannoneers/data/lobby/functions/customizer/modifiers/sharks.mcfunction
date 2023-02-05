execute if score $Sharks CmdData matches 1 run scoreboard players set $Sharks CmdData 2
execute if score $Sharks CmdData matches 0 run tellraw @s ["","\n",{"translate":"modifier.sharks","color":"#33ccff"},{"text":": ","color":"blue"},{"translate":"modifier.sharks.description","color":"blue"},"\n"]
execute if score $Sharks CmdData matches 0 run scoreboard players set $Sharks CmdData 1
execute if score $Sharks CmdData matches 2 run scoreboard players set $Sharks CmdData 0

function lobby:customizer/modifiers/updatemodifiersigns
scoreboard players reset @s moditimer