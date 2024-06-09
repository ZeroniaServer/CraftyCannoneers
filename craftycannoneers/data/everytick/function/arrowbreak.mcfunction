particle item{item:"arrow"} ~ ~ ~ 0.1 0.1 0.1 0.1 15
execute if entity @s[tag=piercing] run playsound entity.arrow.hit neutral @a ~ ~ ~
playsound arrowbreak master @a ~ ~ ~ 1 2
kill