extends Control

var current_scene_data

var screen_title: Label
var selection_items_grid: GridContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_title = get_node("MarginContainer/VBoxContainer/TitleLabel")
	current_scene_data = Global.current_scene_data
	if current_scene_data.title:
		screen_title.text = current_scene_data.title
	else:
		screen_title.text = "DEFAULT SCREEN TITLE"
	
	selection_items_grid = get_node("MarginContainer/VBoxContainer/SelectionItemContainer/GridContainer")
	for item in current_scene_data.selection_items:
		var selection_item = preload("res://game/screens/selection_screen/SelectionItem.tscn")
		var instance = selection_item.instantiate()
		instance.title = item.title
		instance.short_description = item.description
		instance.icon = Image.load_from_file(item.icon)
		selection_items_grid.add_child(instance)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
