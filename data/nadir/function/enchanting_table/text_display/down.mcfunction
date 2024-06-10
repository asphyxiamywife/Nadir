execute unless score @s nadir.text_display.animation matches ..2147483647 run scoreboard players set @s nadir.text_display.animation 11
scoreboard players remove @s nadir.text_display.animation 1

execute if score @s nadir.text_display.animation matches 10 run playsound minecraft:item.book.page_turn block @a[distance=0..]
execute if score @s nadir.text_display.animation matches 10 run playsound minecraft:block.enchantment_table.use block @a[distance=0..] ~ ~ ~ 0.1 1
execute if score @s nadir.text_display.animation matches 10 run function nadir:enchanting_table/text_display/down_kill_interactions
execute if score @s nadir.text_display.animation matches 10 run playsound minecraft:ui.toast.out block @a[distance=0..] ~ ~ ~ 1

execute store result storage nadir:temp animations.progress.frame int 1 run scoreboard players get @s nadir.text_display.animation
function nadir:enchanting_table/text_display/macro with storage nadir:temp animations.progress

execute if score @s nadir.text_display.animation matches 0 run function nadir:enchanting_table/text_display/animation_finish/down
