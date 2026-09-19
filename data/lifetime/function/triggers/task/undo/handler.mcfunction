##
## Undo a player either completing or failing a task
##
## Executor: Player who triggered TaskUndo

# If player completed the task by mistake, announce so
execute if score @s TaskStatus matches 2 run tellraw @a [{selector:"@s", color:"yellow"}, {text:" has undone the completion of the current task."}]

# If the player failed the task by mistake, announce so
execute if score @s TaskStatus matches 1 run tellraw @a [{selector:"@s", color:"yellow"}, {text:" has undone the failure of the current task."}]
# If there are no other players who failed the task, undo the auto-complete
execute if score @s TaskStatus matches 1 unless entity @p[scores={ActivePlayer=1,TaskStatus=0}] run tellraw @a [{selector:"@p[scores={ActivePlayer=1,TaskStatus=2}]"}, "'s completion of the task will be undone."]
# Revert task completing player's task status if there status was granted via auto complete
execute if score @s TaskStatus matches 1 unless entity @p[scores={ActivePlayer=1,TaskStatus=0}] run scoreboard players set @p[scores={ActivePlayer=1,TaskStatus=2}] TaskStatus 0

# Revert this player's task status
scoreboard players set @s TaskStatus 0