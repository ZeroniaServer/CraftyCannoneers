#> Don't do anything if $chooseinv is less than 1
execute unless score $chooseinv CmdData matches 1.. run return 0

#> Prepare filtered inventory
function inventory:randomizer/init

#> Determine size of inventory
execute store result score $size CmdData if data storage craftycannoneers:inventory Inventory[]
scoreboard players remove $size CmdData 1

#> Call loop using value of $chooseinv CmdData
function inventory:randomizer/loop