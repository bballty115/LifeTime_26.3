##
## Archive the current task, announce
##

# Store the current task id before archiving
execute store result score #temp temp run data get storage lifetime:data tasks.current.id

# Announce task is archived if one existed
execute unless score #temp temp matches 0 run tellraw @a [{color:"yellow",text:"The current task has been removed from the pool."}]

# Archive the current task if there is one
function lifetime:task/archive_current

# Clear current task, reset player task statuses
function lifetime:task/manager/action/clear_current_reset_player_task_status

# Update task status [0]
function lifetime:task/manager/action/mark_no_active