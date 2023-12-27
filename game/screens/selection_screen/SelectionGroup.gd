extends Control

@onready var grid_container = get_node("MarginContainer/ScrollContainer/MarginContainer/GridContainer")

var group_data: SelectionGroupData
var display_item_function

func _ready():
	for item: SelectionItemData in group_data.selection_items:
		var selection_item = preload("res://game/screens/selection_screen/SelectionItem.tscn").instantiate()
		selection_item.title = item.title
		selection_item.short_description = item.description
		selection_item.icon = item.icon
		selection_item.pressed.connect(display_item_function.bind(item))
		grid_container.add_child(selection_item)
