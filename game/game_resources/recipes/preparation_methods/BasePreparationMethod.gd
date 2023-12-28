class_name BasePreparationMethod extends GameResource

# mix of required prep tools and cooking tools
@export var required_prep_tools: Array[BasePrepTool.PrepToolType]
@export var required_cooking_tools: Array[BaseCookingTool.CookingToolType]

@export var required_method: bool

func _init(required = false):
	required_method = required

func get_display():
	var helper = Helpers.new()
	var display: Array[Node] = [
		helper.create_label("Title: %s" % title),
		helper.create_label("Required: %s" % required_method),
	]

	if (required_prep_tools.size()):
		display.append(helper.create_label("Prep Tools:"))
		for prep_tool in required_prep_tools:
			display.append(helper.create_label(BasePrepTool.new().get_tool_name(prep_tool)))
	
	if (required_prep_tools.size() and required_cooking_tools.size()):
		display.append(HSeparator.new())
	if (required_cooking_tools.size()):
		display.append(helper.create_label("Cooking Tools:"))
		for cooking_tool in required_cooking_tools:
			display.append(helper.create_label(BaseCookingTool.new().get_tool_name(cooking_tool)))
	
	return display

func can_use():
	for prep_tool in required_prep_tools:
		if not Player.inventory.has_prep_tool_of_type(prep_tool):
			return false
	for cook_tool in required_cooking_tools:
		if not Player.inventory.has_cooking_tool_of_type(cook_tool):
			return false
	return true
