execute if score $ShipHP CmdData matches 42069 run scoreboard players set $ShipHP CmdData 999
execute if score $ShipHP CmdData matches 2000 run scoreboard players set $ShipHP CmdData 42069
execute if score $ShipHP CmdData matches 1500 run scoreboard players set $ShipHP CmdData 2000
execute if score $ShipHP CmdData matches 1250 run scoreboard players set $ShipHP CmdData 1500
execute if score $ShipHP CmdData matches 1000 run scoreboard players set $ShipHP CmdData 1250
execute if score $ShipHP CmdData matches 999 run scoreboard players set $ShipHP CmdData 1000
function lobby:customizer/updatesigns
scoreboard players reset @a[tag=ModiOwner] moditimer