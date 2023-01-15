scoreboard players add @s[predicate=!game:inarena] drowning 1
execute at @s[scores={drowning=1}] run playsound entity.player.hurt_drown master @a ~ ~ ~ 1 1
execute at @s[scores={drowning=4}] run playsound entity.player.hurt_drown master @a ~ ~ ~ 1 1.2
title @s[scores={drowning=1}] title {"translate":"game.out_of_bounds","color":"dark_red"}
title @s[scores={drowning=3}] title {"translate":"game.out_of_bounds","color":"white"}
title @s[scores={drowning=5}] title {"translate":"game.out_of_bounds","color":"dark_red"}
title @s[scores={drowning=7}] title {"translate":"game.out_of_bounds","color":"white"}
title @s[scores={drowning=8..}] title {"translate":"game.out_of_bounds","color":"dark_red"}
title @s[scores={drowning=1..80}] subtitle {"translate":"game.return_combat","color":"red"}
execute at @s[scores={drowning=20}] run playsound entity.generic.swim master @s ~ ~ ~ 1 0.7
execute at @s[scores={drowning=40}] run playsound entity.generic.swim master @s ~ ~ ~ 1 0.8
execute at @s[scores={drowning=60}] run playsound entity.generic.swim master @s ~ ~ ~ 1 1
execute at @s[scores={drowning=80..}] run particle splash ~ ~ ~ 0.3 0 0.3 0.3 150 force
execute at @s[scores={drowning=80..}] run particle falling_water ~ ~ ~ 0.2 0.4 0.1 0.2 150 force
execute at @s[scores={drowning=80..}] run particle bubble_column_up ~ ~ ~ 0.4 0.2 0.4 0.1 20 force
execute at @s[scores={drowning=80..}] run playsound entity.player.splash.high_speed master @a[distance=1..] ~ ~ ~ 1 0
execute at @s[scores={drowning=80..}] run playsound entity.player.splash.high_speed master @a[distance=1..] ~ ~ ~ 1 1.4
execute at @s[scores={drowning=80..}] run playsound block.bubble_column.whirlpool_ambient master @a[distance=1..] ~ ~ ~ 1 1.2
scoreboard players set @s[team=Orange,scores={drowning=80..}] death 1
scoreboard players set @s[team=Purple,scores={drowning=80..}] death 1
execute at @s[scores={drowning=80..}] run title @s title {"text":" ","color":"dark_red"}
execute at @s[scores={drowning=80..}] run title @s subtitle {"text":" ","color":"dark_red"}
title @s[scores={drowning=1..},predicate=game:inarena] title {"text":" ","color":"dark_red"}
title @s[scores={drowning=1..},predicate=game:inarena] subtitle {"text":" ","color":"dark_red"}
scoreboard players reset @s[scores={drowning=1..},predicate=game:inarena] drowning
scoreboard players reset @s[scores={drowning=80..}] drowning