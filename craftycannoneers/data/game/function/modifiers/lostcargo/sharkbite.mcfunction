tag @s add TrapExplode
setblock ~ 256 ~ oak_sign
data modify block ~ 256 ~ front_text.messages[0] set value ["",{translate:"cargobarrel.trap.using",with:[{translate:"mob.shark"}]}]
data modify entity @s CustomName set from block ~ 256 ~ front_text.messages[0]
setblock ~ 256 ~ air