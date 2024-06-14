scoreboard players set #threshold crabs 20
execute unless score $total crabs = $curr crabs unless score #update crabs >= #threshold crabs run scoreboard players add #update crabs 1
execute if score #update crabs matches 20.. run scoreboard players operation $total crabs = $curr crabs
execute if score $total crabs = $curr crabs run scoreboard players set #update crabs 0