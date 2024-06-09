execute on passengers if entity @s[tag=boatoccupant] on passengers run tag @s add passenger
execute on passengers if entity @s[tag=boatoccupant] on passengers run ride @s dismount
ride @a[tag=passenger,limit=1] mount @s
execute on passengers run tag @s remove passenger
tag @s remove motionlock