execute store result storage craftycannoneers:bombsound pitch int 1 run random value 20..30
function weapons:bomb/playsound with storage craftycannoneers:bombsound
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[team=!Lobby]
particle dust{color:[0.0,0.8,1.0],scale:2.0} ~ ~1 ~ 1 1 1 0 30 force @a[team=!Lobby]
particle cloud ~ ~1 ~ 1 1 1 0.3 10 force @a[team=!Lobby]
particle explosion ~ ~ ~ 1 1 1 0.1 12 force @a[team=!Lobby]
particle item{item:{id:"ender_eye",components:{"minecraft:custom_model_data":{floats:[2.0f]}}}} ~ ~ ~ 0.1 0.4 0.1 0.2 20 force @a[team=!Lobby]
item replace entity @s container.0 with air