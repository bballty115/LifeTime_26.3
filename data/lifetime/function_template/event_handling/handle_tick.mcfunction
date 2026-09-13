##
## Order Dependent Code
##

## Handle rerolling task if a player prompted for a reroll. One of the only cases where I won't check for two players running trigger on same tick.
execute if score #task_rerolled Counter matches 0 run execute if score @p[scores={Reroll=1}] Reroll matches 1 run function lifetime:event_handling/handle_reroll_task


## If session is active with more than 20 minutes remaining and no active task, generate a task
execute if score #session_active Counter matches 1 run execute if score #session_time_remaining Counter matches 24000.. run execute if score #task_selected Counter matches 0 run function lifetime:event_handling/handle_schedule_task

## Handle players completing or failing tasks if the session is active
execute if score #session_active Counter matches 1 run function lifetime:event_handling/handle_fail
execute if score #session_active Counter matches 1 run function lifetime:event_handling/handle_complete

## Handle players undoing completing or failing tasks if the session is active and a player has triggered this command
execute if score #session_active Counter matches 1 run execute if score @p[scores={UndoFailTask=1}] UndoFailTask matches 1 run function lifetime:event_handling/handle_undo_fail
execute if score #session_active Counter matches 1 run execute if score @p[scores={UndoCompleteTask=1}] UndoCompleteTask matches 1 run function lifetime:event_handling/handle_undo_complete


## Handle player gaining more time if they kill a player and let them know they did
scoreboard players add @p[scores={iKilledSomeone=1}] TimeMinutes 30
tellraw @p[scores={iKilledSomeone=1}] {"text": "You have claimed credit for a kill!", "color":"yellow"}

## Handle ticking down session timer and player times if the session is active
execute if score #session_active Counter matches 1 run scoreboard players remove @a[scores={ActivePlayer=1}] TimeTicks 1
execute if score #session_active Counter matches 1 run scoreboard players remove #session_time_remaining TimeTicks 1
execute if score #session_active Counter matches 1 run scoreboard players remove #session_time_remaining Counter 1

## Handle player death, in which they lose an hour and the player died flag and force trigger the showtime command
scoreboard players remove @a[scores={PlayerDied=1}] TimeHours 1
execute as @a[scores={PlayerDied=1, ShowTime=0}] run trigger ShowTime
scoreboard players set @a[scores={PlayerDied=1}] PlayerDied 0

## Handle bounding player and scoreboard times
function lifetime:event_handling/handle_time_bounds

## Handle adjusting player teams and determining active players
function lifetime:event_handling/handle_teams

## Update the session timer and lifetime timer display
function lifetime:event_handling/handle_timer_display

## Handle players showing their remaining time. Force trigger this every time a player hits a 30 minute mark or hour mark
execute if score #session_active Counter matches 1 run execute as @a[scores={ActivePlayer=1, TimeMinutes=30, TimeSeconds=0, TimeTicks=0}] run trigger ShowTime
execute if score #session_active Counter matches 1 run execute as @a[scores={ActivePlayer=1, TimeMinutes=0, TimeSeconds=0, TimeTicks=0}] run trigger ShowTime
function lifetime:event_handling/handle_show_time

## Handle ending session
execute if score #session_active Counter matches 1 run execute if score #session_time_remaining Counter matches 0 run function lifetime:session/end_session


## Handle announcing a random active player
execute if score @p[scores={RandomActivePlayer=1}] RandomActivePlayer matches 1 run tellraw @a [{"selector": "@r[scores={ActivePlayer=1}]", "color": "blue"}, {"text": " was randomly selected! [Prompted by ", "color": "white"}, {"selector": "@p[scores={RandomActivePlayer=1}]", "color": "yellow"}, {"text": "]", "color": "white"}]

## Handle players running the help command
function lifetime:event_handling/handle_help

## Handle updating player permissions for trigger commands
function lifetime:event_handling/handle_trigger_permissions


##
## Order Independent Code
##

## Clear helmets on active player's heads
item replace entity @a[scores={ActivePlayer=1}] armor.head with minecraft:air
