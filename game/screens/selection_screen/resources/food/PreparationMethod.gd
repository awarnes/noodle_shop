class_name PreparationMethod extends Resource

# mix of required prep tools and cooking tools
@export var required_prep_tools: Array[BasePrepTool]
@export var required_cooking_tools: Array[BaseCookingTool]

func can_use():
	for prep_tool in required_prep_tools:
		if not Player.inventory.has(prep_tool):
			return false
	for cook_tool in required_cooking_tools:
		if not Player.inventory.has(cook_tool):
			return false
	return true
