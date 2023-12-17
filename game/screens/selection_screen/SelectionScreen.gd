extends Control

var screen_data: BaseSelectionScreenData

@onready var screen_title: Label = get_node("MarginContainer/VBoxContainer/TitleLabel")
@onready var selection_items_tab: TabContainer = get_node("MarginContainer/VBoxContainer/SelectionItemContainer/TabContainer")

var primary_information: MarginContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_title.text = screen_data.title
	for group: SelectionGroupData in screen_data.selection_groups:
		var grid_container = GridContainer.new()
		grid_container.columns = 5
		grid_container.name = group.title
		
		for item: SelectionItemData in group.selection_items:
			var selection_item = preload("res://game/screens/selection_screen/SelectionItem.tscn").instantiate()
			selection_item.title = item.title
			selection_item.short_description = item.description
			selection_item.icon = item.icon
			selection_item.pressed.connect(_display_selection.bind(item))
			grid_container.add_child(selection_item)
		selection_items_tab.add_child(grid_container)

func _display_selection(selection_data: SelectionItemData):
	_update_primary_data(selection_data)
	#_update_secondary_data(selection_data)
	
func _update_primary_data(selection_data: SelectionItemData):
	if primary_information:
		primary_information.queue_free()

	primary_information = PrimaryInformation.new(
		selection_data.title,
		selection_data.description,
		selection_data.icon,
		selection_data.item.get_attributes_display()
	)
	
	var hbox = get_node("MarginContainer/VBoxContainer/HBoxContainer")
	hbox.add_child(primary_information)
	hbox.move_child(primary_information, 0)
	
func _update_secondary_data(selection_data: SelectionItemData):
	prints(selection_data.item.__dict__())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
