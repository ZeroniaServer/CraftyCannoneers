function game:forcestop
tag @a add LeaveGame
scoreboard players reset * CannonID
scoreboard players reset * playerUUID
scoreboard players add $current CannonID 0
function arenaclear:fullreset
function lobby:customizer/defaults
time set day
function lobby:parkour/resethighscore
function entityid:flush
function tutorial:initialize
function tutorial:tips/newset
function debug:setup

# part of the reset routine now -- needs manual checking!!!
# TODO removed after fetchprofile junk :(
# function lobby:credit/skullcache/start

scoreboard players set $forcedmodes CmdData 1