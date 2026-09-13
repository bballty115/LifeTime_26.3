# Set the session to inactive
scoreboard players set #session_active Counter 0

# Announce the end of session
tellraw @a {"text": "Session is over!", "color": "blue"}