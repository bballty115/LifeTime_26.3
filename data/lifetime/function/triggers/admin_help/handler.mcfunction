##
## Display available commands to an admin
##
## Executor: Player who triggered AdminHelp


tellraw @s [{"text": "\n\nBelow is a list of all the Admin. Click the green command name to run it!\n\n"}]

# Refresh task list
tellraw @s [{"text":"[Refresh Task Pool]","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/function lifetime:task/refresh_pool"}}, {"text": " - Refresh task pool.\n", "underlined": false, "color": "white"}]

# Start session
tellraw @s [{"text":"[Start Session]","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/function lifetime:session/start"}}, {"text": " - Start a session.\n", "underlined": false, "color": "white"}]

# Pause / Unpause session
tellraw @s [{"text":"[Pause / Unpause]","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/function lifetime:util/toggle_pause"}}, {"text": "  - Pause / Unpause the game.\n", "underlined": false, "color": "white"}]

# Force skip the current task
tellraw @s [{"text":"[Force Skip Task]","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/function lifetime:task/manager/action/skip_current"}}, {"text": " - Force skip the current task (Archives it).\n", "underlined": false, "color": "white"}]

# Force recycle the current task
tellraw @s [{"text":"[Recycle Task]","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/function lifetime:task/manager/action/recycle_current"}}, {"text": " - Recycle the current task.\n", "underlined": false, "color": "white"}]

# Reload datapack
tellraw @s [{"text":"[Reload Datapack]","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/reload"}}, {"text": " - Reload the datapack.\n", "underlined": false, "color": "white"}]
