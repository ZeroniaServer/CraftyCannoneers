tag @s add TrapExplode
execute store result score @s playerUUID run data get entity @a[tag=hitter,limit=1] UUID[0]
setblock ~ 256 ~ oak_sign
execute as @a[tag=hitter,limit=1] run data modify block ~ 256 ~ front_text.messages[0] set value ["",{translate:"cargobarrel.trap.using",with:[{selector:"@a[limit=1,tag=hitter]"}]}]
execute unless entity @a[tag=hitter,limit=1] run data modify block ~ 256 ~ front_text.messages[0] set value ["",{translate:"cargobarrel.trap.generic"}]
data modify entity @s CustomName set from block ~ 256 ~ front_text.messages[0]
setblock ~ 256 ~ air