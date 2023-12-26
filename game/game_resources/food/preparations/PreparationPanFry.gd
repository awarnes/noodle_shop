class_name PreparationPanFry extends PreparationMethod

func _init():
	title = "Pan Frying"
	required_cooking_tools = [
		BaseCookingTool.CookingToolType.Pan
	]
