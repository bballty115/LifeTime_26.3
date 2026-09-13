# Disable command block output (For trigger commands)
# TODO - Disable for real game
#gamerule send_command_feedback false

# Set keep inventory (As per the rules of this season)
gamerule keep_inventory true

## Remove items that players can not craft
# Remove enchant table bookshelf and tnt
gamerule limited_crafting true
recipe give @a *
recipe take @a enchanting_table
recipe take @a bookshelf
recipe take @a tnt

## Enable keep inventory
gamerule keep_inventory true

## Remove any pre-existing scoreboards
scoreboard objectives remove TimeHours 
scoreboard objectives remove TimeMinutes
scoreboard objectives remove TimeSeconds
scoreboard objectives remove TimeTicks
scoreboard objectives remove TimeTotalTicks
scoreboard objectives remove ActivePlayer
scoreboard objectives remove Counter
scoreboard objectives remove TaskStatus
scoreboard objectives remove CompleteTask
scoreboard objectives remove FailTask
scoreboard objectives remove RandomActivePlayer
scoreboard objectives remove iKilledSomeone
scoreboard objectives remove Reroll
scoreboard objectives remove PromptedReroll
scoreboard objectives remove ToggleTimer
scoreboard objectives remove TimerEnabled
scoreboard objectives remove ShowTime
scoreboard objectives remove PlayerDied
scoreboard objectives remove Help
scoreboard objectives remove UndoCompleteTask
scoreboard objectives remove UndoFailTask
scoreboard objectives remove temp

## Generate scoreboards
scoreboard objectives add TimeHours dummy
scoreboard objectives add TimeMinutes dummy
scoreboard objectives add TimeSeconds dummy
scoreboard objectives add TimeTicks dummy
# Used for tracking the players lifetime in terms of ticks rather than hours, minutes, seconds and ticks
scoreboard objectives add TimeTotalTicks dummy
# Active player covers a player who is alive and participating in the game
scoreboard objectives add ActivePlayer dummy
scoreboard objectives add Counter dummy
scoreboard objectives add TaskStatus dummy
scoreboard objectives add CompleteTask trigger
scoreboard objectives add FailTask trigger
scoreboard objectives add RandomActivePlayer trigger
scoreboard objectives add iKilledSomeone trigger
scoreboard objectives add Reroll trigger
scoreboard objectives add PromptedReroll dummy
scoreboard objectives add ToggleTimer trigger
scoreboard objectives add TimerEnabled dummy
scoreboard objectives add ShowTime trigger
scoreboard objectives add PlayerDied deathCount
scoreboard objectives add Help trigger
scoreboard objectives add UndoCompleteTask trigger
scoreboard objectives add UndoFailTask trigger
scoreboard objectives add temp dummy

# Generate trigger for each player username
scoreboard objectives add bballty115 trigger


## Initalize teams
# Remove any pre-existing teams
team remove green
team remove yellow
team remove red

# Generate teams
team add green
team add yellow
team add red

# Set team colors
team modify green color green
team modify yellow color yellow
team modify red color red



## Set the active players
# (This should be done with a python script)
scoreboard players set bballty115 ActivePlayer 1



## Starting values for variable

# The session is inactive to start
scoreboard players set #session_active Counter 0

# Active players have 24 hours
scoreboard players set @a[scores={ActivePlayer=1}] TimeHours 24
scoreboard players set @a[scores={ActivePlayer=1}] TimeMinutes 0
scoreboard players set @a[scores={ActivePlayer=1}] TimeSeconds 0
scoreboard players set @a[scores={ActivePlayer=1}] TimeTicks 0

# Set player death count to 0
scoreboard players set @a PlayerDied 0

# Set the timer to enabled to start
scoreboard players set @a TimerEnabled 1

## Initalize the timer for all players
# Create timer bossbar for session and players
bossbar add session_timer "Session Timer"

# Set the session timer to 2 hours and the current time to none
bossbar set session_timer max 144000
scoreboard players set #session_time_remaining Counter 0
scoreboard players set #session_time_remaining TimeHours 0
scoreboard players set #session_time_remaining TimeMinutes 0
scoreboard players set #session_time_remaining TimeSeconds 0
scoreboard players set #session_time_remaining TimeTicks 0

# Make visible to all active players
bossbar set session_timer players @a[scores={ActivePlayer=1}]

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
gamemode survival @a[scores={ActivePlayer=1..}]
