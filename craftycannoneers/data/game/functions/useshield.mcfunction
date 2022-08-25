item modify entity @s[predicate=game:shield_mainhand,predicate=!game:shield_blocking_offhand] weapon.mainhand game:blockshield
item modify entity @s[predicate=!game:shield_mainhand,predicate=!game:shield_blocking_mainhand,predicate=game:shield_offhand] weapon.offhand game:blockshield

tag @s add ShieldBlocking
advancement revoke @s only game:isblocking