item modify entity @s[tag=!ShieldBlocking,predicate=game:shield_blocking_mainhand] weapon.mainhand game:unblockshield
item modify entity @s[tag=!ShieldBlocking,predicate=!game:shield_blocking_mainhand,predicate=game:shield_blocking_offhand] weapon.offhand game:unblockshield
item modify entity @s[tag=ShieldBlocking,predicate=game:shield_blocking_offhand,predicate=game:shield_mainhand] weapon.mainhand game:unblockshield

item modify entity @s[tag=ShieldBlocking,predicate=game:shield_blocking_mainhand,predicate=shield_offhand] weapon.offhand game:unblockshield
item modify entity @s[tag=ShieldBlocking,predicate=game:shield_mainhand,predicate=game:shield_blocking_offhand] weapon.mainhand game:unblockshield
item modify entity @s[tag=ShieldBlocking,predicate=game:shield_blocking_mainhand,predicate=game:shield_blocking_offhand] weapon.mainhand game:unblockshield

tag @s[tag=ShieldBlocking] remove ShieldBlocking