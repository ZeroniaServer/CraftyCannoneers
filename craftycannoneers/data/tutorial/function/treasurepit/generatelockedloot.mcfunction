setblock -69 -64 0 barrel{LootTable:"tutorial:locked_treasure"}
setblock -69 -64 1 dropper
execute as @a[team=Lobby,limit=1] run loot replace block -69 -64 1 container.0 loot weapons:gold
setblock -69 -64 2 redstone_block
schedule function tutorial:treasurepit/postgenerateloot 5t append