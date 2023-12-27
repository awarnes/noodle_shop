extends Control

var screen_data: BaseSelectionScreenData

@onready var screen_title: Label = get_node("MarginContainer/VBoxContainer/HBoxTitleContainer/TitleLabel")
@onready var selection_details: HBoxContainer = get_node("MarginContainer/VBoxContainer/HBoxSelectionDetailsContainer")
@onready var selection_items_tab: TabContainer = get_node("MarginContainer/VBoxContainer/SelectionItemContainer/TabContainer")

var primary_information: MarginContainer
var secondary_information: MarginContainer

func _ready():
	screen_title.text = screen_data.title
	selection_details.add_child(VSeparator.new())
	for group: SelectionGroupData in screen_data.selection_groups:
		var selection_group = preload("res://game/screens/selection_screen/SelectionGroup.tscn").instantiate()
		selection_group.group_data = group
		selection_group.display_item_function = _display_selection
		selection_group.name = group.title
		selection_items_tab.add_child(selection_group)

func _display_selection(selection_data: SelectionItemData):
	_update_primary_data(selection_data)
	_update_secondary_data(selection_data)
	
func _update_primary_data(selection_data: SelectionItemData):
	if primary_information:
		primary_information.queue_free()

	primary_information = PrimaryInformation.new(
		selection_data.title,
		selection_data.description,
		selection_data.icon,
		selection_data.item.get_attributes_display()
	)
	
	selection_details.add_child(primary_information)
	selection_details.move_child(primary_information, 0)
	
func _update_secondary_data(selection_data: SelectionItemData):
	if secondary_information:
		secondary_information.queue_free()
	
	secondary_information = SecondaryInformation.new(
		"Player Information",
		"Things\nAnd\nStuff\nCan\nGo\nHere..."
	)
	
	selection_details.add_child(secondary_information)
	selection_details.move_child(secondary_information, selection_details.get_children().size() - 1)

func _on_back_button_pressed():
	Global.goto_scene("res://game/screens/PlanningScene.tscn")
