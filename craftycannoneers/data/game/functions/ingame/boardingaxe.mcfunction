#boarding axe knockback
execute as @a[team=Orange,predicate=game:onpurple,predicate=game:boardingaxe_main,predicate=!game:kb_main] run item modify entity @s weapon.mainhand game:kb
execute as @a[team=Orange,predicate=!game:onpurple,predicate=game:boardingaxe_main,predicate=game:kb_main] run item modify entity @s weapon.mainhand game:nokb
execute as @a[team=Orange,predicate=game:onpurple,predicate=game:boardingaxe_offhand,predicate=!game:kb_offhand] run item modify entity @s weapon.offhand game:kb
execute as @a[team=Orange,predicate=!game:onpurple,predicate=game:boardingaxe_offhand,predicate=game:kb_offhand] run item modify entity @s weapon.offhand game:nokb
execute as @a[team=Purple,predicate=game:onorange,predicate=game:boardingaxe_main,predicate=!game:kb_main] run item modify entity @s weapon.mainhand game:kb
execute as @a[team=Purple,predicate=!game:onorange,predicate=game:boardingaxe_main,predicate=game:kb_main] run item modify entity @s weapon.mainhand game:nokb
execute as @a[team=Purple,predicate=game:onorange,predicate=game:boardingaxe_offhand,predicate=!game:kb_offhand] run item modify entity @s weapon.offhand game:kb
execute as @a[team=Purple,predicate=!game:onorange,predicate=game:boardingaxe_offhand,predicate=game:kb_offhand] run item modify entity @s weapon.offhand game:nokb