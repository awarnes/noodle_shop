class_name SauceIngredient extends BaseIngredient

func _init(status: BaseIngredient.Requirement, sauce: BaseSauce = null):
	type = Food.FoodType.Sauce
	food = sauce
	requirement = status
	
