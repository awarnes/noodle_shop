class_name PreparationPanFry extends PreparationMethod

func _init(required: bool = false):
	super(required)
	title = "Pan Frying"
	required_cooking_tools = [
		BaseCookingTool.CookingToolType.Pan
	]
