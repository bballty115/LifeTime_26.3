##
## Permissions for ImpossibleTaskSkipVote
##

# If there is an active task, any player who hasn't voted yet can vote for a skip
scoreboard players reset @a ImpossibleTaskSkipVote
execute if function lifetime:task/manager/action/is_task_active run scoreboard players enable @a[scores={ActivePlayer=1,PlayerImpossibleTaskSkipVote=0}] ImpossibleTaskSkipVote