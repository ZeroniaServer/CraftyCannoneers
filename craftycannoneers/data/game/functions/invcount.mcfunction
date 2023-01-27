execute if entity @s[advancements={game:invcount={rock=true}}] run function lobby:rock/clearrock

execute if entity @s[advancements={game:invcount={unfull=true}}] run tag @s remove fullinv
execute if entity @s[advancements={game:invcount={full=true}}] run tag @s add fullinv

execute unless entity @s[advancements={game:invcount={rock=true}}] if score $gamestate CmdData matches 2.. run function game:ingame/arrowcount

advancement revoke @s only game:invcount