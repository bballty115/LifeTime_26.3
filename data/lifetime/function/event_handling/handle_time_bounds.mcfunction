# Handle the timer bounds for players
function lifetime:time/bound_player_times

# Handle the timer bounds for the session

# Store current session times in the corresponding parameter (#session_time_remaining -> #temp_times)
execute store result score #temp_times TimeHours run scoreboard players get #session_time_remaining TimeHours
execute store result score #temp_times TimeMinutes run scoreboard players get #session_time_remaining TimeMinutes
execute store result score #temp_times TimeSeconds run scoreboard players get #session_time_remaining TimeSeconds
execute store result score #temp_times TimeTicks run scoreboard players get #session_time_remaining TimeTicks

# Run the function to bound the temp times
function lifetime:time/bound_scoreboard_time

# Store the result back in the respective variable (#temp_times -> #session_time_remaining)
execute store result score #session_time_remaining TimeHours run scoreboard players get #temp_times TimeHours
execute store result score #session_time_remaining TimeMinutes run scoreboard players get #temp_times TimeMinutes
execute store result score #session_time_remaining TimeSeconds run scoreboard players get #temp_times TimeSeconds
execute store result score #session_time_remaining TimeTicks run scoreboard players get #temp_times TimeTicks
