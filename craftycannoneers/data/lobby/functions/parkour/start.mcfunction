function game:clearinventory
item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"Restart Parkour","color":"green","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1,Restart:1b,NoDrop:1b,HideFlags:127}
item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Quit Parkour","color":"red","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:2,Quit:1b,NoDrop:1b,HideFlags:127}
tellraw @s [{"text":"Parkour Run Started!","color":"dark_green","bold":true}]
playsound parkourstart master @s ~ ~ ~ 1 1.3
playsound parkourstart2 master @s ~ ~ ~ 1 1
particle firework ~ ~1 ~ 0 0 0 0.1 100 normal @s
tag @s add inParkour