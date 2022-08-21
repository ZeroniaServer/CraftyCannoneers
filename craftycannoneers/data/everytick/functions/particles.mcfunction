#Particle timers
scoreboard players add $dust6 CmdData 1
execute if score $dust6 CmdData matches 5.. run scoreboard players set $dust6 CmdData 0

scoreboard players add $dust3 CmdData 1
execute if score $dust3 CmdData matches 2.. run scoreboard players set $dust3 CmdData 0

scoreboard players add $dust2 CmdData 1
execute if score $dust2 CmdData matches 1.. run scoreboard players set $dust2 CmdData 0

scoreboard players add $barrier CmdData 1
execute if score $barrier CmdData matches 79.. run scoreboard players set $barrier CmdData 0