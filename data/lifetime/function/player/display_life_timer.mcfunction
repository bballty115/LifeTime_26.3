##
## Display the life timer to a player with this active.
##
## Pre:
## > Player has a DisplayTimerId of 2
##
## Executor: A player to attempt to show a boss timer to

##
## For each player with their life timer bossbar enabled, store their remaining lifetime in ticks
##

#!c execute as @p[name="USERNAME",scores={DisplayTimerId=2}] store result bossbar lifetime_USERNAMELOWER value run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute as @p[name="bballty115",scores={DisplayTimerId=2}] store result bossbar lifetime_bballty115 value run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute as @p[name="Hungus",scores={DisplayTimerId=2}] store result bossbar lifetime_hungus value run function lifetime:player/life_ticks_remaining

##
## Display proper bossbar to the player 
##

#!c bossbar set lifetime_USERNAMELOWER players @p[name="USERNAME",scores={DisplayTimerId=2}]
# [Generated From Compiler]
bossbar set lifetime_bballty115 players @p[name="bballty115",scores={DisplayTimerId=2}]
# [Generated From Compiler]
bossbar set lifetime_hungus players @p[name="Hungus",scores={DisplayTimerId=2}]

##
## Set proper color based on player team
##

#!c execute if entity @p[name="USERNAME",team=green,scores={DisplayTimerId=2}] run bossbar set lifetime_USERNAMELOWER color green
# [Generated From Compiler]
execute if entity @p[name="bballty115",team=green,scores={DisplayTimerId=2}] run bossbar set lifetime_bballty115 color green
# [Generated From Compiler]
execute if entity @p[name="Hungus",team=green,scores={DisplayTimerId=2}] run bossbar set lifetime_hungus color green

#!c execute if entity @p[name="USERNAME",team=yellow,scores={DisplayTimerId=2}] run bossbar set lifetime_USERNAMELOWER color yellow
# [Generated From Compiler]
execute if entity @p[name="bballty115",team=yellow,scores={DisplayTimerId=2}] run bossbar set lifetime_bballty115 color yellow
# [Generated From Compiler]
execute if entity @p[name="Hungus",team=yellow,scores={DisplayTimerId=2}] run bossbar set lifetime_hungus color yellow

#!c execute if entity @p[name="USERNAME",team=red,scores={DisplayTimerId=2}] run bossbar set lifetime_USERNAMELOWER color red
# [Generated From Compiler]
execute if entity @p[name="bballty115",team=red,scores={DisplayTimerId=2}] run bossbar set lifetime_bballty115 color red
# [Generated From Compiler]
execute if entity @p[name="Hungus",team=red,scores={DisplayTimerId=2}] run bossbar set lifetime_hungus color red

##
## Set proper text for player bossbars
##

# Pad minutes and seconds with 0
#!c execute if entity @p[name="USERNAME",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_USERNAMELOWER name ["Life Timer - ", {"score":{"name":"USERNAME","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"USERNAME","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"USERNAME","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="bballty115",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_bballty115 name ["Life Timer - ", {"score":{"name":"bballty115","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"bballty115","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"bballty115","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Hungus",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_hungus name ["Life Timer - ", {"score":{"name":"Hungus","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"Hungus","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"Hungus","objective":"PlayerLifeSeconds"}}]

# Pad minutes with 0
#!c execute if entity @p[name="USERNAME",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_USERNAMELOWER name ["Life Timer - ", {"score":{"name":"USERNAME","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"USERNAME","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"USERNAME","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="bballty115",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_bballty115 name ["Life Timer - ", {"score":{"name":"bballty115","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"bballty115","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"bballty115","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Hungus",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_hungus name ["Life Timer - ", {"score":{"name":"Hungus","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"Hungus","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"Hungus","objective":"PlayerLifeSeconds"}}]

# Pad seconds with 0
#!c execute if entity @p[name="USERNAME",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_USERNAMELOWER name ["Life Timer - ", {"score":{"name":"USERNAME","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"USERNAME","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"USERNAME","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="bballty115",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_bballty115 name ["Life Timer - ", {"score":{"name":"bballty115","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"bballty115","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"bballty115","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Hungus",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_hungus name ["Life Timer - ", {"score":{"name":"Hungus","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"Hungus","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"Hungus","objective":"PlayerLifeSeconds"}}]

# No padding
#!c execute if entity @p[name="USERNAME",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_USERNAMELOWER name ["Life Timer - ", {"score":{"name":"USERNAME","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"USERNAME","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"USERNAME","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="bballty115",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_bballty115 name ["Life Timer - ", {"score":{"name":"bballty115","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"bballty115","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"bballty115","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Hungus",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_hungus name ["Life Timer - ", {"score":{"name":"Hungus","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"Hungus","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"Hungus","objective":"PlayerLifeSeconds"}}]

