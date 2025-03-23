#> If its just one item left, no loop necessary
execute if score $size CmdData matches 0 run data modify storage craftycannoneers:inventory Result append from storage craftycannoneers:inventory Inventory[0]
execute if score $size CmdData matches 0 run scoreboard players add $pickedinv CmdData 1
execute if score $size CmdData matches 0 run return 1

#> Otherwise, pick a random slot
execute store result score $slot CmdData run random value 0..26
scoreboard players operation $slot CmdData %= $size CmdData
execute store result storage craftycannoneers:randomizer slot int 1 run scoreboard players get $slot CmdData
function inventory:randomizer/pick with storage craftycannoneers:randomizer
scoreboard players add $pickedinv CmdData 1

#> Keep looping until weve chosen the desired number of slots
scoreboard players remove $size CmdData 1
execute unless score $pickedinv CmdData = $chooseinv CmdData run function inventory:randomizer/loop