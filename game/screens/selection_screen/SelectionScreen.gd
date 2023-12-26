extends Control

var screen_data: BaseSelectionScreenData

@onready var screen_title: Label = get_node("MarginContainer/VBoxContainer/HBoxTitleContainer/TitleLabel")
@onready var selection_details: HBoxContainer = get_node("MarginContainer/VBoxContainer/HBoxSelectionDetailsContainer")
@onready var selection_items_tab: TabContainer = get_node("MarginContainer/VBoxContainer/SelectionItemContainer/TabContainer")


var primary_information: MarginContainer
var secondary_information: MarginContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_title.text = screen_data.title
	selection_details.add_child(VSeparator.new())
	for group: SelectionGroupData in screen_data.selection_groups:
		#var scroll_container = ScrollContainer.new()
		#scroll_container.name = group.title
		#var margin_container = MarginContainer.new()
		#var margin_value = 5
		#margin_container.add_theme_constant_override("margin_top", margin_value)
		#margin_container.add_theme_constant_override("margin_left", margin_value)
		#margin_container.add_theme_constant_override("margin_bottom", margin_value)
		#margin_container.add_theme_constant_override("margin_right", margin_value)
		#margin_container.size_flags_vertical = Control.SIZE_EXPAND_FILL
		#margin_container.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		#var grid_container = GridContainer.new()
		#grid_container.columns = 4
		#grid_container.size_flags_vertical = Control.SIZE_EXPAND_FILL
		#grid_container.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		
		#for item: SelectionItemData in group.selection_items:
			#var selection_item = preload("res://game/screens/selection_screen/SelectionItem.tscn").instantiate()
			#selection_item.title = item.title
			#selection_item.short_description = item.description
			#selection_item.icon = item.icon
			#selection_item.pressed.connect(_display_selection.bind(item))
			#grid_container.add_child(selection_item)
		#margin_container.add_child(grid_container)
		#scroll_container.add_child(margin_container)
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
