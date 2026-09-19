##
## Clear current task and update all player task statuses
##

# Set current task to no task
data modify storage lifetime:data tasks.current set value {id:0}

# Clear any existing task status from all players
scoreboard players set @a TaskStatus 0

# Reset votes on once per session task reroll if it has not yet been used
execute unless function lifetime:task/manager/action/was_session_task_rerolled run scoreboard players set @a[scores={ActivePlayer=1}] PlayerSessionTaskRerollVote 0
# Reset any votes for force skip task
scoreboard players set @a[scores={ActivePlayer=1}] PlayerImpossibleTaskSkipVote 0