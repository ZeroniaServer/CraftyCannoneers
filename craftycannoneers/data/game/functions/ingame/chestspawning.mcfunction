scoreboard players set $TotalChests CmdData 0
execute as @e[tag=CChestAS,tag=!Looted] run scoreboard players add $TotalChests CmdData 1

execute unless score $TotalChests CmdData matches 3.. run function chests:spawnnew
execute unless score $TotalChests CmdData matches 3.. run function chests:spawnnew