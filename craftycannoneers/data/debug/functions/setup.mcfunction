#> Forceloads
forceload add -17 63 -112 -64
forceload add 11 89 129 -89
forceload add -235 -19 -235 -19
forceload add -1406 -20 -1383 -85
forceload add -385 -17 -416 -96

#> Gamerules
gamerule mobGriefing true
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doLimitedCrafting true
gamerule doMobSpawning false
gamerule doMobLoot true
gamerule naturalRegeneration false
execute unless score $gamestate CmdData matches 2 run gamerule fallDamage false

#> Scoreboards
scoreboard objectives add RNGscore dummy
scoreboard objectives add RNGmax dummy
scoreboard objectives add drag dummy
scoreboard objectives add gravity dummy
scoreboard objectives add doublehit dummy
scoreboard objectives add CalcAir1 dummy
scoreboard objectives add CalcAir2 dummy
scoreboard objectives add modisigns trigger
scoreboard objectives add moditimer dummy
scoreboard objectives add leavegame trigger
scoreboard objectives add CannonTutorial dummy
scoreboard objectives add ChestTutorial dummy
scoreboard objectives add playerUUID dummy
scoreboard objectives remove arrowtime
scoreboard objectives add death minecraft.custom:minecraft.deaths
scoreboard objectives add kill playerKillCount
scoreboard objectives add LeftGame minecraft.custom:minecraft.leave_game
scoreboard objectives add rockID dummy
scoreboard objectives add rockOwner dummy
scoreboard objectives add spotting dummy
scoreboard objectives add drowning dummy
scoreboard objectives add MVPkill dummy
scoreboard objectives add MVPdeath dummy
scoreboard objectives add MVPcannon dummy
scoreboard objectives add KillerUUID dummy
scoreboard objectives add eatGapple minecraft.used:minecraft.golden_apple
scoreboard objectives add gappleTimer dummy
scoreboard objectives add useharpoon minecraft.used:minecraft.trident
scoreboard objectives add eyeclick dummy
scoreboard objectives add openchest dummy
scoreboard objectives add bubblewarn dummy
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add jump minecraft.custom:minecraft.jump
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add clickcooldown dummy
scoreboard objectives add throwsb minecraft.used:minecraft.snowball
scoreboard objectives add gpdisp_time dummy
scoreboard objectives add CannonID dummy
scoreboard objectives add bounce dummy
scoreboard objectives add cannonclaim dummy
scoreboard objectives add parrotpet dummy
scoreboard objectives add loverocks minecraft.used:minecraft.snowball
scoreboard objectives add bellring dummy
scoreboard objectives add horntime dummy
scoreboard objectives add BalanceScore dummy
scoreboard objectives add BombDelay dummy
scoreboard objectives add HitmarkerType dummy
scoreboard objectives add HitmarkerTimer dummy
scoreboard objectives add readyup trigger
scoreboard objectives add AccurL dummy
scoreboard objectives add AccurR dummy
scoreboard objectives add firetime dummy
scoreboard objectives add blasttime dummy
scoreboard objectives add button dummy
scoreboard objectives add CombatTutorial dummy
scoreboard objectives add WeakpointTutorial dummy
scoreboard objectives add spotfakewp dummy
scoreboard objectives add fakeexpose1 dummy
scoreboard objectives add fakeexpose2 dummy
scoreboard objectives add fakeexpose3 dummy
scoreboard objectives add fakeexpose4 dummy
scoreboard objectives add fakeexpose5 dummy
scoreboard objectives add fakeexpose6 dummy
scoreboard objectives add fakeexpose7 dummy
scoreboard objectives add msgdelay dummy

#> Parkour
scoreboard objectives add parkourMins dummy
scoreboard objectives add parkourSecs dummy
scoreboard objectives add parkourDeci dummy
scoreboard objectives add parkourDeci2 dummy
scoreboard objectives add parkourTimer dummy
scoreboard objectives add finalParkourTime dummy
scoreboard objectives add bestParkourMins dummy
scoreboard objectives add bestParkourSecs dummy
scoreboard objectives add bestParkourDeci dummy
scoreboard objectives add bestParkourDeci2 dummy
scoreboard objectives add bestParkourTime dummy
scoreboard objectives add Falling minecraft.custom:minecraft.time_since_death
scoreboard objectives add GamesPlayed dummy
scoreboard objectives add toggleTips trigger

#> Lobby entities
execute unless entity @e[type=marker,tag=parkourStart] run summon marker -73 -22 -1 {Tags:["parkourStart"]}
execute unless entity @e[type=marker,tag=parkourEnd] run summon marker -71 2 -4 {Tags:["parkourEnd"]}

#> Bossbars
bossbar add lobbybar "Lobbybar"
bossbar add purpleshiphp ""
bossbar add orangeship ""

bossbar set lobbybar name {"text":"Please confirm game settings at the Settings Map!","color":"aqua"}
bossbar set lobbybar max 1
bossbar set lobbybar value 1
bossbar set lobbybar color blue

