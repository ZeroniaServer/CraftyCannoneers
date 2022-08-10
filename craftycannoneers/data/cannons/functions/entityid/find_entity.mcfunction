scoreboard players set $hit entityid 0

execute if entity @s[advancements={cannons:click={bit0=true}}] run scoreboard players add $hit entityid 1
execute if entity @s[advancements={cannons:click={bit1=true}}] run scoreboard players add $hit entityid 2
execute if entity @s[advancements={cannons:click={bit2=true}}] run scoreboard players add $hit entityid 4
execute if entity @s[advancements={cannons:click={bit3=true}}] run scoreboard players add $hit entityid 8
execute if entity @s[advancements={cannons:click={bit4=true}}] run scoreboard players add $hit entityid 16
execute if entity @s[advancements={cannons:click={bit5=true}}] run scoreboard players add $hit entityid 32
execute if entity @s[advancements={cannons:click={bit6=true}}] run scoreboard players add $hit entityid 64
execute if entity @s[advancements={cannons:click={bit7=true}}] run scoreboard players add $hit entityid 128
execute if entity @s[advancements={cannons:click={bit8=true}}] run scoreboard players add $hit entityid 256
execute if entity @s[advancements={cannons:click={bit9=true}}] run scoreboard players add $hit entityid 512
execute if entity @s[advancements={cannons:click={bit10=true}}] run scoreboard players add $hit entityid 1024
execute if entity @s[advancements={cannons:click={bit11=true}}] run scoreboard players add $hit entityid 2048
execute if entity @s[advancements={cannons:click={bit12=true}}] run scoreboard players add $hit entityid 4096
execute if entity @s[advancements={cannons:click={bit13=true}}] run scoreboard players add $hit entityid 8192
execute if entity @s[advancements={cannons:click={bit14=true}}] run scoreboard players add $hit entityid 16384
execute if entity @s[advancements={cannons:click={bit15=true}}] run scoreboard players add $hit entityid 32768
execute if entity @s[advancements={cannons:click={bit16=true}}] run scoreboard players add $hit entityid 65536
execute if entity @s[advancements={cannons:click={bit17=true}}] run scoreboard players add $hit entityid 131072
execute if entity @s[advancements={cannons:click={bit18=true}}] run scoreboard players add $hit entityid 262144
execute if entity @s[advancements={cannons:click={bit19=true}}] run scoreboard players add $hit entityid 524288
execute if entity @s[advancements={cannons:click={bit20=true}}] run scoreboard players add $hit entityid 1048576
execute if entity @s[advancements={cannons:click={bit21=true}}] run scoreboard players add $hit entityid 2097152
execute if entity @s[advancements={cannons:click={bit22=true}}] run scoreboard players add $hit entityid 4194304
execute if entity @s[advancements={cannons:click={bit23=true}}] run scoreboard players add $hit entityid 8388608
execute if entity @s[advancements={cannons:click={bit24=true}}] run scoreboard players add $hit entityid 16777216
execute if entity @s[advancements={cannons:click={bit25=true}}] run scoreboard players add $hit entityid 33554432
execute if entity @s[advancements={cannons:click={bit26=true}}] run scoreboard players add $hit entityid 67108864
execute if entity @s[advancements={cannons:click={bit27=true}}] run scoreboard players add $hit entityid 134217728
execute if entity @s[advancements={cannons:click={bit28=true}}] run scoreboard players add $hit entityid 268435456
execute if entity @s[advancements={cannons:click={bit29=true}}] run scoreboard players add $hit entityid 536870912
execute if entity @s[advancements={cannons:click={bit30=true}}] run scoreboard players add $hit entityid 1073741824
execute if entity @s[advancements={cannons:click={bit31=true}}] run scoreboard players remove $hit entityid 2147483647
execute if entity @s[advancements={cannons:click={bit31=true}}] run scoreboard players remove $hit entityid 1
execute as @e[type=#game:clickable] if score @s entityid = $hit entityid run function cannons:entityid/on_click
