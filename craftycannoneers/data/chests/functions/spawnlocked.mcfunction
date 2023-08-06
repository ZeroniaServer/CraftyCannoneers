execute as @e[type=marker,tag=LockSpawn,limit=1,sort=random] at @s run function chests:placelocked

execute as @e[type=armor_stand,tag=LChestAS,tag=!Randomized] at @s run function chests:randomrotation

scoreboard players operation $CombinedDamage CmdData -= $lockboxspawn CmdData

function chests:generatelockedloot