#> Teams
team add Lobby
team add Orange
team add Purple
team add Spectator
team add NoName
team add Collide
team modify Lobby color blue
team modify Orange color gold
team modify Purple color dark_purple
team modify Spectator color gray
team modify Lobby friendlyFire false
team modify Orange friendlyFire false
team modify Purple friendlyFire false
team modify Spectator friendlyFire false
team modify Lobby collisionRule never
team modify Purple collisionRule pushOwnTeam
team modify Orange collisionRule pushOwnTeam
team modify Spectator collisionRule never
team modify NoName collisionRule never
team modify Collide collisionRule always
team modify NoName nametagVisibility never

#> Static scores
scoreboard players set $3 CmdData 3
scoreboard players set $10 CmdData 10
scoreboard players set $1200 CmdData 1200
scoreboard players set $20 CmdData 20
scoreboard players set $2 CmdData 2
scoreboard players set $60 CmdData 60

#> Signs
setblock -49 -28 -3 air
setblock -49 -28 -3 oak_wall_sign[facing=east,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"trigger leavegame"},"text":""}',Text2:'{"color":"#00CCCC","text":"Click here to"}',Text3:'{"extra":[{"color":"#55FFFF","text":"Leave"},{"color":"#00CCCC","text":" your team!"}],"text":""}',Text4:'{"text":""}'}
setblock -49 -28 3 air
setblock -49 -28 3 oak_wall_sign[facing=east,waterlogged=false]{Color:"black",GlowingText:0b,Text1:'{"clickEvent":{"action":"run_command","value":"trigger leavegame"},"text":""}',Text2:'{"color":"#00CCCC","text":"Click here to"}',Text3:'{"extra":[{"color":"#55FFFF","text":"Leave"},{"color":"#00CCCC","text":" your team!"}],"text":""}',Text4:'{"text":""}'}
setblock -74 -24 1 air
setblock -74 -24 1 oak_wall_sign

#> Other lobby blocks
setblock -48 -24 14 creeper_head
setblock -48 -25 13 creeper_head
setblock -50 -25 7 creeper_head
setblock -58 -25 -7 creeper_head
setblock -56 -25 -6 creeper_head
setblock -56 -25 -8 creeper_head
setblock -44 -26 -8 creeper_head
fill -39 -22 -18 -38 -22 -18 creeper_head
fill -39 -23 -18 -38 -23 -18 barrier
setblock -40 -23 -18 end_stone_brick_wall
execute positioned -55 -23 9 run tag @e[type=glow_item_frame,limit=1,sort=nearest] add MapEntity

#> Entity ID
scoreboard objectives add entityid dummy
scoreboard objectives add entityid.0 dummy
scoreboard objectives add entityid.1 dummy
scoreboard objectives add entityid.2 dummy
scoreboard objectives add entityid.3 dummy
scoreboard objectives add entityid.4 dummy
scoreboard objectives add entityid.5 dummy
scoreboard objectives add entityid.6 dummy
scoreboard objectives add entityid.7 dummy
scoreboard objectives add entityid.8 dummy
scoreboard objectives add entityid.9 dummy
scoreboard objectives add entityid.10 dummy
scoreboard objectives add entityid.11 dummy
scoreboard objectives add entityid.12 dummy
scoreboard objectives add entityid.13 dummy
scoreboard objectives add entityid.14 dummy
scoreboard objectives add entityid.15 dummy
scoreboard objectives add entityid.16 dummy
scoreboard objectives add entityid.17 dummy
scoreboard objectives add entityid.18 dummy
scoreboard objectives add entityid.19 dummy
scoreboard objectives add entityid.20 dummy
scoreboard objectives add entityid.21 dummy
scoreboard objectives add entityid.22 dummy
scoreboard objectives add entityid.23 dummy
scoreboard objectives add entityid.24 dummy
scoreboard objectives add entityid.25 dummy
scoreboard objectives add entityid.26 dummy
scoreboard objectives add entityid.27 dummy
scoreboard objectives add entityid.28 dummy
scoreboard objectives add entityid.29 dummy
scoreboard objectives add entityid.30 dummy
scoreboard objectives add entityid.31 dummy
scoreboard players set #loaded entityid 1
scoreboard objectives add const dummy
scoreboard players set 2 const 2
scoreboard players set -1 const -1

#> Messages
data modify storage craftycannoneers:messages ResourcePack set value '[{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":"true"},{"text":"] ","color":"dark_gray"},{"text":"We strongly recommend you to ","color":"gray"},{"text":"use the resource pack","bold":true,"color":"red"},{"text":". ","color":"gray"},{"text":"[CLICK HERE TO DOWNLOAD]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"open_url","value":"https://drive.google.com/uc?export=download&id=1wI7hVR29bKCXJLBafZqpY9xSVL-Ahoc0"}}]'
data modify storage craftycannoneers:messages SettingsMap set value '[{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":"true"},{"text":"] ","color":"dark_gray"},{"text":"Please confirm settings at the ","color":"gray"},{"text":"Settings Map","color":"aqua","bold":true},{"text":"!","color":"gray"}]'
data modify storage craftycannoneers:messages ReadyToPlay set value '[{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":"true"},{"text":"] ","color":"dark_gray"},{"text":"The game is ","color":"gray"},{"text":"ready to play","color":"green","bold":true},{"text":"!","color":"gray"}]'