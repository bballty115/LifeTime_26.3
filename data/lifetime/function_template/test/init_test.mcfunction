## Remove items that players can not craft
# Remove enchant table bookshelf and tnt
gamerule limited_crafting true
recipe give USERNAME *
recipe take USERNAME enchanting_table
recipe take USERNAME bookshelf
recipe take USERNAME tnt

# Generate trigger for each player username
scoreboard objectives add USERNAME trigger



## Set the active players
# (This should be done with a python script)
scoreboard players set USERNAME ActivePlayer 1



## Starting values for variable

# Active players have 24 hours
scoreboard players set USERNAME TimeHours 24
scoreboard players set USERNAME TimeMinutes 0
scoreboard players set USERNAME TimeSeconds 0
scoreboard players set USERNAME TimeTicks 0

# Set player death count to 0
scoreboard players set USERNAME PlayerDied 0

# Set the timer to enabled to start
scoreboard players set USERNAME TimerEnabled 1


# Make visible to all active players
bossbar set session_timer players USERNAME

## Initalize the lifetime bossbar for all active players

# Generate the bossbar for all active players
# Bossbars can not have uppercase letters
bossbar add USERNAMELOWER "Lifetime Remaining"

# Set the max time in the boss bar to 24 hours, in ticks
bossbar set USERNAMELOWER max 1728000

## World settings for starting the gamemode

# Set the time to day
time set day

# Set all players gamemode to survival
gamemode survival USERNAME