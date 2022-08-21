execute as @a[tag=!ShieldBlocking,predicate=game:shield_blocking_mainhand] run item modify entity @s weapon.mainhand game:unblockshield
execute as @a[tag=!ShieldBlocking,predicate=!game:shield_blocking_mainhand] if entity @s[predicate=game:shield_blocking_offhand] run item modify entity @s weapon.offhand game:unblockshield
execute as @a[tag=ShieldBlocking,predicate=game:shield_blocking_offhand] if entity @s[predicate=game:shield_mainhand] run item modify entity @s weapon.mainhand game:unblockshield

execute as @a[tag=ShieldBlocking,predicate=game:shield_blocking_mainhand] if entity @s[predicate=shield_offhand] run item modify entity @s weapon.offhand game:unblockshield
execute as @a[tag=ShieldBlocking,predicate=game:shield_mainhand] if entity @s[predicate=game:shield_blocking_offhand] run item modify entity @s weapon.mainhand game:unblockshield
execute as @a[tag=ShieldBlocking,predicate=game:shield_blocking_mainhand] if entity @s[predicate=game:shield_blocking_offhand] run item modify entity @s weapon.mainhand game:unblockshield
tag @a[tag=ShieldBlocking] remove ShieldBlocking