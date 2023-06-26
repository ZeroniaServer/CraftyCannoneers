scoreboard players set $ShipHP CmdData 1000
scoreboard players set $Daytime CmdData 0
time set day
scoreboard players set $TimeLimit CmdData 42069

function lobby:customizer/updatesigns
scoreboard players reset @a[tag=ModiOwner] moditimer

#> Reset modifiers
scoreboard players set $NoTracers CmdData 0
scoreboard players set $Wildlife CmdData 0
scoreboard players set $Storms CmdData 0
scoreboard players set $LostCargo CmdData 0
scoreboard players set $GraveRobbery CmdData 0
scoreboard players set $BoatCannons CmdData 0