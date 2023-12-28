class_name PreparationBoil extends PreparationMethod

func _init(required: bool = false):
	super(required)
	title = "Boiling"
	required_cooking_tools = [
		BaseCookingTool.CookingToolType.Stove,
		BaseCookingTool.CookingToolType.Pot
	]
