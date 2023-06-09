execute at @s[tag=piercing] run playsound entity.arrow.hit neutral @a ~ ~ ~
execute at @s[tag=piercing] on origin run playsound entity.arrow.hit_player player @s ~ ~ ~ 0.25 0.5
kill @s[tag=piercing]