#> Prepares filtered inventory
function inventory:randomizer/init

#> Calls loop using value of $chooseinv CmdData
execute if data storage craftycannoneers:inventory Inventory[] if score $chooseinv CmdData matches 1.. run function inventory:randomizer/loop