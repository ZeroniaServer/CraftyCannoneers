scoreboard players set $invrand CmdData 0
execute unless score $setuprand CmdData matches 1 run summon item_display 0 -64 0 {Tags:["invrandroot"],UUID:[I;-420,-69,420,69]}
execute unless score $setuprand CmdData matches 1 run function inventory:randomizer/setup/loop
scoreboard players set $setuprand CmdData 1