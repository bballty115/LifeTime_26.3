#
# Every tick, if a player is holding an item with an enchant of level 2 or higher, reduce the level to 1
#

# If an entity is holding an item with an overleveled enchantment, limit it
execute as @a[predicate=lifetime:enchantment/tool_overleveled] run function lifetime:enchantment/tool_limiter
execute as @a[predicate=lifetime:enchantment/armor_overleveled] run function lifetime:enchantment/armor_limiter