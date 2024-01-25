class_name SecondaryInformation extends MarginContainer

var vbox: VBoxContainer
var title: Label
var description: Label

func _init(resource_title: String, resource_description: String):
	vbox = VBoxContainer.new()
	add_child(vbox)
	# TODO: May need to figure out scroll containers at some point
	
	title = Label.new()
	title.text = resource_title
	vbox.add_child(title)
	
	description = Label.new()
	description.text = resource_description
	vbox.add_child(description)
