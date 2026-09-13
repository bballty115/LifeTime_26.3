# Bound all players times to correct values
# If hours is ever negative, that means the time is below 0

### Numbers Lower Than Expected

# Pull ticks from second if ticks is too low
scoreboard players remove @a[scores={TimeTicks=..-1}] TimeSeconds 1
scoreboard players add @a[scores={TimeTicks=..-1}] TimeTicks 20

# Pull seconds from minute if seconds too low
scoreboard players remove @a[scores={TimeSeconds=..-1}] TimeMinutes 1
scoreboard players add @a[scores={TimeSeconds=..-1}] TimeSeconds 60

# Pull minute from hours if minute too low
scoreboard players remove @a[scores={TimeMinutes=..-1}] TimeHours 1
scoreboard players add @a[scores={TimeMinutes=..-1}] TimeMinutes 60

### Numbers Higher Than Expected

# If minutes too high, convert to hours instead
scoreboard players add @a[scores={TimeMinutes=60..}] TimeHours 1
scoreboard players remove @a[scores={TimeMinutes=60..}] TimeMinutes 60

# If seconds too high, convert to minutes instead
scoreboard players add @a[scores={TimeSeconds=60..}] TimeMinutes 1
scoreboard players remove @a[scores={TimeSeconds=60..}] TimeSeconds 60

# If ticks too high, convert to seconds instead
scoreboard players add @a[scores={TimeTicks=20..}] TimeSeconds 1
scoreboard players remove @a[scores={TimeTicks=20..}] TimeTicks 20