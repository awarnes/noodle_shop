class_name PrimaryInformation extends MarginContainer

var title: Label
var description: Label
var icon: TextureRect

func _init(resource_title: String, resource_description: String, resource_icon: Image, attributes = null):
	title = get_node("VBoxContainer/HBoxContainer/VBoxContainer/Title")
	title.text = resource_title
	
	description = get_node("VBoxContainer/HBoxContainer/VBoxContainer/Description")
	description.text = resource_description
	
	icon = get_node("VBoxContainer/HBoxContainer/Icon")
	icon.texture = ImageTexture.create_from_image(resource_icon)
	
	if attributes and attributes.size():
		var scroll_container = ScrollContainer.new()
		var vbox_container = VBoxContainer.new()
		
		for attribute in attributes:
			vbox_container.add_child(attribute)
		
		scroll_container.add_child(vbox_container)
		add_child(scroll_container)
	
	
	
	
