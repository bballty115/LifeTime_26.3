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
execute as @p[name="Puzzle_12",scores={DisplayTimerId=2}] store result bossbar lifetime_puzzle_12 value run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute as @p[name="Jbloxx",scores={DisplayTimerId=2}] store result bossbar lifetime_jbloxx value run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute as @p[name="heckyeahbirds",scores={DisplayTimerId=2}] store result bossbar lifetime_heckyeahbirds value run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute as @p[name="monobinoculus",scores={DisplayTimerId=2}] store result bossbar lifetime_monobinoculus value run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute as @p[name="SilverRH",scores={DisplayTimerId=2}] store result bossbar lifetime_silverrh value run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute as @p[name="Sakura_Kitty",scores={DisplayTimerId=2}] store result bossbar lifetime_sakura_kitty value run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute as @p[name="Etcuniversal1",scores={DisplayTimerId=2}] store result bossbar lifetime_etcuniversal1 value run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute as @p[name="Firefei",scores={DisplayTimerId=2}] store result bossbar lifetime_firefei value run function lifetime:player/life_ticks_remaining
# [Generated From Compiler]
execute as @p[name="Crazy_Crafter_12",scores={DisplayTimerId=2}] store result bossbar lifetime_crazy_crafter_12 value run function lifetime:player/life_ticks_remaining

##
## Display proper bossbar to the player 
##

#!c bossbar set lifetime_USERNAMELOWER players @p[name="USERNAME",scores={DisplayTimerId=2}]
# [Generated From Compiler]
bossbar set lifetime_bballty115 players @p[name="bballty115",scores={DisplayTimerId=2}]
# [Generated From Compiler]
bossbar set lifetime_puzzle_12 players @p[name="Puzzle_12",scores={DisplayTimerId=2}]
# [Generated From Compiler]
bossbar set lifetime_jbloxx players @p[name="Jbloxx",scores={DisplayTimerId=2}]
# [Generated From Compiler]
bossbar set lifetime_heckyeahbirds players @p[name="heckyeahbirds",scores={DisplayTimerId=2}]
# [Generated From Compiler]
bossbar set lifetime_monobinoculus players @p[name="monobinoculus",scores={DisplayTimerId=2}]
# [Generated From Compiler]
bossbar set lifetime_silverrh players @p[name="SilverRH",scores={DisplayTimerId=2}]
# [Generated From Compiler]
bossbar set lifetime_sakura_kitty players @p[name="Sakura_Kitty",scores={DisplayTimerId=2}]
# [Generated From Compiler]
bossbar set lifetime_etcuniversal1 players @p[name="Etcuniversal1",scores={DisplayTimerId=2}]
# [Generated From Compiler]
bossbar set lifetime_firefei players @p[name="Firefei",scores={DisplayTimerId=2}]
# [Generated From Compiler]
bossbar set lifetime_crazy_crafter_12 players @p[name="Crazy_Crafter_12",scores={DisplayTimerId=2}]

##
## Set proper color based on player team
##

#!c execute if entity @p[name="USERNAME",team=green,scores={DisplayTimerId=2}] run bossbar set lifetime_USERNAMELOWER color green
# [Generated From Compiler]
execute if entity @p[name="bballty115",team=green,scores={DisplayTimerId=2}] run bossbar set lifetime_bballty115 color green
# [Generated From Compiler]
execute if entity @p[name="Puzzle_12",team=green,scores={DisplayTimerId=2}] run bossbar set lifetime_puzzle_12 color green
# [Generated From Compiler]
execute if entity @p[name="Jbloxx",team=green,scores={DisplayTimerId=2}] run bossbar set lifetime_jbloxx color green
# [Generated From Compiler]
execute if entity @p[name="heckyeahbirds",team=green,scores={DisplayTimerId=2}] run bossbar set lifetime_heckyeahbirds color green
# [Generated From Compiler]
execute if entity @p[name="monobinoculus",team=green,scores={DisplayTimerId=2}] run bossbar set lifetime_monobinoculus color green
# [Generated From Compiler]
execute if entity @p[name="SilverRH",team=green,scores={DisplayTimerId=2}] run bossbar set lifetime_silverrh color green
# [Generated From Compiler]
execute if entity @p[name="Sakura_Kitty",team=green,scores={DisplayTimerId=2}] run bossbar set lifetime_sakura_kitty color green
# [Generated From Compiler]
execute if entity @p[name="Etcuniversal1",team=green,scores={DisplayTimerId=2}] run bossbar set lifetime_etcuniversal1 color green
# [Generated From Compiler]
execute if entity @p[name="Firefei",team=green,scores={DisplayTimerId=2}] run bossbar set lifetime_firefei color green
# [Generated From Compiler]
execute if entity @p[name="Crazy_Crafter_12",team=green,scores={DisplayTimerId=2}] run bossbar set lifetime_crazy_crafter_12 color green

