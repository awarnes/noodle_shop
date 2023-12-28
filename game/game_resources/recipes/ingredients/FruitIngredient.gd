class_name FruitIngredient extends BaseIngredient

func _init(status: BaseIngredient.Requirement, fruit: BaseFruit = null):
	type = Food.FoodType.Fruit
	food = fruit
	requirement = status
	
