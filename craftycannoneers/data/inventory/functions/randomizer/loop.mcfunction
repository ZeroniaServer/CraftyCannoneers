#> If it's just one item left, no loop necessary
execute if score $size CmdData matches 0 run data modify storage craftycannoneers:inventory Result append from storage craftycannoneers:inventory Inventory[0]
execute if score $size CmdData matches 0 run scoreboard players add $pickedinv CmdData 1
execute if score $size CmdData matches 0 run return 1

#> Otherwise, pick a random slot
$execute store result storage craftycannoneers:randomizer slot int 1 run random value 0..$(size)
function inventory:randomizer/pick with storage craftycannoneers:randomizer
scoreboard players add $pickedinv CmdData 1

#> Keep looping until we've chosen the desired number of slots
execute store result storage craftycannoneers:randomizer size int 1 run scoreboard players remove $size CmdData 1
execute unless score $pickedinv CmdData = $chooseinv CmdData run function inventory:randomizer/loop with storage craftycannoneers:randomizer