#!c execute if entity @p[name="USERNAME",team=yellow,scores={DisplayTimerId=2}] run bossbar set lifetime_USERNAMELOWER color yellow
# [Generated From Compiler]
execute if entity @p[name="bballty115",team=yellow,scores={DisplayTimerId=2}] run bossbar set lifetime_bballty115 color yellow
# [Generated From Compiler]
execute if entity @p[name="Puzzle_12",team=yellow,scores={DisplayTimerId=2}] run bossbar set lifetime_puzzle_12 color yellow
# [Generated From Compiler]
execute if entity @p[name="Jbloxx",team=yellow,scores={DisplayTimerId=2}] run bossbar set lifetime_jbloxx color yellow
# [Generated From Compiler]
execute if entity @p[name="heckyeahbirds",team=yellow,scores={DisplayTimerId=2}] run bossbar set lifetime_heckyeahbirds color yellow
# [Generated From Compiler]
execute if entity @p[name="monobinoculus",team=yellow,scores={DisplayTimerId=2}] run bossbar set lifetime_monobinoculus color yellow
# [Generated From Compiler]
execute if entity @p[name="SilverRH",team=yellow,scores={DisplayTimerId=2}] run bossbar set lifetime_silverrh color yellow
# [Generated From Compiler]
execute if entity @p[name="Sakura_Kitty",team=yellow,scores={DisplayTimerId=2}] run bossbar set lifetime_sakura_kitty color yellow
# [Generated From Compiler]
execute if entity @p[name="Etcuniversal1",team=yellow,scores={DisplayTimerId=2}] run bossbar set lifetime_etcuniversal1 color yellow
# [Generated From Compiler]
execute if entity @p[name="Firefei",team=yellow,scores={DisplayTimerId=2}] run bossbar set lifetime_firefei color yellow
# [Generated From Compiler]
execute if entity @p[name="Crazy_Crafter_12",team=yellow,scores={DisplayTimerId=2}] run bossbar set lifetime_crazy_crafter_12 color yellow

#!c execute if entity @p[name="USERNAME",team=red,scores={DisplayTimerId=2}] run bossbar set lifetime_USERNAMELOWER color red
# [Generated From Compiler]
execute if entity @p[name="bballty115",team=red,scores={DisplayTimerId=2}] run bossbar set lifetime_bballty115 color red
# [Generated From Compiler]
execute if entity @p[name="Puzzle_12",team=red,scores={DisplayTimerId=2}] run bossbar set lifetime_puzzle_12 color red
# [Generated From Compiler]
execute if entity @p[name="Jbloxx",team=red,scores={DisplayTimerId=2}] run bossbar set lifetime_jbloxx color red
# [Generated From Compiler]
execute if entity @p[name="heckyeahbirds",team=red,scores={DisplayTimerId=2}] run bossbar set lifetime_heckyeahbirds color red
# [Generated From Compiler]
execute if entity @p[name="monobinoculus",team=red,scores={DisplayTimerId=2}] run bossbar set lifetime_monobinoculus color red
# [Generated From Compiler]
execute if entity @p[name="SilverRH",team=red,scores={DisplayTimerId=2}] run bossbar set lifetime_silverrh color red
# [Generated From Compiler]
execute if entity @p[name="Sakura_Kitty",team=red,scores={DisplayTimerId=2}] run bossbar set lifetime_sakura_kitty color red
# [Generated From Compiler]
execute if entity @p[name="Etcuniversal1",team=red,scores={DisplayTimerId=2}] run bossbar set lifetime_etcuniversal1 color red
# [Generated From Compiler]
execute if entity @p[name="Firefei",team=red,scores={DisplayTimerId=2}] run bossbar set lifetime_firefei color red
# [Generated From Compiler]
execute if entity @p[name="Crazy_Crafter_12",team=red,scores={DisplayTimerId=2}] run bossbar set lifetime_crazy_crafter_12 color red

