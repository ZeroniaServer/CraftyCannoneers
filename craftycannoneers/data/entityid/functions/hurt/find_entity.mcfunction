scoreboard players set $hurt entityid 0
execute if entity @s[advancements={entityid:hurt={bit0=true}}] run scoreboard players add $hurt entityid 1
execute if entity @s[advancements={entityid:hurt={bit1=true}}] run scoreboard players add $hurt entityid 2
execute if entity @s[advancements={entityid:hurt={bit2=true}}] run scoreboard players add $hurt entityid 4
execute if entity @s[advancements={entityid:hurt={bit3=true}}] run scoreboard players add $hurt entityid 8
execute if entity @s[advancements={entityid:hurt={bit4=true}}] run scoreboard players add $hurt entityid 16
execute if entity @s[advancements={entityid:hurt={bit5=true}}] run scoreboard players add $hurt entityid 32
execute if entity @s[advancements={entityid:hurt={bit6=true}}] run scoreboard players add $hurt entityid 64
execute if entity @s[advancements={entityid:hurt={bit7=true}}] run scoreboard players add $hurt entityid 128
execute if entity @s[advancements={entityid:hurt={bit8=true}}] run scoreboard players add $hurt entityid 256
execute if entity @s[advancements={entityid:hurt={bit9=true}}] run scoreboard players add $hurt entityid 512
execute if entity @s[advancements={entityid:hurt={bit10=true}}] run scoreboard players add $hurt entityid 1024
execute if entity @s[advancements={entityid:hurt={bit11=true}}] run scoreboard players add $hurt entityid 2048
execute if entity @s[advancements={entityid:hurt={bit12=true}}] run scoreboard players add $hurt entityid 4096
execute if entity @s[advancements={entityid:hurt={bit13=true}}] run scoreboard players add $hurt entityid 8192
execute if entity @s[advancements={entityid:hurt={bit14=true}}] run scoreboard players add $hurt entityid 16384
execute if entity @s[advancements={entityid:hurt={bit15=true}}] run scoreboard players add $hurt entityid 32768
execute if entity @s[advancements={entityid:hurt={bit16=true}}] run scoreboard players add $hurt entityid 65536
execute if entity @s[advancements={entityid:hurt={bit17=true}}] run scoreboard players add $hurt entityid 131072
execute if entity @s[advancements={entityid:hurt={bit18=true}}] run scoreboard players add $hurt entityid 262144
execute if entity @s[advancements={entityid:hurt={bit19=true}}] run scoreboard players add $hurt entityid 524288
execute if entity @s[advancements={entityid:hurt={bit20=true}}] run scoreboard players add $hurt entityid 1048576
execute if entity @s[advancements={entityid:hurt={bit21=true}}] run scoreboard players add $hurt entityid 2097152
execute if entity @s[advancements={entityid:hurt={bit22=true}}] run scoreboard players add $hurt entityid 4194304
execute if entity @s[advancements={entityid:hurt={bit23=true}}] run scoreboard players add $hurt entityid 8388608
execute if entity @s[advancements={entityid:hurt={bit24=true}}] run scoreboard players add $hurt entityid 16777216
execute if entity @s[advancements={entityid:hurt={bit25=true}}] run scoreboard players add $hurt entityid 33554432
execute if entity @s[advancements={entityid:hurt={bit26=true}}] run scoreboard players add $hurt entityid 67108864
execute if entity @s[advancements={entityid:hurt={bit27=true}}] run scoreboard players add $hurt entityid 134217728
execute if entity @s[advancements={entityid:hurt={bit28=true}}] run scoreboard players add $hurt entityid 268435456
execute if entity @s[advancements={entityid:hurt={bit29=true}}] run scoreboard players add $hurt entityid 536870912
execute if entity @s[advancements={entityid:hurt={bit30=true}}] run scoreboard players add $hurt entityid 1073741824
execute if entity @s[advancements={entityid:hurt={bit31=true}}] run scoreboard players operation $hurt entityid *= -1 const
execute as @e[type=arrow] if score @s entityid = $hurt entityid run function entityid:hurt/on_hurt
scoreboard players reset $hurt entityid