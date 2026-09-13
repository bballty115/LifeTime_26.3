## Generate this file with a python script

# Publically announce the task based on the current #task_id

# Generate the announcement for each task with code
execute if score #task_id Counter matches TASKID run title @a title {"text": "TASKTITLE"} NEWLINEexecute if score #task_id Counter matches TASKID run tellraw @a {"text": "TASKTITLE"} NEWLINEexecute if score #task_id Counter matches TASKID run tellraw @a {"text": "TASKDESCRIPTION"}



# At the end, there should be a button to complete the task and a button to fail out of the task, both triggering 
tellraw @a [{"text": "COMPLETE", "color": "green", "click_event": {"action": "run_command", "command": "/trigger CompleteTask"}}, {"text": "  |  ", "color": "white"}, {"text": "FAIL", "color": "red", "click_event": {"action": "run_command", "command": "/trigger FailTask"}}]


# Indicate that a task has been announced
scoreboard players set #task_announced Counter 1