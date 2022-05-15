##Regeneration timer - regenerates health at a customized rate
scoreboard players add $regenTimer CmdData 0
execute if score $regenTimer CmdData matches 0..59 run scoreboard players add $regenTimer CmdData 1
execute if score $regenTimer CmdData matches 10 run gamerule naturalRegeneration true
execute if score $regenTimer CmdData matches 20 run gamerule naturalRegeneration false
execute if score $regenTimer CmdData matches 40 run gamerule naturalRegeneration true
execute if score $regenTimer CmdData matches 50 run gamerule naturalRegeneration false
execute if score $regenTimer CmdData matches 60.. run scoreboard players set $regenTimer CmdData 0