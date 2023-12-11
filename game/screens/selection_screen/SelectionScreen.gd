extends Control

var screen_data: BaseSelectionScreenData

@onready var screen_title: Label = get_node("MarginContainer/VBoxContainer/TitleLabel")
@onready var selection_items_tab: TabContainer = get_node("MarginContainer/VBoxContainer/SelectionItemContainer/TabContainer")

# Called when the node enters the scene tree for the first time.
func _ready():
	screen_title.text = screen_data.title
	for group: SelectionGroupData in screen_data.selection_groups:
		var grid_container = GridContainer.new()
		grid_container.columns = 5
		grid_container.name = group.title
		#grid_container.h_separation = 15
		#grid_container.v_separation = 15
		
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
	var primary_information = PrimaryInformation.new(
		selection_data.title,
		selection_data.description,
		selection_data.icon,
		selection_data.item.get_attributes_display()
	)
	#primary_icon = get_node("MarginContainer/VBoxContainer/HBoxContainer/PrimaryInformation/VBoxContainer/Icon")
	#primary_icon.texture = ImageTexture.create_from_image(selection_data.icon)
	#
	#primary_title = get_node("MarginContainer/VBoxContainer/HBoxContainer/PrimaryInformation/VBoxContainer/Title")
	#primary_title.text = selection_data.title
	#
	#primary_description = get_node("MarginContainer/VBoxContainer/HBoxContainer/PrimaryInformation/VBoxContainer/Description")
	#primary_description.text = selection_data.description
	
func _update_secondary_data(selection_data: SelectionItemData):
	prints(selection_data.item.__dict__())

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
