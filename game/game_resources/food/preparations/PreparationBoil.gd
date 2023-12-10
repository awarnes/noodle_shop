class_name PreparationBoil extends PreparationMethod

func _init():
	title = "Boiling"
	required_cooking_tools = [
		BaseCookingTool.CookingToolType.Stove,
		BaseCookingTool.CookingToolType.Pot
	]
