##
## Called once every tick, handles game logic
##

# If game is paused, do not resolve anything
execute if function lifetime:util/is_game_paused run return fail

# Handle player death for relevant players
execute as @a[scores={PlayerDied=1..}] run function lifetime:player/handle_death

# Tick down active player and session time if session is active and game is unpaused
execute if function lifetime:session/is_active run function lifetime:session/tick_timer
execute if function lifetime:session/is_active as @a[scores={ActivePlayer=1}] run function lifetime:player/tick_timer

# Resolve triggers
function lifetime:triggers/_resolve

# Tick the task manager
function lifetime:task/tick_manager

# Update displays
function lifetime:session/display_timer
function lifetime:player/display_life_timer

# Limit enchants
function lifetime:enchantment/tick