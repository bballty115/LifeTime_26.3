## Generate this file with python script

# Generate a random number between 1 and the number of tasks
execute store result score #task_id Counter run random value 1..NUMBEROFTASKS

# Schedule the task to announce in 5 minutes
schedule function lifetime:event_handling/handle_announce_task 6000s

# Announce that a task will be available in an amount of time
tellraw @a [{"text": "Task has been rolled and will be announced in 5 minutes!"}]

# Set task selected flag to true
scoreboard players set #task_selected Counter 1