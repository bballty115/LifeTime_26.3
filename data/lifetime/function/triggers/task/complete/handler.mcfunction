##
## Allow a player to select another player to lose time once completing a task
##
## Executor: Player who triggered TaskComplete

# Set players task status to task completed (2)
scoreboard players set @s TaskStatus 2

# Announce task completion globally
tellraw @a [{"selector": "@s"},{"text": " has completed the current task!"}]

# On call, give the player the prompt to select a player to lose time
tellraw @s {"text": "Choose a player to lose time:\n"}

# List of players to lose time
#!c execute if score USERNAME ActivePlayer matches 1 run tellraw @s {"text": "USERNAME\n", "click_event": {"action": "run_command", "command": "/trigger LoseTime_USERNAME"}, "color": "aqua"}
# [Generated From Compiler]
execute if score bballty115 ActivePlayer matches 1 run tellraw @s {"text": "bballty115\n", "click_event": {"action": "run_command", "command": "/trigger LoseTime_bballty115"}, "color": "aqua"}
# [Generated From Compiler]
execute if score Hungus ActivePlayer matches 1 run tellraw @s {"text": "Hungus\n", "click_event": {"action": "run_command", "command": "/trigger LoseTime_Hungus"}, "color": "aqua"}

# Give user the undo prompt in the event of a misclick
tellraw @s [{"text": "[Completed task by mistake? Click ", "italic": true}, {"text": "here", "underlined": true, "color": "yellow", "click_event": {"action": "run_command", "command": "/trigger TaskUndo"}}, {"text":" to undo!]", "color": "white", "underlined": false}]
