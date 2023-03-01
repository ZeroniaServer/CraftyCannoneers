#> Save player's current inventory
function inventory:save

#> Place shulker box
setblock 0 300 0 yellow_shulker_box

#> Set hotbar
execute if entity @s[tag=fullStackMainhand] run function weapons:barrel/replace/hotbar

#> Set offhand
execute if entity @s[tag=fullStackOffhand] run function weapons:barrel/replace/offhand

#> Load modified copy of inventory
function inventory:load
item modify entity @s[tag=fullStackMainhand] weapon.mainhand weapons:blank
item modify entity @s[tag=fullStackOffhand] weapon.offhand weapons:blank

#> Cleanup
setblock 0 300 0 air
function inventory:clear