##
## Set proper text for player bossbars
##

# Pad minutes and seconds with 0
#!c execute if entity @p[name="USERNAME",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_USERNAMELOWER name ["Life Timer - ", {"score":{"name":"USERNAME","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"USERNAME","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"USERNAME","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="bballty115",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_bballty115 name ["Life Timer - ", {"score":{"name":"bballty115","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"bballty115","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"bballty115","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Puzzle_12",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_puzzle_12 name ["Life Timer - ", {"score":{"name":"Puzzle_12","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"Puzzle_12","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"Puzzle_12","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Jbloxx",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_jbloxx name ["Life Timer - ", {"score":{"name":"Jbloxx","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"Jbloxx","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"Jbloxx","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="heckyeahbirds",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_heckyeahbirds name ["Life Timer - ", {"score":{"name":"heckyeahbirds","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"heckyeahbirds","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"heckyeahbirds","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="monobinoculus",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_monobinoculus name ["Life Timer - ", {"score":{"name":"monobinoculus","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"monobinoculus","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"monobinoculus","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="SilverRH",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_silverrh name ["Life Timer - ", {"score":{"name":"SilverRH","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"SilverRH","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"SilverRH","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Sakura_Kitty",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_sakura_kitty name ["Life Timer - ", {"score":{"name":"Sakura_Kitty","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"Sakura_Kitty","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"Sakura_Kitty","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Etcuniversal1",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_etcuniversal1 name ["Life Timer - ", {"score":{"name":"Etcuniversal1","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"Etcuniversal1","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"Etcuniversal1","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Firefei",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_firefei name ["Life Timer - ", {"score":{"name":"Firefei","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"Firefei","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"Firefei","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Crazy_Crafter_12",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_crazy_crafter_12 name ["Life Timer - ", {"score":{"name":"Crazy_Crafter_12","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"Crazy_Crafter_12","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"Crazy_Crafter_12","objective":"PlayerLifeSeconds"}}]

# Pad minutes with 0
#!c execute if entity @p[name="USERNAME",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_USERNAMELOWER name ["Life Timer - ", {"score":{"name":"USERNAME","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"USERNAME","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"USERNAME","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="bballty115",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_bballty115 name ["Life Timer - ", {"score":{"name":"bballty115","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"bballty115","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"bballty115","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Puzzle_12",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_puzzle_12 name ["Life Timer - ", {"score":{"name":"Puzzle_12","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"Puzzle_12","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"Puzzle_12","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Jbloxx",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_jbloxx name ["Life Timer - ", {"score":{"name":"Jbloxx","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"Jbloxx","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"Jbloxx","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="heckyeahbirds",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_heckyeahbirds name ["Life Timer - ", {"score":{"name":"heckyeahbirds","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"heckyeahbirds","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"heckyeahbirds","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="monobinoculus",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_monobinoculus name ["Life Timer - ", {"score":{"name":"monobinoculus","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"monobinoculus","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"monobinoculus","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="SilverRH",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_silverrh name ["Life Timer - ", {"score":{"name":"SilverRH","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"SilverRH","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"SilverRH","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Sakura_Kitty",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_sakura_kitty name ["Life Timer - ", {"score":{"name":"Sakura_Kitty","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"Sakura_Kitty","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"Sakura_Kitty","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Etcuniversal1",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_etcuniversal1 name ["Life Timer - ", {"score":{"name":"Etcuniversal1","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"Etcuniversal1","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"Etcuniversal1","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Firefei",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_firefei name ["Life Timer - ", {"score":{"name":"Firefei","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"Firefei","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"Firefei","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Crazy_Crafter_12",scores={PlayerLifeMinutes=..9,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_crazy_crafter_12 name ["Life Timer - ", {"score":{"name":"Crazy_Crafter_12","objective":"PlayerLifeHours"}}, ":0", {"score":{"name":"Crazy_Crafter_12","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"Crazy_Crafter_12","objective":"PlayerLifeSeconds"}}]

