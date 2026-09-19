##
## Permissions for SessionTaskRerollVote
##

# If the task has not been rerolled and there is an active task, any active player can vote to reroll the task
scoreboard players reset @a SessionTaskRerollVote
execute unless function lifetime:task/manager/action/was_session_task_rerolled if function lifetime:task/manager/action/is_task_active run scoreboard players enable @a[scores={ActivePlayer=1,PlayerSessionTaskRerollVote=0}] SessionTaskRerollVote