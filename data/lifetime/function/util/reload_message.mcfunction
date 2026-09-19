##
## Message posted on reload
##

tellraw bballty115 "\n"
tellraw bballty115 "\n"

tellraw bballty115 [{"text":"Init Game","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/function lifetime:game/init"}}, {"text": " - Init the game.\n", "underlined": false, "color": "white"}]

tellraw bballty115 [{"text":"Start Game","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/function lifetime:game/start"}}, {"text": " - Start the game.\n", "underlined": false, "color": "white"}]

tellraw bballty115 [{"text":"Help","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/trigger Help"}}, {"text": " - Help Menu.\n", "underlined": false, "color": "white"}]

tellraw bballty115 [{"text":"Admin Help","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/trigger AdminHelp"}}, {"text": " - Admin Help Menu.\n", "underlined": false, "color": "white"}]

tellraw bballty115 [{"text":"Reload","underlined":true,"color":"green","click_event":{"action":"run_command","command":"/reload"}}, {"text": " - Reload the datapack.\n", "underlined": false, "color": "white"}]