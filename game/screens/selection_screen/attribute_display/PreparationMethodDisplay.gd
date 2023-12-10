class_name PreparationMethodDisplay extends MarginContainer

@onready var title = get_node("VBoxContainer/Label")

func _init(method: PreparationMethod):
	title.text = method.title
	for prep_tool in method.required_prep_tools:
		pass
		# Add the prep tools to the display
