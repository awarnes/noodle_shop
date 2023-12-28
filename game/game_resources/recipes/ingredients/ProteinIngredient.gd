class_name ProteinIngredient extends BaseIngredient

func _init(status: BaseIngredient.Requirement, protein: BaseProtein = null):
	type = Food.FoodType.Protein
	food = protein
	requirement = status
	
