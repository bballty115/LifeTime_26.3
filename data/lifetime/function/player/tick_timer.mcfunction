##
## Tick player PlayerLife down 1 tick, bound PlayerLife, and eliminate player out of PlayerLife
##
## Executor: An active player

## Decrement time

# Tick down 1 tick
scoreboard players remove @s PlayerLifeTicks 1

## Handle tick bounds

# Pull ticks from second if ticks is too low
scoreboard players remove @s[scores={PlayerLifeTicks=..-1}] PlayerLifeSeconds 1
scoreboard players add @s[scores={PlayerLifeTicks=..-1}] PlayerLifeTicks 20
# Pull seconds from minute if seconds too low
scoreboard players remove @s[scores={PlayerLifeSeconds=..-1}] PlayerLifeMinutes 1
scoreboard players add @s[scores={PlayerLifeSeconds=..-1}] PlayerLifeSeconds 60
# Pull minute from hours if minute too low
scoreboard players remove @s[scores={PlayerLifeMinutes=..-1}] PlayerLifeHours 1
scoreboard players add @s[scores={PlayerLifeMinutes=..-1}] PlayerLifeMinutes 60
# If minutes too high, convert to hours instead
scoreboard players add @s[scores={PlayerLifeMinutes=60..}] PlayerLifeHours 1
scoreboard players remove @s[scores={PlayerLifeMinutes=60..}] PlayerLifeMinutes 60
# If seconds too high, convert to minutes instead
scoreboard players add @s[scores={PlayerLifeSeconds=60..}] PlayerLifeMinutes 1
scoreboard players remove @s[scores={PlayerLifeSeconds=60..}] PlayerLifeSeconds 60
# If ticks too high, convert to seconds instead
scoreboard players add @s[scores={PlayerLifeTicks=20..}] PlayerLifeSeconds 1
scoreboard players remove @s[scores={PlayerLifeTicks=20..}] PlayerLifeTicks 20

## Player team

# Assign team based on hours remaining
team join green @s[scores={PlayerLifeHours=16..}]
team join yellow @s[scores={PlayerLifeHours=8..15}]
team join red @s[scores={PlayerLifeHours=0..7}]
team leave @s[scores={PlayerLifeHours=..-1}]

## Eliminate if out of time

# Announce player death to server
execute if score @s PlayerLifeHours matches ..-1 run title @a title [{"selector":"@s", color:"red"}, {"text": " timed out"}]

# If Eliminated
# > Remove active player status
# > Set their timer to session timer
# > Set all time values to 0
scoreboard players set @s[scores={PlayerLifeHours=..-1}] ActivePlayer 0
scoreboard players set @s[scores={PlayerLifeHours=..-1}] DisplayTimerId 1
scoreboard players set @s[scores={PlayerLifeHours=..-1}] PlayerLifeTicks 0
scoreboard players set @s[scores={PlayerLifeHours=..-1}] PlayerLifeMinutes 0
scoreboard players set @s[scores={PlayerLifeHours=..-1}] PlayerLifeHours 0