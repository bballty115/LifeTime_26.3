##
## Permissions for TaskFail
##

# If there is an active task and no players who have completed the current task, any active player with no task status may trigger this
scoreboard players reset @a TaskFail
execute if function lifetime:task/manager/action/is_task_active unless entity @p[scores={TaskStatus=2}] run scoreboard players enable @a[scores={ActivePlayer=1,TaskStatus=0}] TaskFail