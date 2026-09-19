##
## Display the session timer to all players with the session timer active
##

#
# Note: Players need a "DisplayTimerId" of 1 to have this displayed. If player has no timer,
#       default to this one.

# For all players without a DisplayTimerId, set display to this timer
execute as @a unless score @s DisplayTimerId matches 0.. run scoreboard players set @s DisplayTimerId 1

# Store the current session time in the bossbar value in ticks
execute store result bossbar session_timer value run function lifetime:session/ticks_remaining

# Set timer display name

# Pad minutes and seconds with 0
execute if score #session SessionMinutes matches ..9 run execute if score #session SessionSeconds matches ..9 run bossbar set session_timer name [{text:"",color:"aqua"},"Session Timer - ", {"score":{"name":"#session","objective":"SessionHours"}}, ":0", {"score":{"name":"#session","objective":"SessionMinutes"}}, ":0", {"score":{"name":"#session","objective":"SessionSeconds"}}]
# Pad minutes with 0
execute if score #session SessionMinutes matches ..9 run execute if score #session SessionSeconds matches 10.. run bossbar set session_timer name [{text:"",color:aqua},"Session Timer - ", {"score":{"name":"#session","objective":"SessionHours"}}, ":0", {"score":{"name":"#session","objective":"SessionMinutes"}}, ":", {"score":{"name":"#session","objective":"SessionSeconds"}}]
# Pad seconds with 0
execute if score #session SessionMinutes matches 10.. run execute if score #session SessionSeconds matches ..9 run bossbar set session_timer name [{text:"",color:aqua},"Session Timer - ", {"score":{"name":"#session","objective":"SessionHours"}}, ":", {"score":{"name":"#session","objective":"SessionMinutes"}}, ":0", {"score":{"name":"#session","objective":"SessionSeconds"}}]
# No padding
execute if score #session SessionMinutes matches 10.. run execute if score #session SessionSeconds matches 10.. run bossbar set session_timer name [{text:"",color:aqua},"Session Timer - ", {"score":{"name":"#session","objective":"SessionHours"}}, ":", {"score":{"name":"#session","objective":"SessionMinutes"}}, ":", {"score":{"name":"#session","objective":"SessionSeconds"}}]

# Display this timer for all players with it active
bossbar set session_timer players @a[scores={DisplayTimerId=1}]
