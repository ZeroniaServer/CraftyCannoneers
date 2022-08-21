#Particle timers
scoreboard players add $dust CmdData 1
execute if score $dust CmdData matches 5.. run scoreboard players set $dust CmdData 0
scoreboard players add $barrier CmdData 1
execute if score $barrier CmdData matches 80.. run scoreboard players set $barrier CmdData 0