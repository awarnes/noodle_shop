class_name PrimaryInformation extends MarginContainer

var scroll_container: ScrollContainer
var vbox_outer: VBoxContainer
var hbox: HBoxContainer
var icon: TextureRect

var vbox_inner: VBoxContainer
var title: Label
var description: Label

func _init(resource_title: String, resource_description: String, resource_icon: Image, attributes = null):
	vbox_outer = VBoxContainer.new()
	add_child(vbox_outer)
	
	hbox = HBoxContainer.new()
	vbox_outer.add_child(hbox)
	
	# TODO: May need to figure out scorll containers at some point
	
	icon = TextureRect.new()
	icon.texture = ImageTexture.create_from_image(resource_icon)
	hbox.add_child(icon)
	
	vbox_inner = VBoxContainer.new()
	hbox.add_child(vbox_inner)
	
	title = Label.new()
	title.text = resource_title
	vbox_inner.add_child(title)
	
	description = Label.new()
	description.text = resource_description
	vbox_inner.add_child(description)
	
	if attributes and attributes.size():
		#var scroll_container = ScrollContainer.new()
		var vbox_container = VBoxContainer.new()
		
		for attribute in attributes:
			vbox_container.add_child(attribute)
		
		#scroll_container.add_child(vbox_container)
		vbox_outer.add_child(vbox_container)
	
	
	
	
