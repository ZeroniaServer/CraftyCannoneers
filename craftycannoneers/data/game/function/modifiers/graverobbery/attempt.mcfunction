#> Pick 5 random items
scoreboard players set $chooseinv CmdData 5
function inventory:randomizer/choose

#> If we found at least one, spawn the grave
execute if score $pickedinv CmdData matches 1.. run function game:modifiers/graverobbery/spawngrave