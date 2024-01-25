extends Control

# Code from https://forum.godotengine.org/t/how-to-make-folding-menu/24416/2

@export var spacing = 10

func _draw():
	var last_end_anchor = Vector2.ZERO
	for child in get_children():
		child.rect_position = last_end_anchor
		last_end_anchor.y = child.rect_position.y + child.rect_size.y
		last_end_anchor.y += spacing

	custom_minimum_size.y = last_end_anchor.y # for scroll containers?
