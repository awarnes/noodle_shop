extends PanelContainer

# Code from https://forum.godotengine.org/t/how-to-make-folding-menu/24416/2

var is_expanded = false

func _ready():
	$VBoxContainer/ExpandToggle.connect("pressed", expand)

func expand():
	is_expanded = !is_expanded

var last_rect_size = Vector2.ZERO
func _process(delta):
	# snaps to end
	if abs(size.y - custom_minimum_size.y) < 1:
		size.y = custom_minimum_size.y
	
	# Resize to target
	if is_expanded:
		size.y = lerp(size.y, 70, 0.1)
	else:
		size.y = lerp(size.y, custom_minimum_size.y, 0.1)
	
	# update layout
	if last_rect_size != size:
		get_parent().update()
		last_rect_size = size
