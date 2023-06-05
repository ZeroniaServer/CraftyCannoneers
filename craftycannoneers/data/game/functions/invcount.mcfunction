execute if entity @s[advancements={game:invcount={rock=true}}] run function lobby:rock/clearrock

execute if entity @s[team=!Lobby,advancements={game:invcount={unfull=true}}] run tag @s remove fullinv
execute if entity @s[team=!Lobby,advancements={game:invcount={full=true}}] run tag @s add fullinv

execute if entity @s[team=Lobby,advancements={game:invcount={unfull_lobby=true}}] run tag @s remove fullinv
execute if entity @s[team=Lobby,advancements={game:invcount={full_lobby=true}}] run tag @s add fullinv

execute unless entity @s[advancements={game:invcount={rock=true}}] if score $gamestate CmdData matches 2.. run function game:ingame/arrowcount

execute if score $Wildlife CmdData matches 1 store result score @s hasCrabTraps run clear @s mooshroom_spawn_egg{CrabTrap:1b,Empty:0b} 0

advancement revoke @s only game:invcount