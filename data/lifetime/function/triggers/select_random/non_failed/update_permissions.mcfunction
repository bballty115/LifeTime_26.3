##
## Permissions for SelectRandomNonFailedPlayer
##

# All active players may run this command if a task is active
scoreboard players reset @a SelectRandomNonFailedPlayer
execute if function lifetime:task/manager/action/is_task_active run scoreboard players enable @a[scores={ActivePlayer=1}] SelectRandomNonFailedPlayer