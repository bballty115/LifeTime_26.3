##
## Given a length of a list, return a random index within the list
##
## Pre:
## > length is at least 1
##
## Param:
## > length: The length of a list
##
## Return:
## > A random index within the list

# Since negative indexing works, use -length..-1 for our random return value
$return run random value -$(length)..-1