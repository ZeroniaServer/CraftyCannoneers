#> Forceloads
forceload add -17 63 -112 -64
forceload add 11 89 129 -89
forceload add -235 -19 -235 -19
forceload add -385 -17 -416 -96

#> Gamerules
gamerule mobGriefing true
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doLimitedCrafting true
gamerule doMobSpawning false
gamerule doMobLoot true
gamerule naturalRegeneration false
gamerule sendCommandFeedback false
gamerule logAdminCommands false
gamerule disableRaids true
gamerule doWardenSpawning false
gamerule doInsomnia false
gamerule doPatrolSpawning false
gamerule announceAdvancements false
gamerule doTraderSpawning false
gamerule spectatorsGenerateChunks false
gamerule maxEntityCramming 10000
execute unless score $gamestate CmdData matches 2 run gamerule fallDamage false
difficulty hard

#> Scoreboards
scoreboard objectives add CmdData dummy
scoreboard players set $load CmdData 0
scoreboard objectives add RNGscore dummy
scoreboard objectives add RNGmax dummy
scoreboard objectives add drag dummy
scoreboard objectives add gravity dummy
scoreboard objectives add doublehit dummy
scoreboard objectives add CalcAir1 dummy
scoreboard objectives add CalcAir2 dummy
scoreboard objectives add CalcSail1 dummy
scoreboard objectives add CalcSail2 dummy
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
scoreboard objectives add bouncedelay dummy
scoreboard objectives add MVPdamage dummy
scoreboard objectives add ChaseUUID dummy
scoreboard objectives add NoRegenTimer dummy
scoreboard objectives add bounceID dummy
scoreboard objectives add CriticalDamage dummy
scoreboard objectives add raycast dummy
scoreboard objectives add shotArrows minecraft.used:minecraft.crossbow
scoreboard objectives add arrowsToShoot dummy
scoreboard objectives add hasArrows dummy
scoreboard objectives add dropArrow minecraft.dropped:minecraft.arrow
scoreboard objectives add useCrossbow dummy
scoreboard objectives add PCBCooldown dummy
scoreboard objectives add WPNotify dummy
scoreboard objectives add harpoonstate dummy
scoreboard objectives add boardstate dummy
scoreboard objectives add climb minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add remainderArrows dummy
scoreboard objectives add respawn dummy
scoreboard objectives add CalcFire1 dummy
scoreboard objectives add CalcFire2 dummy
scoreboard objectives add KillerUUIDreset dummy
scoreboard objectives add spawnPlaceable minecraft.used:minecraft.mooshroom_spawn_egg
scoreboard objectives add LootLoader dummy
scoreboard objectives add hasBarrels dummy
scoreboard objectives add copperStrike dummy
scoreboard objectives add sharktarget dummy
scoreboard objectives add crabtime dummy
scoreboard objectives add crabmode dummy
scoreboard objectives add TrapDurability dummy
scoreboard objectives add hasCrabTraps dummy
scoreboard objectives add crabs dummy

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
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add dx dummy
scoreboard objectives add dy dummy
scoreboard objectives add dz dummy
scoreboard objectives add x2 dummy
scoreboard objectives add y2 dummy
scoreboard objectives add z2 dummy
scoreboard objectives add dx2 dummy
scoreboard objectives add dy2 dummy
scoreboard objectives add dz2 dummy
scoreboard objectives add hasCrabTraps dummy
scoreboard objectives add leavecheck dummy
scoreboard players add $curr leavecheck 0

#> Bossbars
bossbar add lobbybar ""
execute if score $gamestate CmdData matches -1 unless entity @a[tag=ModiOwner,limit=1] run bossbar set lobbybar name [{"translate":"chat.confirm","color":"aqua","with":[{"translate":"chat.settings_map","color":"aqua"}]}]
bossbar set lobbybar max 10
execute if score $gamestate CmdData matches -1 run bossbar set lobbybar value 10
execute if score $gamestate CmdData matches ..0 run bossbar set lobbybar color blue

#> Teams
team add Lobby
team add Orange
team add Purple
team add Spectator
team add NoName
team add Collide
team add Developer
team add Blank
team modify Lobby color blue
team modify Developer color dark_green
team modify Orange color gold
team modify Purple color dark_purple
team modify Spectator color dark_gray
team modify Lobby friendlyFire false
team modify Orange friendlyFire false
team modify Purple friendlyFire false
team modify Spectator friendlyFire false
team modify Lobby collisionRule never
team modify Purple collisionRule pushOwnTeam
team modify Orange collisionRule pushOwnTeam
team modify Spectator collisionRule never
team modify NoName collisionRule never
team modify Collide collisionRule pushOwnTeam
team modify NoName nametagVisibility never
team modify Collide nametagVisibility never
team modify Orange nametagVisibility always
team modify Purple nametagVisibility always
team modify Blank nametagVisibility always

#> Static scores
scoreboard players set $3 CmdData 3
scoreboard players set $10 CmdData 10
scoreboard players set $1200 CmdData 1200
scoreboard players set $20 CmdData 20
scoreboard players set $2 CmdData 2
scoreboard players set $60 CmdData 60

#> Other lobby blocks
fill -40 -23 -18 -38 -22 -18 air

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
scoreboard objectives add entityidset dummy
scoreboard players set #loaded entityid 1
scoreboard objectives add const dummy
scoreboard players set 2 const 2
scoreboard players set -1 const -1

#> Particles
scoreboard players set $dust6 CmdData -1
scoreboard players set $dust3 CmdData -1
scoreboard players set $dust2 CmdData -1

#> Modifiers
scoreboard players add $NoTracers CmdData 0
scoreboard players add $Wildlife CmdData 0
scoreboard players add $Storms CmdData 0
scoreboard players add $LostCargo CmdData 0
scoreboard players add $GraveRobbery CmdData 0
scoreboard players add $BoatCannons CmdData 0
scoreboard players add $Daytime CmdData 0

#> Messages
data modify storage craftycannoneers:messages ResourcePack set value '[{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"We strongly recommend you to ","color":"gray"},{"text":"use the resource pack","bold":true,"color":"red"},{"text":". ","color":"gray"},{"text":"[CLICK HERE TO DOWNLOAD]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"open_url","value":"https://drive.google.com/uc?export=download&id=1-oBF7R2saaPyq1cdZrVvKh-TUHcagulH"}}]'
data modify storage craftycannoneers:messages OutdatedPack set value '[{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"You are using an outdated version of the resource pack! ","color":"gray"},{"text":"[CLICK HERE TO DOWNLOAD THE LATEST VERSION]","color":"green","bold":true,"underlined":true,"clickEvent":{"action":"open_url","value":"https://drive.google.com/uc?export=download&id=1-oBF7R2saaPyq1cdZrVvKh-TUHcagulH"}}]'
data modify storage craftycannoneers:messages SettingsMap set value '[{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"chat.confirm","color":"gray","with":[{"translate":"chat.settings_map","color":"aqua","bold":true}]}]'
data modify storage craftycannoneers:messages ReadyToPlay set value '[{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"translate":"chat.the_game","color":"gray","with":[{"translate":"chat.ready_to_play","color":"green","bold":true}]}]'