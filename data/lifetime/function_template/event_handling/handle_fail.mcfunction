## Handle Fail

# Mark a random player who opted to fail with task status 1
# Random person selected in case multiple people trigger the command at the same time
scoreboard players set @r[scores={FailTask=1}] TaskStatus 1

# Store the number of active players who have not yet failed the task
execute store result score #active_nonfail_players Counter if entity @a[scores={ActivePlayer=1, TaskStatus=0}]

# If a player has opted to fail, announce that player aloud and decrement the number of players who are left in the challenge by 1
scoreboard players set @p[scores={TaskStatus=1}] TaskStatus 2
execute if score @p[scores={TaskStatus=2}] TaskStatus matches 2 run tellraw @a {"text":"","extra":[{"selector":"@p[scores={TaskStatus=2}]"},{"text":" has failed the challenge!"}]}
# If more than one player remains in the challenge, announce the number of remaining players
execute if score @p[scores={TaskStatus=2}] TaskStatus matches 2 run execute if score #active_nonfail_players Counter matches 2.. run tellraw @a [{"score":{"name":"#active_nonfail_players","objective": "Counter"}}, {"text":" players remain."}]
# TODO - Sound effect here?

# Give player the undo prompt in case of a misclick
tellraw @p[scores={TaskStatus=2}] [{"text": "[Clicked this prompt by mistake? Click ", "italic": true}, {"text": "here", "underlined": true, "color": "yellow", "click_event": {"action": "run_command", "command": "/trigger UndoFailTask"}}, {"text":" to undo!]", "color": "white", "underlined": false}]


# Change task status of this player to 3, as they have failed and it has been announced
scoreboard players set @p[scores={TaskStatus=2}] TaskStatus 3

## Handle One Player Not Failed

# If only one players remains in the tast, trigger task complete for this player
# Check in place to make sure this only happens once
execute if score #active_nonfail_players Counter matches 1 run execute if score @p[scores={TaskStatus=0, CompleteTask=0}] CompleteTask matches 0 run execute as @p[scores={TaskStatus=0, CompleteTask=0}] run trigger CompleteTask
