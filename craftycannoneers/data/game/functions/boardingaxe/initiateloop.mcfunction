#> Replace with correct Harpoons
execute store result score $foundaxe CmdData if data storage craftycannoneers:inventory Items[]
execute if score $foundaxe CmdData matches 1.. run function game:boardingaxe/replaceloop

#> Cleanup
data modify storage craftycannoneers:inventory Items set value []