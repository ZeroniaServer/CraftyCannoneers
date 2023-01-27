function chests:preventitems

function game:teamchest/antidupe/chestcount

execute at @s[tag=orangeteamchest] as @a[team=Orange,distance=..9] run function game:teamchest/orange/preventarrows
execute at @s[tag=purpleteamchest] as @a[team=Purple,distance=..9] run function game:teamchest/purple/preventarrows