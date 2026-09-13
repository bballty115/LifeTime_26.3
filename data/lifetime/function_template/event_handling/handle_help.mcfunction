# Run the following tell commands to players

# Overview of command prompt
tellraw @a[scores={Help=1}] [{"text": "\n\nBelow is a list of all the possible commands. Click the underlined command name to run it! \n*Remember that all commands start with '/trigger'.\n"}]

# Complete Task
tellraw @a[scores={Help=1}] [{"text":"CompleteTask","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/trigger CompleteTask"}}, {"text": " - Register that you have completed the current task. Will allow you to select a player to lose time.\n", "underlined": false, "color": "white"}]

# Fail Task
tellraw @a[scores={Help=1}] [{"text":"FailTask","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/trigger FailTask"}}, {"text": " - Register that you have failed the current task.\n", "underlined": false, "color": "white"}]

# Help
tellraw @a[scores={Help=1}] [{"text":"Help","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/trigger Help"}}, {"text": " - Displays information on all commands.\n", "underlined": false, "color": "white"}]

# iKilledSomeone
tellraw @a[scores={Help=1}] [{"text":"iKilledSomeone","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/trigger iKilledSomeone"}}, {"text": " - Register that you killed a player to gain time.\n", "underlined": false, "color": "white"}]

# RandomActivePlayer
tellraw @a[scores={Help=1}] [{"text":"RandomActivePlayer","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/trigger RandomActivePlayer"}}, {"text": " - Randomly select an active player.\n", "underlined": false, "color": "white"}]

# ShowTime
tellraw @a[scores={Help=1}] [{"text":"ShowTime","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/trigger ShowTime"}}, {"text": " - Displays your remaining amount of life time.\n", "underlined": false, "color": "white"}]

# Reroll
tellraw @a[scores={Help=1}] [{"text":"Reroll","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/trigger Reroll"}}, {"text": " - Prompt to reroll the current task once per session.\n", "underlined": false, "color": "white"}]

# ToggleTimer
tellraw @a[scores={Help=1}] [{"text":"ToggleTimer","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/trigger ToggleTimer"}}, {"text": " - Toggle between Session and Life Timer.", "underlined": false, "color": "white"}]
