class_name PreparationMethod extends Resource

# mix of required prep tools and cooking tools
@export var title: String
@export var required_prep_tools: Array[BasePrepTool.PrepToolType]
@export var required_cooking_tools: Array[BaseCookingTool.CookingToolType]

func can_use():
	for prep_tool in required_prep_tools:
		if not Player.inventory.has_prep_tool_of_type(prep_tool):
			return false
	for cook_tool in required_cooking_tools:
		if not Player.inventory.has_cooking_tool_of_type(cook_tool):
			return false
	return true
