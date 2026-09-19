##
## Start a game, initializing all starting variables and starting the first session
##

# Initialize all game variables
function lifetime:game/init

# Initalize all player starting values
execute as @a run function lifetime:player/init

# Initalize task storage
function lifetime:task/init

# Enable required gamerules
gamerule keep_inventory true

execute if score #TESTING_MODE const matches 1 run gamerule send_command_feedback true
execute unless score #TESTING_MODE const matches 1 run gamerule send_command_feedback true

# Start the first session
function lifetime:session/start