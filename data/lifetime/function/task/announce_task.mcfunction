##
## Announce a task to a player
##
## Executor: Player to announce a task to
##
## Params:
## > id: The task id to announce


# If the task does not exist, notify the player
$execute unless data storage lifetime:data tasks.all.$(id) run return run tellraw @s [{color:'yellow',text:"Error: No task with this id found. Please confirm a task with id $(id) exists."}]


# Otherwise, the task exists. Announce it to this player
$title @s[scores={ActivePlayer=1}] title {storage:"lifetime:data",nbt:"tasks.all.$(id).name",color:"white", interpret:1b}
$tellraw @s [{text:"\n"},{storage:"lifetime:data",nbt:"tasks.all.$(id).name",color:"white", interpret:1b}] 
$tellraw @s [{text:"\n"},{storage:"lifetime:data",nbt:"tasks.all.$(id).description",color:"yellow", interpret:1b}]

# Easy access to Complete and Fail task trigger (Just for active players)
tellraw @s[scores={ActivePlayer=1}] [{"text": "COMPLETE", "color": "green", "click_event": {"action": "run_command", "command": "/trigger TaskComplete"}}, {"text": "  |  ", "color": "white"}, {"text": "FAIL", "color": "red", "click_event": {"action": "run_command", "command": "/trigger TaskFail"}}]