# Pad seconds with 0
#!c execute if entity @p[name="USERNAME",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_USERNAMELOWER name ["Life Timer - ", {"score":{"name":"USERNAME","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"USERNAME","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"USERNAME","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="bballty115",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_bballty115 name ["Life Timer - ", {"score":{"name":"bballty115","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"bballty115","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"bballty115","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Puzzle_12",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_puzzle_12 name ["Life Timer - ", {"score":{"name":"Puzzle_12","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"Puzzle_12","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"Puzzle_12","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Jbloxx",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_jbloxx name ["Life Timer - ", {"score":{"name":"Jbloxx","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"Jbloxx","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"Jbloxx","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="heckyeahbirds",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_heckyeahbirds name ["Life Timer - ", {"score":{"name":"heckyeahbirds","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"heckyeahbirds","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"heckyeahbirds","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="monobinoculus",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_monobinoculus name ["Life Timer - ", {"score":{"name":"monobinoculus","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"monobinoculus","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"monobinoculus","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="SilverRH",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_silverrh name ["Life Timer - ", {"score":{"name":"SilverRH","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"SilverRH","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"SilverRH","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Sakura_Kitty",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_sakura_kitty name ["Life Timer - ", {"score":{"name":"Sakura_Kitty","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"Sakura_Kitty","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"Sakura_Kitty","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Etcuniversal1",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_etcuniversal1 name ["Life Timer - ", {"score":{"name":"Etcuniversal1","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"Etcuniversal1","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"Etcuniversal1","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Firefei",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_firefei name ["Life Timer - ", {"score":{"name":"Firefei","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"Firefei","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"Firefei","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Crazy_Crafter_12",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=..9,DisplayTimerId=2}] run bossbar set lifetime_crazy_crafter_12 name ["Life Timer - ", {"score":{"name":"Crazy_Crafter_12","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"Crazy_Crafter_12","objective":"PlayerLifeMinutes"}}, ":0", {"score":{"name":"Crazy_Crafter_12","objective":"PlayerLifeSeconds"}}]

# No padding
#!c execute if entity @p[name="USERNAME",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_USERNAMELOWER name ["Life Timer - ", {"score":{"name":"USERNAME","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"USERNAME","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"USERNAME","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="bballty115",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_bballty115 name ["Life Timer - ", {"score":{"name":"bballty115","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"bballty115","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"bballty115","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Puzzle_12",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_puzzle_12 name ["Life Timer - ", {"score":{"name":"Puzzle_12","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"Puzzle_12","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"Puzzle_12","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Jbloxx",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_jbloxx name ["Life Timer - ", {"score":{"name":"Jbloxx","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"Jbloxx","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"Jbloxx","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="heckyeahbirds",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_heckyeahbirds name ["Life Timer - ", {"score":{"name":"heckyeahbirds","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"heckyeahbirds","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"heckyeahbirds","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="monobinoculus",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_monobinoculus name ["Life Timer - ", {"score":{"name":"monobinoculus","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"monobinoculus","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"monobinoculus","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="SilverRH",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_silverrh name ["Life Timer - ", {"score":{"name":"SilverRH","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"SilverRH","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"SilverRH","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Sakura_Kitty",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_sakura_kitty name ["Life Timer - ", {"score":{"name":"Sakura_Kitty","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"Sakura_Kitty","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"Sakura_Kitty","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Etcuniversal1",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_etcuniversal1 name ["Life Timer - ", {"score":{"name":"Etcuniversal1","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"Etcuniversal1","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"Etcuniversal1","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Firefei",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_firefei name ["Life Timer - ", {"score":{"name":"Firefei","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"Firefei","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"Firefei","objective":"PlayerLifeSeconds"}}]
# [Generated From Compiler]
execute if entity @p[name="Crazy_Crafter_12",scores={PlayerLifeMinutes=10..,PlayerLifeSeconds=10..,DisplayTimerId=2}] run bossbar set lifetime_crazy_crafter_12 name ["Life Timer - ", {"score":{"name":"Crazy_Crafter_12","objective":"PlayerLifeHours"}}, ":", {"score":{"name":"Crazy_Crafter_12","objective":"PlayerLifeMinutes"}}, ":", {"score":{"name":"Crazy_Crafter_12","objective":"PlayerLifeSeconds"}}]

