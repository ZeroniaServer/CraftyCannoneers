rotate @s ~2 ~
execute at @s if score $WindEffect CmdData matches 10..60 run rotate @s ~1 ~
execute at @s if score $WindEffect CmdData matches 61..240 run rotate @s ~3 ~
execute at @s if score $WindEffect CmdData matches 241..260 run rotate @s ~1 ~