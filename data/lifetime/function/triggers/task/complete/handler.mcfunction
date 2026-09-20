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
execute if score Puzzle_12 ActivePlayer matches 1 run tellraw @s {"text": "Puzzle_12\n", "click_event": {"action": "run_command", "command": "/trigger LoseTime_Puzzle_12"}, "color": "aqua"}
# [Generated From Compiler]
execute if score Jbloxx ActivePlayer matches 1 run tellraw @s {"text": "Jbloxx\n", "click_event": {"action": "run_command", "command": "/trigger LoseTime_Jbloxx"}, "color": "aqua"}
# [Generated From Compiler]
execute if score heckyeahbirds ActivePlayer matches 1 run tellraw @s {"text": "heckyeahbirds\n", "click_event": {"action": "run_command", "command": "/trigger LoseTime_heckyeahbirds"}, "color": "aqua"}
# [Generated From Compiler]
execute if score monobinoculus ActivePlayer matches 1 run tellraw @s {"text": "monobinoculus\n", "click_event": {"action": "run_command", "command": "/trigger LoseTime_monobinoculus"}, "color": "aqua"}
# [Generated From Compiler]
execute if score SilverRH ActivePlayer matches 1 run tellraw @s {"text": "SilverRH\n", "click_event": {"action": "run_command", "command": "/trigger LoseTime_SilverRH"}, "color": "aqua"}
# [Generated From Compiler]
execute if score Sakura_Kitty ActivePlayer matches 1 run tellraw @s {"text": "Sakura_Kitty\n", "click_event": {"action": "run_command", "command": "/trigger LoseTime_Sakura_Kitty"}, "color": "aqua"}
# [Generated From Compiler]
execute if score Etcuniversal1 ActivePlayer matches 1 run tellraw @s {"text": "Etcuniversal1\n", "click_event": {"action": "run_command", "command": "/trigger LoseTime_Etcuniversal1"}, "color": "aqua"}
# [Generated From Compiler]
execute if score Firefei ActivePlayer matches 1 run tellraw @s {"text": "Firefei\n", "click_event": {"action": "run_command", "command": "/trigger LoseTime_Firefei"}, "color": "aqua"}
# [Generated From Compiler]
execute if score Crazy_Crafter_12 ActivePlayer matches 1 run tellraw @s {"text": "Crazy_Crafter_12\n", "click_event": {"action": "run_command", "command": "/trigger LoseTime_Crazy_Crafter_12"}, "color": "aqua"}

# Give user the undo prompt in the event of a misclick
tellraw @s [{"text": "[Completed task by mistake? Click ", "italic": true}, {"text": "here", "underlined": true, "color": "yellow", "click_event": {"action": "run_command", "command": "/trigger TaskUndo"}}, {"text":" to undo!]", "color": "white", "underlined": false}]
