function arenaclear:cannons

bossbar set updatebar name ["",{"text":"UPDATING TO 1.1.0 ","color":"green"},{"text":"[","color":"gray"},{"text":"2","color":"white"},{"text":"/","color":"gray"},{"text":"6","color":"white"},{"text":"]","color":"gray"}]
bossbar set updatebar value 2
schedule function version:1_1_0/part3 5t