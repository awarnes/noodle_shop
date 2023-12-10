class_name PreparationChop extends PreparationMethod

func _init():
	title = "Chopping"
	required_prep_tools = [
		BasePrepTool.PrepToolType.Knife
	]
