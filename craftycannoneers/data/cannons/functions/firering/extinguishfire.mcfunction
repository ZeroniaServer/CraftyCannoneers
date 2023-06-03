execute unless predicate cannons:safezones/tutorial run gamerule doFireTick false
execute if predicate cannons:safezones/tutorial unless score $gamestate CmdData matches 2.. run gamerule doFireTick false

execute if predicate cannons:ships/purple run summon marker 39 -40 -68 {Tags:["FireRemover","Purple"]}
execute if predicate cannons:ships/orange run summon marker 34 -40 43 {Tags:["FireRemover","Orange"]}
execute if predicate cannons:safezones/tutorial run summon marker -410 -40 -83 {Tags:["FireRemover","Tutorial"]}

tag @s add self
scoreboard players operation @e[type=marker,tag=FireRemover,tag=!HasUUID] playerUUID = @s playerUUID
execute as @e[type=marker,tag=FireRemover,tag=!HasUUID] at @s run data modify entity @s CustomName set from entity @e[type=marker,tag=self,limit=1,sort=nearest] CustomName
tag @e[type=marker,tag=FireRemover,tag=!HasUUID] add HasUUID
tag @s remove self

execute as @e[type=marker,tag=FireRemover] at @s run function cannons:firering/extinguishloop
# execute unless predicate cannons:safezones/tutorial run gamerule doFireTick true
# execute if predicate cannons:safezones/tutorial unless score $gamestate CmdData matches 2.. run gamerule doFireTick true