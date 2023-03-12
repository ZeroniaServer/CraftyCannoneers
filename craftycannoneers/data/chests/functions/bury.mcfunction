scoreboard players add @s CmdData 1
execute at @s[tag=!LChestAS,scores={CmdData=171}] run kill @e[type=hopper_minecart,tag=Looted,distance=..1,sort=nearest]
execute at @s[tag=LChestAS,scores={CmdData=171}] run kill @e[type=chest_minecart,tag=Looted,distance=..1,sort=nearest]
execute at @s[scores={CmdData=171..220}] run tp @s ~ ~-0.033 ~
execute at @s[scores={CmdData=171..200}] run particle block sand ~ ~ ~ 0 0 0 0.1 5 normal @a[team=!Lobby]
execute at @s[scores={CmdData=171..200}] run particle block dirt ~ ~ ~ 0 0 0 0.1 5 normal @a[team=!Lobby]
execute at @s[scores={CmdData=171..200}] run playsound block.composter.fill master @a ~ ~ ~ 1 1.6
execute at @s[scores={CmdData=200}] run playsound block.composter.fill_success master @a ~ ~ ~ 1 1.7
data remove entity @s[scores={CmdData=220..}] Items
kill @s[scores={CmdData=220..}]