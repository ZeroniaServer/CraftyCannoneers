setblock ~ 256 ~ oak_sign{allow_op_features:true}
data modify block ~ 256 ~ front_text.messages[0] set value ["",{translate:"item.blast_barrel.generic"}]
data modify entity @s CustomName set from block ~ 256 ~ front_text.messages[0]
setblock ~ 256 ~ air