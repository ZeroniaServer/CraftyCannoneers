scoreboard players set $ShipHP CmdData 1000

scoreboard players set $TimeLimit CmdData 42069

function lobby:customizer/updatesigns
scoreboard players reset @a[tag=ModiOwner] moditimer

#> Reset modifiers
scoreboard players set $NoTracers CmdData 0
scoreboard players set $Sharks CmdData 0
scoreboard players set $Storms CmdData 0
