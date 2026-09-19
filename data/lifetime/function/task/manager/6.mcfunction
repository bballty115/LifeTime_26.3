##
## Current task complete. Archive current task. If time permits, schedule a new task. Announce either way
##

# Archive the current task
function lifetime:task/archive_current

# Clear current task, reset player task statuses
function lifetime:task/manager/action/clear_current_reset_player_task_status

# Store if enough time remains in session for a new task
execute store result score #temp temp if score #session SessionMinutes >= #TASK_MIN_TIME_TO_SCHEDULE_MINUTES const

# Schedule another task if time permits [7]
execute if score #temp temp matches 1 run function lifetime:task/manager/action/schedule_new

# Otherwise, don't [0]
execute if score #temp temp matches 0 run tellraw @a [{text:"Not enough time remaining in session for another task. No new task will be selected.", color:"green"}]
execute if score #temp temp matches 0 run function lifetime:task/manager/action/mark_no_active
