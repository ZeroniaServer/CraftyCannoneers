#> Attempt to pick a random slot
execute as @e[type=marker,tag=invrand,tag=!invalid,tag=!picked,limit=1,sort=random] run function inventory:randomizer/attempt

#> Keep looping until we've chosen the desired number of slots
execute if data storage craftycannoneers:inventory Inventory[] unless score $pickedinv CmdData = $chooseinv CmdData if entity @e[type=marker,tag=invrand,tag=!invalid,limit=1] run function inventory:randomizer/loop