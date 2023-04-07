execute positioned -54 -23 8 if block ~ ~ ~ light[level=1] run setblock ~ ~ ~ light[level=2]
execute positioned -54 -23 8 if block ~ ~ ~ light[level=0] run setblock ~ ~ ~ light[level=1]
execute positioned -54 -23 8 if block ~ ~ ~ light[level=2] run setblock ~ ~ ~ light[level=0]