execute if entity @s[advancements={game:invcount={rock=true}}] run function lobby:rock/clearrock
advancement revoke @s[advancements={game:invcount=true}] only game:invcount

execute if score $gamestate CmdData matches 2.. store result score @s invCount if data entity @s Inventory[]
#Doesn't count armor
execute if score $gamestate CmdData matches 2.. run scoreboard players remove @s[predicate=!game:no_helmet] invCount 1
execute if score $gamestate CmdData matches 2.. run scoreboard players remove @s[predicate=!game:no_chestplate] invCount 1
execute if score $gamestate CmdData matches 2.. run scoreboard players remove @s[predicate=!game:no_leggings] invCount 1
execute if score $gamestate CmdData matches 2.. run scoreboard players remove @s[predicate=!game:no_boots] invCount 1

execute if score $gamestate CmdData matches 2.. run function game:ingame/arrowcount