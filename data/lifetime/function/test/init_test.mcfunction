## Remove items that players can not craft
# Remove enchant table bookshelf and tnt
gamerule limited_crafting true
recipe give bballty115 *
recipe take bballty115 enchanting_table
recipe take bballty115 bookshelf
recipe take bballty115 tnt

# Generate trigger for each player username
scoreboard objectives add bballty115 trigger



## Set the active players
# (This should be done with a python script)
scoreboard players set bballty115 ActivePlayer 1



## Starting values for variable

# Active players have 24 hours
scoreboard players set bballty115 TimeHours 24
scoreboard players set bballty115 TimeMinutes 0
scoreboard players set bballty115 TimeSeconds 0
scoreboard players set bballty115 TimeTicks 0

# Set player death count to 0
scoreboard players set bballty115 PlayerDied 0

# Set the timer to enabled to start
scoreboard players set bballty115 TimerEnabled 1


# Make visible to all active players
bossbar set session_timer players bballty115

## Initalize the lifetime bossbar for all active players

# Generate the bossbar for all active players
# Bossbars can not have uppercase letters
bossbar add bballty115 "Lifetime Remaining"

# Set the max time in the boss bar to 24 hours, in ticks
bossbar set bballty115 max 1728000

## World settings for starting the gamemode

# Set the time to day
time set day

# Set all players gamemode to survival
gamemode survival bballty115
