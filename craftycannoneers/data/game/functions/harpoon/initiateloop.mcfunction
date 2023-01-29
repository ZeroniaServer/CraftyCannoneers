#> Replace with correct Harpoons
execute store result score $foundharpoon CmdData if data storage craftycannoneers:inventory Items[]
execute if score $foundharpoon CmdData matches 1.. run function game:harpoon/replaceloop

#> Cleanup
data modify storage craftycannoneers:inventory Items set value []