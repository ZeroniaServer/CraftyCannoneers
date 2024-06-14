function arenaclear:loadtrades
execute as @e[type=villager,tag=Trader] run data modify entity @s Offers.Recipes set from storage craftycannoneers:villagers Trades
data remove storage craftycannoneers:villagers Trades