class_name BrothIngredient extends BaseIngredient

func _init(status: BaseIngredient.Requirement, broth: BaseBroth = null):
	type = Food.FoodType.Broth
	food = broth
	requirement = status
	
