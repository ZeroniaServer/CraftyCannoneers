execute store result score $TotalChests CmdData if entity @e[type=armor_stand,tag=chest,tag=!LChestAS,tag=!Looted]
execute unless score $TotalChests CmdData matches 3.. run function chests:spawnnew
execute unless score $TotalChests CmdData matches 3.. run function chests:spawnnew