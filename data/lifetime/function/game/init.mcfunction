##
## Initialize all game variables
##

##
## Trigger Scoreboards
##

# Timer / Time
scoreboard objectives add ToggleTimer trigger
scoreboard objectives add ShowTime trigger
# Task
scoreboard objectives add TaskComplete trigger
scoreboard objectives add TaskFail trigger
scoreboard objectives add TaskUndo trigger
scoreboard objectives add CurrentTask trigger
scoreboard objectives add SessionTaskRerollVote trigger
scoreboard objectives add ImpossibleTaskSkipVote trigger
# Random Player Selection
scoreboard objectives add SelectRandomActivePlayer trigger
scoreboard objectives add SelectRandomNonFailedPlayer trigger
# Kill Confirmation
scoreboard objectives add ClaimKill trigger
# Utility
scoreboard objectives add ToggleGamemode trigger
scoreboard objectives add Help trigger
scoreboard objectives add AdminHelp trigger
# Active Player Lose Time
#!c scoreboard objectives add LoseTime_USERNAME trigger
# [Generated From Compiler]
scoreboard objectives add LoseTime_bballty115 trigger
# [Generated From Compiler]
scoreboard objectives add LoseTime_Hungus trigger

##
## Non-Trigger Scoreboards
##

# Temp and Const
scoreboard objectives add temp dummy
scoreboard objectives add const dummy

# Timer Id
scoreboard objectives add DisplayTimerId dummy
# Player Status
scoreboard objectives add PlayerAdmin dummy
scoreboard objectives add ActivePlayer dummy
# Player Died
scoreboard objectives add PlayerDied deathCount
# Life Timer
scoreboard objectives add PlayerLifeHours dummy
scoreboard objectives add PlayerLifeMinutes dummy
scoreboard objectives add PlayerLifeSeconds dummy
scoreboard objectives add PlayerLifeTicks dummy
# Task Status
scoreboard objectives add TaskStatus dummy
# Session Timer
scoreboard objectives add SessionHours dummy
scoreboard objectives add SessionMinutes dummy
scoreboard objectives add SessionSeconds dummy
scoreboard objectives add SessionTicks dummy
# Session Active
scoreboard objectives add SessionActive dummy
# Session Task Skip / Player Vote
scoreboard objectives add SessionTaskRerolled dummy
scoreboard objectives add PlayerSessionTaskRerollVote dummy
# Impossible Task Skip Player Vote
scoreboard objectives add PlayerImpossibleTaskSkipVote dummy
# Session Task Cooldown
scoreboard objectives add TaskCooldownTicks dummy
# Pause Game
scoreboard objectives add PauseGame dummy

##
## Constants
##

# Ticks in an hour, minute, and second
scoreboard players set #TICK_HOURS const 72000
scoreboard players set #TICK_MINUTES const 1200
scoreboard players set #TICK_SECONDS const 20

# Session length
scoreboard players set #SESSION_HOURS const 2
scoreboard players set #SESSION_MINUTES const 0
scoreboard players set #SESSION_SECONDS const 0
scoreboard players set #SESSION_TICKS const 0

# Player starting life time
scoreboard players set #PLAYER_LIFE_HOURS const 24
scoreboard players set #PLAYER_LIFE_MINUTES const 0
scoreboard players set #PLAYER_LIFE_SECONDS const 0
scoreboard players set #PLAYER_LIFE_TICKS const 0

# Task cooldown
scoreboard players set #TASK_COOLDOWN_MINUTES const 5
scoreboard players set #TASK_SHORT_COOLDOWN_SECONDS const 10

# Min time left in session to schedule a task
scoreboard players set #TASK_MIN_TIME_TO_SCHEDULE_MINUTES const 20

# Life loss / gain
scoreboard players set #LIFE_LOSS_TASK_FAIL_MINUTES const 120
scoreboard players set #LIFE_LOSS_DEATH_MINUTES const 60
scoreboard players set #LIFE_GAIN_PLAYER_KILL_MINUTES const 30
scoreboard players set #LIFE_GAIN_TASK_COMPLETE_MINUTES const 60

# Numbers
scoreboard players set 3 const 3
scoreboard players set 2 const 2

##
## Bossbars
##

# Session timer bossbar
bossbar add session_timer "Session Timer"
bossbar set session_timer color purple

# Generate the bossbar for all active players (bossbars can not have uppercase letters)
#!c bossbar add lifetime_USERNAMELOWER "Lifetime Remaining"
# [Generated From Compiler]
bossbar add lifetime_bballty115 "Lifetime Remaining"
# [Generated From Compiler]
bossbar add lifetime_hungus "Lifetime Remaining"

##
## Teams
##

# Generate teams
team add green
team add yellow
team add red

# Set team colors
team modify green color dark_green
team modify yellow color yellow
team modify red color red