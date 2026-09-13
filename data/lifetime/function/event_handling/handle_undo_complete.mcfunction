# Undo complete task status for a player that prompted it
scoreboard players set @p[scores={UndoCompleteTask=1,TaskStatus=4..}] TaskStatus 0

# Announce that this player has undid this action
execute if score bballty115 UndoCompleteTask matches 1 run tellraw @a {"text":"bballty115 has undone the 'CompleteTask' command.", "color": "yellow"}
