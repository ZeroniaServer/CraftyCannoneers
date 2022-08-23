execute at @s[gamemode=!spectator,predicate=tutorial:combatarea,tag=!InCombat] run function tutorial:combatarea/enter
execute as @s[gamemode=!spectator,predicate=tutorial:combatarea2,tag=!InCombat] run function tutorial:combatarea/enter

execute at @s[predicate=!tutorial:combatarea,predicate=!tutorial:combatarea2,tag=InCombat] run function tutorial:combatarea/exit