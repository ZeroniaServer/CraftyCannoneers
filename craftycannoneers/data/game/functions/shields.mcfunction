execute as @a[tag=!ShieldBlocking,nbt={SelectedItem:{id:"minecraft:shield",tag:{Blocking:1}}}] run item modify entity @s weapon.mainhand game:unblockshield
execute as @a[tag=!ShieldBlocking,nbt=!{SelectedItem:{id:"minecraft:shield",tag:{Blocking:1}}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",tag:{Blocking:1}}]}] run item modify entity @s weapon.offhand game:unblockshield
execute as @a[tag=ShieldBlocking,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",tag:{Blocking:1}}]}] if entity @s[nbt={SelectedItem:{id:"minecraft:shield",tag:{Blocking:0}}}] run item modify entity @s weapon.mainhand game:unblockshield

execute as @a[tag=ShieldBlocking,nbt={SelectedItem:{id:"minecraft:shield",tag:{Blocking:1}}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",tag:{Blocking:0}}]}] run item modify entity @s weapon.offhand game:unblockshield
execute as @a[tag=ShieldBlocking,nbt={SelectedItem:{id:"minecraft:shield",tag:{Blocking:0}}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",tag:{Blocking:1}}]}] run item modify entity @s weapon.mainhand game:unblockshield
execute as @a[tag=ShieldBlocking,nbt={SelectedItem:{id:"minecraft:shield",tag:{Blocking:1}}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",tag:{Blocking:1}}]}] run item modify entity @s weapon.mainhand game:unblockshield
tag @a[tag=ShieldBlocking] remove ShieldBlocking