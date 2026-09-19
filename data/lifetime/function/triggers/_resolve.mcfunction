##
## Easy access to all triggers to resolve
##

##
## Time Triggers
##

# Toggle Timer
execute as @a[scores={ToggleTimer=1}] run function lifetime:triggers/toggle_timer/handler
function lifetime:triggers/toggle_timer/update_permissions

# Show Time
execute as @a[scores={ShowTime=1}] run function lifetime:triggers/show_time/handler
function lifetime:triggers/show_time/update_permissions

##
## Random Player Select
##

# Random Active Player
execute as @a[scores={SelectRandomActivePlayer=1}] run function lifetime:triggers/select_random/active/handler
function lifetime:triggers/select_random/active/update_permissions

# Random Non-Failed Player
execute as @a[scores={SelectRandomNonFailedPlayer=1}] run function lifetime:triggers/select_random/non_failed/handler
function lifetime:triggers/select_random/non_failed/update_permissions

##
## Task Completion
##

# Fail Task
execute as @a[scores={TaskFail=1}] run function lifetime:triggers/task/fail/handler
function lifetime:triggers/task/fail/update_permissions

# Complete Task
execute as @a[scores={TaskComplete=1}] run function lifetime:triggers/task/complete/handler
function lifetime:triggers/task/complete/update_permissions

# Undo
execute as @a[scores={TaskUndo=1}] run function lifetime:triggers/task/undo/handler
function lifetime:triggers/task/undo/update_permissions

# Lose Time
#!c execute as @a[scores={LoseTime_USERNAME=1}] run function lifetime:triggers/lose_time/handler
# [Generated From Compiler]
execute as @a[scores={LoseTime_bballty115=1}] run function lifetime:triggers/lose_time/handler
# [Generated From Compiler]
execute as @a[scores={LoseTime_Hungus=1}] run function lifetime:triggers/lose_time/handler
function lifetime:triggers/lose_time/update_permissions

# Reroll Task (Vote)
execute as @a[scores={SessionTaskRerollVote=1}] run function lifetime:triggers/session_task_reroll_vote/handler
function lifetime:triggers/session_task_reroll_vote/update_permissions

# Skip Task (Vote)
execute as @a[scores={ImpossibleTaskSkipVote=1}] run function lifetime:triggers/impossible_task_skip_vote/handler
function lifetime:triggers/impossible_task_skip_vote/update_permissions

##
## Misc
##

# Kill Confirmation
execute as @a[scores={ClaimKill=1}] run function lifetime:triggers/claim_kill/handler
function lifetime:triggers/claim_kill/update_permissions

# Toggle Gamemode
execute as @a[scores={ToggleGamemode=1}] run function lifetime:triggers/toggle_gamemode/handler
function lifetime:triggers/toggle_gamemode/update_permissions

# View Current Task
execute as @a[scores={CurrentTask=1}] run function lifetime:triggers/current_task/handler
function lifetime:triggers/current_task/update_permissions

# Help Menu
execute as @a[scores={Help=1}] run function lifetime:triggers/help/handler
function lifetime:triggers/help/update_permissions

# Admin Help Menu
execute as @a[scores={AdminHelp=1}] run function lifetime:triggers/admin_help/handler
function lifetime:triggers/admin_help/update_permissions