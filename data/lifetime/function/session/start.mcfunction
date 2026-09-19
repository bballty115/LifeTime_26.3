##
## Start a session
##

# Set the session start times
scoreboard players operation #session SessionHours = #SESSION_HOURS const
scoreboard players operation #session SessionMinutes = #SESSION_MINUTES const
scoreboard players operation #session SessionSeconds = #SESSION_SECONDS const
scoreboard players operation #session SessionTicks = #SESSION_TICKS const

# Ensure the bossbar has the correct maximum time based on the current ticks
execute store result bossbar session_timer max run function lifetime:session/ticks_remaining

# Schedule the first task of the session
function lifetime:task/manager/action/schedule_initial

# Reset flag for once per session task skip
scoreboard players set #session SessionTaskRerolled 0

# Set session to active
scoreboard players set #session SessionActive 1