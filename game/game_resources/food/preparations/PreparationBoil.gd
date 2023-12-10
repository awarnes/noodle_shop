class_name PreparationBoil extends PreparationMethod

func _init():
	required_cooking_tools = [
		BaseCookingTool.CookingToolType.Stove,
		BaseCookingTool.CookingToolType.Pot
	]
