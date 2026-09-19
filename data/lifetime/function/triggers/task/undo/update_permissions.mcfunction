##
## Permissions for TaskUndo
##

# As long as a task is active, any active player with a task status other than 0 can undo
scoreboard players reset @a TaskUndo
execute if function lifetime:task/manager/action/is_task_active run scoreboard players enable @a[scores={ActivePlayer=1,TaskStatus=1..}] TaskUndo