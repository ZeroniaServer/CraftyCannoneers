scoreboard players add $Tip CmdData 1
execute if score $Tip CmdData matches 1200.. run tag @e[type=marker,tag=TipSet,limit=1,sort=random] add Selected
execute as @e[type=marker,tag=TipSet,tag=Selected] run function tutorial:tips/selectedtip
execute if score $Tip CmdData matches 1200.. run scoreboard players set $Tip CmdData 0