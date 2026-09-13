# Undo complete task status for a player that prompted it
scoreboard players set @p[scores={UndoFailTask=1}] TaskStatus 0

# Announce that this player has undid this action
execute if score bballty115 UndoFailTask matches 1 run tellraw @a {"text":"bballty115 has undone the 'FailTask' command.", "color": "yellow"}

# Re-calculate the number of non-failed non-active players
execute store result score #active_nonfail_players Counter if entity @a[scores={ActivePlayer=1, TaskStatus=0}]

# If this was the last player to fail the challenge, undo and announce the complete task for the player who has it and recalculate number of non-failed players
execute if score #active_nonfail_players Counter matches 1 run tellraw @a {"text": "Since every other player has failed, this will now undo the 'CompleteTask' for the player who did not fail.", "color": "yellow"}
execute if score #active_nonfail_players Counter matches 1 run execute as @p[scores={TaskStatus=4..}] run trigger UndoCompleteTask
function lifetime:event_handling/handle_undo_complete
scoreboard players set @a[scores={UndoCompleteTask=1}] UndoCompleteTask 0
execute if score #active_nonfail_players Counter matches 1 run execute store result score #active_nonfail_players Counter if entity @a[scores={ActivePlayer=1, TaskStatus=0}]

# Re-announce number of active non-failed players
tellraw @a [{"score":{"name":"#active_nonfail_players","objective": "Counter"}}, {"text":" players remain."}]
