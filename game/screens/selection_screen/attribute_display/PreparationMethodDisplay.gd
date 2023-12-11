class_name PreparationMethodDisplay extends MarginContainer

@onready var title = get_node("VBoxContainer/Label")
@onready var container = get_node("VBoxContainer")
func _init(method: PreparationMethod):
	title.text = method.title
	if (method.required_prep_tools.size()):
		var prep_label = Label.new()
		prep_label.text = "Prep Tools"
		container.add_child(prep_label)
		for prep_tool in method.required_prep_tools:
			var tool_label = Label.new()
			tool_label.text = BasePrepTool.new().get_tool_name(prep_tool)
			container.add_child(tool_label)
	if (method.required_prep_tools.size() and method.required_cooking_tools.size()):
		container.add_child(HSeparator.new())
	if (method.required_cooking_tools.size()):
		var cooking_label = Label.new()
		cooking_label.text = "Cooking Tools"
		container.add_child(cooking_label)
		for cooking_tool in method.required_cooking_tools:
			var tool_label = Label.new()
			tool_label.text = BaseCookingTool.new().get_tool_name(cooking_tool)
			container.add_child(tool_label)
