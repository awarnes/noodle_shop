class_name Helpers extends Node

func create_label(text: String) -> Label:
	var label = Label.new()
	label.text = text
	return label
