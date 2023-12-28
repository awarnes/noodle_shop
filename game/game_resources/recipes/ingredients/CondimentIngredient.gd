class_name CondimentIngredient extends BaseIngredient

func _init(status: BaseIngredient.Requirement, condiment: BaseCondiment = null):
	type = Food.FoodType.Condiment
	food = condiment
	requirement = status
	
