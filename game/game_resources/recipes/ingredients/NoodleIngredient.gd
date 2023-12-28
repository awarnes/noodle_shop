class_name NoodleIngredient extends BaseIngredient

func _init(status: BaseIngredient.Requirement, noodle: BaseNoodle = null):
	type = Food.FoodType.Noodle
	food = noodle
	requirement = status
	
