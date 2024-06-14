data merge entity @s {Tags:["rock"],Duration:0,Silent:1b,SoundEvent:"entity.snowball.throw",PierceLevel:10}
data modify entity @s Motion set from entity @e[type=marker,tag=direction,limit=1] Pos
function entityid:assign_tag