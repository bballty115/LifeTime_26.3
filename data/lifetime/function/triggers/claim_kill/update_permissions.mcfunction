##
## Permissions for ClaimKill
##

# Any active player can claim credit for a kill
scoreboard players reset @a ClaimKill
scoreboard players enable @a[scores={ActivePlayer=1}] ClaimKill