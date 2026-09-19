##
## Fail a player from completing the task
##
## Executor: Player who triggered TaskFail

# Set players task status to task failed (1)
scoreboard players set @s TaskStatus 1

# Announce task failure globally
tellraw @a {"text":"","extra":[{"selector":"@s",color:yellow},{"text":" has failed the current task!"}]}

# If only one player remains who has not failed the current task, they complete the task by default
execute store result score #remaining_unfailed_players temp if entity @a[scores={ActivePlayer=1, TaskStatus=0}]
execute if score #remaining_unfailed_players temp matches 1 as @p[scores={TaskStatus=0,ActivePlayer=1}] run trigger TaskComplete


# Announce number of remaining unfailed players if greater than 1
execute if score #remaining_unfailed_players temp matches 2.. run tellraw @a [{"score":{"name":"#remaining_unfailed_players","objective": "temp"}}, {"text":" players remain."}]

# Give user the undo prompt in the event of a misclick
tellraw @s [{"text": "[Failed task by mistake? Click ", "italic": true}, {"text": "here", "underlined": true, "color": "yellow", "click_event": {"action": "run_command", "command": "/trigger TaskUndo"}}, {"text":" to undo!]", "color": "white", "underlined": false}]
