#boarding axe knockback
item modify entity @s[team=Orange,predicate=game:onpurple,predicate=game:boardingaxe_mainhand,predicate=!game:kb_main] weapon.mainhand game:kb
item modify entity @s[team=Orange,predicate=!game:onpurple,predicate=game:boardingaxe_mainhand,predicate=game:kb_main] weapon.mainhand game:nokb
item modify entity @s[team=Orange,predicate=game:onpurple,predicate=game:boardingaxe_offhand,predicate=!game:kb_offhand] weapon.offhand game:kb
item modify entity @s[team=Orange,predicate=!game:onpurple,predicate=game:boardingaxe_offhand,predicate=game:kb_offhand] weapon.offhand game:nokb
item modify entity @s[team=Purple,predicate=game:onorange,predicate=game:boardingaxe_mainhand,predicate=!game:kb_main] weapon.mainhand game:kb
item modify entity @s[team=Purple,predicate=!game:onorange,predicate=game:boardingaxe_mainhand,predicate=game:kb_main] weapon.mainhand game:nokb
item modify entity @s[team=Purple,predicate=game:onorange,predicate=game:boardingaxe_offhand,predicate=!game:kb_offhand] weapon.offhand game:kb
item modify entity @s[team=Purple,predicate=!game:onorange,predicate=game:boardingaxe_offhand,predicate=game:kb_offhand] weapon.offhand game:nokb