execute if entity @s[nbt={SelectedItem:{id:"minecraft:shield",tag:{Blocking:0}}}] unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",tag:{Blocking:1}}]}] run item modify entity @s weapon.mainhand game:blockshield
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:shield"}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",tag:{Blocking:0}}]}] run item modify entity @s weapon.offhand game:blockshield

tag @s add ShieldBlocking
advancement revoke @s only game:isblocking