scoreboard players operation @s[type=camel] CmdData = @s PowerM
execute at @s[type=camel] run loot spawn ~ ~ ~ loot weapons:gunpowder_return
execute on passengers run function game:boat/cannon/kill
function arenaclear:kill