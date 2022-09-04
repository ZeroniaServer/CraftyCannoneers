execute if score $gamestate CmdData matches 2.. store result score @s invCount if data entity @s Inventory[]
#Doesn't count armor
execute if score $gamestate CmdData matches 2.. run scoreboard players remove @s[nbt={Inventory:[{Slot:103b}]}] invCount 1
execute if score $gamestate CmdData matches 2.. run scoreboard players remove @s[nbt={Inventory:[{Slot:102b}]}] invCount 1
execute if score $gamestate CmdData matches 2.. run scoreboard players remove @s[nbt={Inventory:[{Slot:101b}]}] invCount 1
execute if score $gamestate CmdData matches 2.. run scoreboard players remove @s[nbt={Inventory:[{Slot:100b}]}] invCount 1
advancement revoke @s only game:invcount