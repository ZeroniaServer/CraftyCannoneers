#> Prints each line of the Modifier list
scoreboard players add $currentline CmdData 1

execute if score $currentline CmdData matches 1 if data storage craftycannoneers:modifiers line[1] run tellraw @a {"translate":"customizer.current_modifiers","color":"blue","with":[["",{"nbt":"line[0][]","storage":"craftycannoneers:modifiers","interpret":true,"separator":{"text":", ","color":"gray"}},{"text":", ","color":"gray"}]]}
execute unless score $currentline CmdData matches 1 if data storage craftycannoneers:modifiers line[1] run tellraw @a {"translate":"customizer.current_modifiers","color":"#585c24","with":[["",{"nbt":"line[0][]","storage":"craftycannoneers:modifiers","interpret":true,"separator":{"text":", ","color":"gray"}},{"text":", ","color":"gray"}]]}

execute if score $currentline CmdData matches 1 if data storage craftycannoneers:modifiers line[0] unless data storage craftycannoneers:modifiers line[1] run tellraw @a {"translate":"customizer.current_modifiers","color":"blue","with":[["",{"nbt":"line[0][]","storage":"craftycannoneers:modifiers","interpret":true,"separator":{"text":", ","color":"gray"}}]]}
execute unless score $currentline CmdData matches 1 if data storage craftycannoneers:modifiers line[0] unless data storage craftycannoneers:modifiers line[1] run tellraw @a {"translate":"customizer.current_modifiers","color":"#585c24","with":[["",{"nbt":"line[0][]","storage":"craftycannoneers:modifiers","interpret":true,"separator":{"text":", ","color":"gray"}}]]}

data remove storage craftycannoneers:modifiers line[0]
execute if data storage craftycannoneers:modifiers line[0] run function lobby:customizer/modifiers/printlist
execute unless data storage craftycannoneers:modifiers line[0] run scoreboard players reset $currentline CmdData
execute unless data storage craftycannoneers:modifiers line[0] run data remove storage craftycannoneers:modifiers line