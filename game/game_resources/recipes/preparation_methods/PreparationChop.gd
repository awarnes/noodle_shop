class_name PreparationChop extends PreparationMethod

func _init(required: bool = false):
	super(required)
	title = "Chopping"
	required_prep_tools = [
		BasePrepTool.PrepToolType.Knife
	]
