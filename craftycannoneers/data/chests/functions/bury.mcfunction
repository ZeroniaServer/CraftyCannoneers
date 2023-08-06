scoreboard players add @s CmdData 1

#> Special case for Graves
execute at @s[tag=grave,scores={CmdData=171..}] run function game:modifiers/graverobbery/breakgrave
execute if entity @s[tag=grave] run return 0

execute at @s[scores={CmdData=171}] on passengers run kill @s
execute at @s[scores={CmdData=171..220}] run tp @s ~ ~-0.033 ~
execute at @s[scores={CmdData=171..200}] run particle block sand ~ ~ ~ 0 0 0 0.1 5 normal @a[team=!Lobby]
execute at @s[scores={CmdData=171..200}] run particle block dirt ~ ~ ~ 0 0 0 0.1 5 normal @a[team=!Lobby]
execute at @s[scores={CmdData=171..200}] run playsound chestbury master @a ~ ~ ~ 1 1.6
execute at @s[scores={CmdData=200}] run playsound chestbury2 master @a ~ ~ ~ 1 1.7
data remove entity @s[scores={CmdData=220..}] Items
kill @s[scores={CmdData=220..}]