execute if score $harpoon CmdData matches 0..1 unless score @s harpoonstate = $harpoon CmdData run return 1
execute unless score $runreplace CmdData matches 1 if score $harpoon CmdData matches 0 if predicate game:has_harpoon_2 run return 1
execute unless score $runreplace CmdData matches 1 if score $harpoon CmdData matches 0 if predicate game:has_harpoon_3 run return 1
execute unless score $runreplace CmdData matches 1 if score $harpoon CmdData matches 1 if predicate game:has_harpoon_1 run return 1
return fail