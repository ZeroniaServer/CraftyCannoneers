setblock -69 -64 0 barrel{LootTable:"chests:locked_treasure"}
setblock -69 -64 1 dropper
loot replace block -69 -64 1 container.0 loot weapons:gold
setblock -69 -64 2 redstone_block
schedule function chests:postgenerateloot 5t append