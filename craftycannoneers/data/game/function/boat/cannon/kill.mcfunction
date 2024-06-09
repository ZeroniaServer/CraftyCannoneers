execute at @s[type=camel] run loot spawn ~ ~ ~ loot weapons:gunpowder_return
execute on passengers unless entity @s[type=player] run function game:boat/cannon/kill
function arenaclear:kill