##
## End a session
##

# Archive the current task [Task Manager 5]
scoreboard players set #TaskManager TaskStatus 5

# Reset all current session times to 0
scoreboard players set #session SessionTicks 0
scoreboard players set #session SessionSeconds 0
scoreboard players set #session SessionMinutes 0
scoreboard players set #session SessionHours 0

# Deactivate the session
scoreboard players set #session SessionActive 0

# Announce end of session
tellraw @a {color:"blue",text:"Session over!"}