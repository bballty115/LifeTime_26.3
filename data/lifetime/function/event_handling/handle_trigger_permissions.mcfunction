## Permissions for Completing a task

# Assume that no player can complete a task
scoreboard players reset @a CompleteTask

# If a task is active, let active players who have not yet failed complete the task
execute unless score #task_announced Counter matches 0 run execute run scoreboard players enable @a[scores={TaskStatus=0, ActivePlayer=1}] CompleteTask

# HOWEVER, remove the ability to complete a task from everyone if someone has already completed a task
execute if score @p[scores={TaskStatus=4..}] TaskStatus matches 4.. run scoreboard players reset @a CompleteTask

# Also remove it from everyone if the session is not active
execute if score #session_active Counter matches 0 run scoreboard players reset @a CompleteTask


## Permissions for Failing a task

# Assume that no player can fail a task
scoreboard players reset @a FailTask

# If a task is active, let active players who have not yet failed fail the task
execute unless score #task_announced Counter matches 0 run execute run scoreboard players enable @a[scores={TaskStatus=0, ActivePlayer=1}] FailTask

# HOWEVER, remove the ability to complete a task from everyone if someone has already completed a task
execute if score @p[scores={TaskStatus=4..}] TaskStatus matches 4.. run scoreboard players reset @a FailTask

# Also remove it from everyone if the session is not active
execute if score #session_active Counter matches 0 run scoreboard players reset @a FailTask


## Permissions for RandomActivePlayer function

# Assume that no player has access to randomly selectced a player
scoreboard players reset @a RandomActivePlayer

# Only active players have access to this command
scoreboard players enable @a[scores={ActivePlayer=1}] RandomActivePlayer

# Also remove it from everyone if the session is not active
execute if score #session_active Counter matches 0 run scoreboard players reset @a RandomActivePlayer


## Permissions for claiming a kill

# Assume that no player can claim a kill
scoreboard players reset @a iKilledSomeone

# Active players may claim a kill
scoreboard players enable @a[scores={ActivePlayer=1}] iKilledSomeone

# Also remove it from everyone if the session is not active
execute if score #session_active Counter matches 0 run scoreboard players reset @a iKilledSomeone



## Permissions for selecting player to lose time

# This will be generated with a python script

# Assume that no player can access these trigger commands
scoreboard players reset @a bballty115

# A player who has prompted to complete a task may use these trigger commands
#  so long as the player in question is an active player
execute unless score bballty115 ActivePlayer matches 0 run scoreboard players enable @p[scores={TaskStatus=5}] bballty115




## Permissions for rerolling a given task

# Assume that no player can access this trigger command
scoreboard players reset @a Reroll

# As long as a reroll has not yet occured this session, active players who have not yet prompted for a reroll
#  may use this command
execute unless score #task_rerolled Counter matches 1 run scoreboard players enable @a[scores={ActivePlayer=1, PromptedReroll=0}] Reroll

# Also remove it from everyone if the session is not active
execute if score #session_active Counter matches 0 run scoreboard players reset @a Reroll



## Permissions for toggling timer

# All players have permission to this trigger command
scoreboard players reset @a ToggleTimer
scoreboard players enable @a ToggleTimer



## Permissions for showing player remaining time

# Assume that no player can access this trigger command
scoreboard players reset @a ShowTime

# Active players may use this command
scoreboard players enable @a[scores={ActivePlayer=1}] ShowTime


## Permissions for displaying help for runnable commands

# All players have permission to this trigger command
scoreboard players reset @a Help
scoreboard players enable @a Help


## Permissions for undo complete task

# Assume that no player can access this trigger command
scoreboard players reset @a UndoCompleteTask

# Players who have opted to complete the task can opt to undo it so long as the session is active
execute if score #session_active Counter matches 1 run scoreboard players enable @a[scores={TaskStatus=4..}] UndoCompleteTask


## Permissions for undo fail task

# Assume that no player can access this trigger command
scoreboard players reset @a UndoFailTask

# Players who have opted to fail the task can opt to undo it as long as the session is active
execute if score #session_active Counter matches 1 run scoreboard players enable @a[scores={TaskStatus=1..3}] UndoFailTask
