class_name PrimaryInformation extends MarginContainer

@onready var title: Label = get_node("VBoxContainer/HBoxContainer/VBoxContainer/Title")
@onready var description: Label = get_node("VBoxContainer/HBoxContainer/VBoxContainer/Description")
@onready var icon: TextureRect = get_node("VBoxContainer/HBoxContainer/Icon")

func _init(resource_title: String, resource_description: String, resource_icon: Image, attributes = null):
	title.text = resource_title
	description.text = resource_description
	icon.texture = ImageTexture.create_from_image(resource_icon)
	
	if attributes and attributes.size():
		var scroll_container = ScrollContainer.new()
		var vbox_container = VBoxContainer.new()
		
		for attribute in attributes:
			vbox_container.add_child(attribute)
		
		scroll_container.add_child(vbox_container)
		add_child(scroll_container)
	
	
	
	
