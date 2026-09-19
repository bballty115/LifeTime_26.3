##
## Display available trigger commands to a player
##
## Executor: Player who triggered Help

tellraw @s [{"text": "\nBelow is a list of all the possible commands. Click the green command name to run it! \n"}]

# Toggle Timer
tellraw @s[scores={ToggleTimer=0..}] [{"text":"[Toggle Timer]","color":"green","click_event":{"action":"run_command","command":"/trigger ToggleTimer"}}, {"text": " - Toggle between Session and Life timer.", "underlined": false, "color": "white"}]

# Show Time
tellraw @s[scores={ShowTime=0..}] [{"text":"[Show Time]","color":"green","click_event":{"action":"run_command","command":"/trigger ShowTime"}}, {"text": " - Display remaining life time.\n", "underlined": false, "color": "white"}]


# Current Task
tellraw @s[scores={CurrentTask=0..}] [{"text":"[Display Task]","color":"green","click_event":{"action":"run_command","command":"/trigger CurrentTask"}}, {"text": " - Display the current task.", "underlined": false, "color": "white"}]

# Task Complete
tellraw @s[scores={TaskComplete=0..}] [{"text":"[Complete Task]","color":"green","click_event":{"action":"run_command","command":"/trigger TaskComplete"}}, {"text": " - Complete a task.", "underlined": false, "color": "white"}]

# Task Fail
tellraw @s[scores={TaskFail=0..}] [{"text":"[Fail Task]","color":"green","click_event":{"action":"run_command","command":"/trigger TaskFail"}}, {"text": " - Fail out of a task.", "underlined": false, "color": "white"}]

# Task Undo
tellraw @s[scores={TaskUndo=0..}] [{"text":"[Undo Complete / Fail]","color":"green","click_event":{"action":"run_command","command":"/trigger TaskUndo"}}, {"text": " - Undo failing / completing a task.\n", "underlined": false, "color": "white"}]


# Session Task Reroll Vote
tellraw @s[scores={SessionTaskRerollVote=0..}] [{"text":"[Reroll Task]","color":"green","click_event":{"action":"run_command","command":"/trigger SessionTaskRerollVote"}}, {"text": " - Vote to reroll task once per session. Requires half the active players.", "underlined": false, "color": "white"}]

# Impossible Task Skip Vote
tellraw @s[scores={ImpossibleTaskSkipVote=0..}] [{"text":"[Skip Impossible Task]","color":"green","click_event":{"action":"run_command","command":"/trigger ImpossibleTaskSkipVote"}}, {"text": " - Vote to skip an impossible task. Requires all active players.\n", "underlined": false, "color": "white"}]


# Select Random Active Player
tellraw @s[scores={SelectRandomActivePlayer=0..}] [{"text":"[Random Active Player]","color":"green","click_event":{"action":"run_command","command":"/trigger SelectRandomActivePlayer"}}, {"text": " - Roll random Active player.", "underlined": false, "color": "white"}]

# Select Random Non Failed Player
tellraw @s[scores={SelectRandomNonFailedPlayer=0..}] [{"text":"[Random Non-Failed Player]","color":"green","click_event":{"action":"run_command","command":"/trigger SelectRandomNonFailedPlayer"}}, {"text": " - Roll random Non-Failed player.\n", "underlined": false, "color": "white"}]


# Claim Kill
tellraw @s[scores={ClaimKill=0..}] [{"text":"[Claim Kill Credit]","color":"green","click_event":{"action":"run_command","command":"/trigger ClaimKill"}}, {"text": " - Claim credit for a kill, gaining some time back.", "underlined": false, "color": "white"}]

# Toggle Gamemode
tellraw @s[scores={ToggleGamemode=0..}] [{"text":"[Toggle Gamemode]","color":"green","click_event":{"action":"run_command","command":"/trigger ToggleGamemode"}}, {"text": " - Toggle between survival and spectator.", "underlined": false, "color": "white"}]
