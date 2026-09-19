##
## Tick session timer down, end session if applicable
##
## Pre: Session is active

## Decrement time

# Tick down 1 tick
scoreboard players remove #session SessionTicks 1

## Handle tick bounds

# Pull ticks from second if ticks is too low
execute if score #session SessionTicks matches ..-1 run scoreboard players remove #session SessionSeconds 1
execute if score #session SessionTicks matches ..-1 run scoreboard players add #session SessionTicks 20
# Pull seconds from minute if seconds too low
execute if score #session SessionSeconds matches ..-1 run scoreboard players remove #session SessionMinutes 1
execute if score #session SessionSeconds matches ..-1 run scoreboard players add #session SessionSeconds 60
# Pull minute from hours if minute too low
execute if score #session SessionMinutes matches ..-1 run scoreboard players remove #session SessionHours 1
execute if score #session SessionMinutes matches ..-1 run scoreboard players add #session SessionMinutes 60
# If minutes too high, convert to hours instead
execute if score #session SessionMinutes matches 60.. run scoreboard players add #session SessionHours 1
execute if score #session SessionMinutes matches 60.. run scoreboard players remove #session SessionMinutes 60
# If seconds too high, convert to minutes instead
execute if score #session SessionSeconds matches 60.. run scoreboard players add #session SessionMinutes 1
execute if score #session SessionSeconds matches 60.. run scoreboard players remove #session SessionSeconds 60
# If ticks too high, convert to seconds instead
execute if score #session SessionTicks matches 20.. run scoreboard players add #session SessionSeconds 1
execute if score #session SessionTicks matches 20.. run scoreboard players remove #session SessionTicks 20

## End session if time is up

# Session is over if the hours ever reach -1
# > This function handles setting the remaining times to 0
# > This function handles deactivating the session
execute if score #session SessionHours matches ..-1 run function lifetime:session/end

