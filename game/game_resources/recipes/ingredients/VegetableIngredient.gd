class_name VegetableIngredient extends BaseIngredient

func _init(status: BaseIngredient.Requirement, vegetable: BaseVegetable = null):
	type = Food.FoodType.Vegetable
	food = vegetable
	requirement = status
	
