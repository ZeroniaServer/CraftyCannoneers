#> Bossbar
execute if score $gamestate CmdData matches 0 unless entity @a[team=Purple] unless entity @a[team=Orange] run bossbar set lobbybar value 0
execute if score $gamestate CmdData matches 0 unless entity @a[team=Purple] unless entity @a[team=Orange] run bossbar set lobbybar name ["",{"text":"Awaiting ","color":"aqua"},{"text":"Purple","bold":true,"color":"dark_purple"},{"text":" and ","color":"aqua"},{"text":"Orange","bold":true,"color":"gold"},{"text":" players...","color":"aqua"}]
execute if score $gamestate CmdData matches 0 if entity @a[team=Purple] unless entity @a[team=Orange] run bossbar set lobbybar value 5
execute if score $gamestate CmdData matches 0 if entity @a[team=Purple] unless entity @a[team=Orange] run bossbar set lobbybar name ["",{"text":"Awaiting ","color":"aqua"},{"text":"Orange","bold":true,"color":"gold"},{"text":" players...","color":"aqua"}]
execute if score $gamestate CmdData matches 0 unless entity @a[team=Purple] if entity @a[team=Orange] run bossbar set lobbybar value 5
execute if score $gamestate CmdData matches 0 unless entity @a[team=Purple] if entity @a[team=Orange] run bossbar set lobbybar name ["",{"text":"Awaiting ","color":"aqua"},{"text":"Purple","bold":true,"color":"dark_purple"},{"text":" players...","color":"aqua"}]
execute if score $gamestate CmdData matches 0 if entity @a[team=Purple] if entity @a[team=Orange] run bossbar set lobbybar value 10
execute if score $gamestate CmdData matches 0 if entity @a[team=Purple] if entity @a[team=Orange] run bossbar set lobbybar name {"text":"Waiting for teams to ready up...","color":"aqua"}
execute unless score $gamestate CmdData matches 2.. unless score $Countdown CmdData matches 1.. run bossbar set lobbybar color blue

#> Team balancing
execute store result score $InPurple CmdData if entity @a[team=Purple]
execute store result score $InOrange CmdData if entity @a[team=Orange]
scoreboard players operation $InTeams CmdData = $InPurple CmdData
scoreboard players operation $InTeams CmdData += $InOrange CmdData

#> Behavior
execute as @e[type=marker,tag=joinpad] at @s run function lobby:joinpads/behavior